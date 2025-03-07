import 'package:atwoz_app/core/storage/local_storage.dart';
import 'package:atwoz_app/core/config/config.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'api_service.dart';
import 'dio_service.dart';
import 'logging_interceptor.dart';
import 'token_interceptor.dart';
import 'network_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ApiServiceImpl Provider 정의
final apiServiceProvider = Provider<ApiServiceImpl>((ref) {
  return ApiServiceImpl.instance(ref);
});

/// HTTP 네트워킹 서비스를 구현한 ApiServiceImpl
class ApiServiceImpl implements ApiService {
  static ApiServiceImpl? _instance;

  static ApiServiceImpl instance(Ref ref,
      {String? baseUrl, Duration? timeout}) {
    _instance ??= ApiServiceImpl._internal(ref,
        baseUrl: baseUrl ?? Config.baseUrl, timeout: timeout ?? Config.timeout);
    _instance!.initialize(); // 동기 실행
    return _instance!;
  }

  final Ref ref;
  final String? baseUrl;
  DioService? _dioService;
  PersistCookieJar? _cookieJar;

  ApiServiceImpl._internal(this.ref, {this.baseUrl, Duration? timeout}) {
    initialize();
  }

  DioService get dioService {
    if (_dioService == null) {
      Log.d("🚨 `_dioService`가 null. `initialize()` 실행 중...");
      initialize(); // `null`일 경우 자동 초기화
    }
    return _dioService!;
  }

  @override
  void initialize() {
    if (_dioService != null) {
      Log.d("🚀 ApiServiceImpl 초기화 스킵 (이미 초기화됨)");
      return;
    }

    Log.d("🚀 ApiServiceImpl 초기화 시작");

    if (_cookieJar == null) {
      getApplicationDocumentsDirectory().then((appDocDir) {
        _cookieJar = PersistCookieJar(storage: FileStorage(appDocDir.path));
      });
    }

    _dioService = DioService(
      BaseOptions(
        baseUrl: baseUrl ?? Config.baseUrl,
        sendTimeout: Config.timeout,
        connectTimeout: Config.timeout,
        receiveTimeout: Config.timeout,
      ),
      [
        TokenInterceptor(ref),
        if (Config.enableLogRequestInfo) LoggingInterceptor(),
      ],
    );

    Log.d("ApiServiceImpl 초기화 완료");
  }

  /// API 요청 시 requiresRefreshToken을 체크하여 토큰 설정
  @override
  Future<T> request<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    required String method,
    required String contentType,
    bool requiresAccessToken = true,
    bool requiresRefreshToken = false,
    bool requiresRefreshCookie = false,
    Converter<T>? converter,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final Map<String, dynamic> finalHeaders = {
        "Accept": "*/*",
        ...?headers,
      };

      if (requiresAccessToken) {
        final String? accessToken =
            await ref.read(authUsecaseProvider).getAccessToken();
        if (accessToken != null) {
          finalHeaders['Authorization'] = "Bearer $accessToken";
        }
      }

      if (requiresRefreshToken) {
        final String? refreshToken =
            await ref.read(authUsecaseProvider).getRefreshToken();
        if (refreshToken != null) {
          finalHeaders['x-refresh-token'] = refreshToken;
        }
      }

      final Response<dynamic> response = await dioService.request(
        path,
        data: data,
        options: Options(
          method: method,
          contentType: contentType,
          headers: finalHeaders,
        ),
        queryParameters: queryParameters,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
      );

      /// 로그인 요청 시 `Set-Cookie`에서 `_refreshToken` 저장
      if (path.contains("login")) {
        _saveRefreshTokenIfLogin(response.headers.map['set-cookie']);
      }

      /// `converter`가 있으면 변환, 없으면 기본적으로 `response.data` 반환
      return converter != null ? converter(response.data) : response.data as T;
    } on DioException catch (e) {
      throw NetworkException.getException(e);
    } catch (error) {
      throw NetworkException.otherException(error.runtimeType);
    }
  }

  /// `Set-Cookie`에서 `_refreshToken`을 추출하는 함수
  String? _extractRefreshToken(List<String> cookies) {
    return cookies
        .map((cookie) => RegExp(r'refresh_token=([^;]+)').firstMatch(cookie))
        .firstWhere((match) => match != null, orElse: () => null)
        ?.group(1);
  }

  /// 쿠키 저장소 초기화
  Future<void> _initializeCookieJar() async {
    if (_cookieJar == null) {
      final appDocDir = await getApplicationDocumentsDirectory();
      _cookieJar = PersistCookieJar(storage: FileStorage(appDocDir.path));
    }
  }

  /// 로그인 응답에서 Refresh Token 저장하는 함수
  Future<void> _saveRefreshTokenIfLogin(List<String>? setCookieHeaders) async {
    if (setCookieHeaders == null || setCookieHeaders.isEmpty) return;

    final refreshToken = _extractRefreshToken(setCookieHeaders);
    if (refreshToken != null) {
      await _initializeCookieJar();
      final Uri uri = Uri.parse(baseUrl.toString());
      _cookieJar
          ?.saveFromResponse(uri, [Cookie("_refreshToken", refreshToken)]);

      await ref.read(localStorageProvider.notifier).initialize();
      await ref
          .read(localStorageProvider)
          .saveEncrypted('AuthProvider.reToken', refreshToken);

      Log.d("Refresh Token 로컬 스토리지에 저장 완료: $refreshToken");
    }
  }

  @override
  void cancelRequests({CancelToken? cancelToken}) =>
      dioService.cancelRequests(cancelToken: cancelToken);

  @override
  Future<T> deleteJson<T>(
    String path, {
    Json? queryParameters,
    bool requiresAccessToken = true,
    bool requiresRefreshToken = false,
    bool requiresRefreshCookie = false,
    Converter<T>? converter,
  }) =>
      request(
        path,
        method: 'DELETE',
        contentType: Headers.jsonContentType,
        queryParameters: queryParameters,
        requiresAccessToken: requiresAccessToken,
        requiresRefreshToken: requiresRefreshToken,
        requiresRefreshCookie: requiresRefreshCookie,
        converter: converter,
      );

  @override
  Future<T> getJson<T>(
    String path, {
    Json? queryParameters,
    bool requiresAccessToken = true,
    bool requiresRefreshToken = false,
    bool requiresRefreshCookie = false,
    Converter<T>? converter,
    String? contentType,
    Map<String, String>? headers,
  }) =>
      request(
        path,
        method: 'GET',
        contentType: contentType ?? Headers.jsonContentType,
        queryParameters: queryParameters,
        requiresAccessToken: requiresAccessToken,
        requiresRefreshToken: requiresRefreshToken,
        requiresRefreshCookie: requiresRefreshCookie,
        converter: converter,
        headers: headers,
      );

  @override
  Future<T> putJson<T>(
    String path, {
    Object? data,
    Json? queryParameters,
    bool requiresAccessToken = true,
    bool requiresRefreshToken = false,
    bool requiresRefreshCookie = false,
    Converter<T>? converter,
  }) =>
      request(
        path,
        method: 'PUT',
        contentType: Headers.jsonContentType,
        data: data,
        queryParameters: queryParameters,
        requiresAccessToken: requiresAccessToken,
        requiresRefreshToken: requiresRefreshToken,
        requiresRefreshCookie: requiresRefreshCookie,
        converter: converter,
      );

  @override
  Future<T> postJson<T>(
    String path, {
    required Object? data,
    Json? queryParameters,
    bool requiresAccessToken = true,
    bool requiresRefreshToken = false,
    bool requiresRefreshCookie = false,
    Converter<T>? converter,
    Map<String, dynamic>? headers,
  }) =>
      request(
        path,
        method: 'POST',
        contentType: Headers.jsonContentType,
        data: data,
        queryParameters: queryParameters,
        requiresAccessToken: requiresAccessToken,
        requiresRefreshToken: requiresRefreshToken,
        requiresRefreshCookie: requiresRefreshCookie,
        converter: converter,
        headers: headers,
      );

  @override
  Future<T> postFormUrlEncoded<T>(
    String path, {
    required Object? data,
    Json? queryParameters,
    bool requiresAccessToken = true,
    bool requiresRefreshToken = false,
    bool requiresRefreshCookie = false,
    Converter<T>? converter,
  }) =>
      request(
        path,
        method: 'POST',
        contentType: Headers.formUrlEncodedContentType,
        data: data,
        queryParameters: queryParameters,
        requiresAccessToken: requiresAccessToken,
        requiresRefreshToken: requiresRefreshToken,
        requiresRefreshCookie: requiresRefreshCookie,
        converter: converter,
      );

  @override
  Future<T> postFormData<T>(
    String path, {
    required FormData data,
    Json? queryParameters,
    bool requiresAccessToken = true,
    bool requiresRefreshToken = false,
    bool requiresRefreshCookie = false,
    Converter<T>? converter,
  }) =>
      request(
        path,
        method: 'POST',
        contentType: Headers.multipartFormDataContentType,
        data: data,
        queryParameters: queryParameters,
        requiresAccessToken: requiresAccessToken,
        requiresRefreshToken: requiresRefreshToken,
        requiresRefreshCookie: requiresRefreshCookie,
        converter: converter,
      );

  @override
  Future<T> putFormUrlEncoded<T>(
    String path, {
    Object? data,
    Json? queryParameters,
    bool requiresAccessToken = true,
    bool requiresRefreshToken = false,
    bool requiresRefreshCookie = false,
    Converter<T>? converter,
  }) =>
      request(
        path,
        method: 'PUT',
        contentType: Headers.formUrlEncodedContentType,
        data: data,
        queryParameters: queryParameters,
        requiresAccessToken: requiresAccessToken,
        requiresRefreshToken: requiresRefreshToken,
        requiresRefreshCookie: requiresRefreshCookie,
        converter: converter,
      );
}
