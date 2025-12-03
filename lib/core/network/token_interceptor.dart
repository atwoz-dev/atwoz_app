import 'package:cookie_jar/cookie_jar.dart';
import 'package:deepple_app/app/provider/global_notifier.dart';
import 'package:deepple_app/app/router/router.dart';
import 'package:deepple_app/core/config/config.dart';
import 'package:deepple_app/core/mixin/log_mixin.dart';
import 'package:deepple_app/core/storage/local_storage.dart';
import 'package:deepple_app/core/storage/local_storage_item.dart';
import 'package:deepple_app/core/util/log.dart';
import 'package:deepple_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:deepple_app/app/router/routing.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Add token in header call API
class TokenInterceptor extends Interceptor with LogMixin {
  final Ref _ref;
  final Dio _dio;
  final PersistCookieJar _cookieJar;

  TokenInterceptor({
    required Ref ref,
    required Dio dio,
    required PersistCookieJar cookieJar,
  }) : _ref = ref,
       _dio = dio,
       _cookieJar = cookieJar,
       super();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.headers.containsKey('requiresAccessToken')) {
      if (options.headers['requiresAccessToken'] == true) {
        final token = await _ref.read(authUsecaseProvider).getAccessToken();
        options.headers.addAll(<String, Object?>{
          'Authorization': 'Bearer $token',
        });
      }

      options.headers.remove('requiresAccessToken');
    }
    return handler.next(options);
  }

  /// 응답에서 AccessToken + RefreshToken 동시 갱신
  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final headers = response.headers.map;
    final requestOptions = response.requestOptions;

    /// 새 AccessToken 추출
    final newAccessToken =
        headers['authorization']?.first ?? headers['Authorization']?.first;

    String? newRefreshToken;

    /// 새 RefreshToken 추출
    final setCookieList = headers['set-cookie'];

    if (newAccessToken != null && newAccessToken.startsWith('Bearer ')) {
      final pureToken = newAccessToken.replaceFirst('Bearer ', '');
      _ref.read(authUsecaseProvider).setAccessToken(pureToken);
      Log.i('새 엑세스 토큰 저장완료!!');
    }

    if (setCookieList != null && setCookieList.isNotEmpty) {
      final uri = Uri.parse(Config.baseUrl);
      await _cookieJar.saveFromResponse(
        uri,
        setCookieList.map((e) => Cookie.fromSetCookieValue(e)).toList(),
      );
      newRefreshToken = _extractRefreshToken(setCookieList);

      if (newRefreshToken != null && newRefreshToken.isNotEmpty) {
        await _ref
            .read(localStorageProvider)
            .saveEncrypted(SecureStorageItem.refreshToken, newRefreshToken);
        Log.i('새 리프레시 토큰 저장완료!!');
      }
    }

    /// "토큰만 내려온 200 응답"이면 재요청
    final isTokenOnlyResponse =
        newAccessToken != null && newRefreshToken != null;

    final alreadyRetried = requestOptions.extra['retry'] == true;

    if (isTokenOnlyResponse && !alreadyRetried) {
      final newOptions = requestOptions.copyWith(
        headers: Map.of(requestOptions.headers),
        extra: {
          ...requestOptions.extra,
          'retry': true,
        },
      );

      final latestToken = await _ref.read(authUsecaseProvider).getAccessToken();

      if (latestToken != null) {
        newOptions.headers['Authorization'] = 'Bearer $latestToken';
      }

      final retryResponse = await _dio.fetch(newOptions);

      return handler.resolve(retryResponse); // 원래 API 응답으로 덮어쓰기
    }

    return handler.next(response);
  }

  String? _extractRefreshToken(List<String> cookies) {
    return cookies
        .map((cookie) => RegExp(r'refresh_token=([^;]+)').firstMatch(cookie))
        .firstWhere((match) => match != null, orElse: () => null)
        ?.group(1);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final router = _ref.read(routerProvider);

    Log.e(
      '[${err.requestOptions.method} ${err.requestOptions.path}] Api error: ${err.response}',
    );

    /// 진짜 만료(서버 거부)일 때만 로그아웃
    if (err.response?.statusCode == 401) {
      Log.d('401에러 발생함');
      _ref.read(globalProvider.notifier).clearLocalData();
      router.goNamed(AppRoute.onboard.name);
    }

    return handler.next(err);
  }
}
