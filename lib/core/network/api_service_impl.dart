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
  return ApiServiceImpl(ref: ref);
});

/// HTTP 네트워킹 서비스를 구현한 ApiServiceImpl
class ApiServiceImpl implements ApiService {
  // 생성자에서 baseUrl 기본값을 처리하도록 수정
  ApiServiceImpl({
    required this.ref,
    this.enableAuth = false,
    String? baseUrl,
    Duration? timeout,
  })  : baseUrl = baseUrl ?? Config.baseUrl,
        timeout = timeout ?? Config.timeout;

  final Ref ref; // Ref를 통해 Provider 관리
  final bool enableAuth;
  final String? baseUrl;
  final Duration timeout;

  DioService? _dioService;
  PersistCookieJar? _cookieJar;

  DioService get dioService => _dioService ??= DioService(
        BaseOptions(
          baseUrl: baseUrl ?? '', // baseUrl null 처리
          sendTimeout: timeout,
          connectTimeout: timeout,
          receiveTimeout: timeout,
        ),
        [
          if (enableAuth) TokenInterceptor(ref),
          if (Config.enableLogRequestInfo) LoggingInterceptor(),
        ],
      );

  @override
  Future<T> request<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required String method,
    required String contentType,
    bool requiresAuthToken = true,
    Converter<T>? converter,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final Map<String, dynamic> finalHeaders = {
        "Accept": "*/*",
        ...?headers,
      };

      if (requiresAuthToken) {
        final String? accessToken =
            await ref.read(authUsecaseProvider).getAccessToken();
        await ref.read(localStorageProvider.notifier).initialize(); // 초기화
        final String? refreshToken =
            await ref.read(localStorageProvider).getEncrypted('_refreshToken');
        if (accessToken != null) {
          finalHeaders['Authorization'] = "Bearer $accessToken";
        }
        if (refreshToken != null) {
          finalHeaders['x-refresh-token'] = refreshToken;
        }
      }

      final Response response = await dioService.request(
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

      // 🍪n로그인 요청 시 `Set-Cookie`에서 `_refreshToken` 추출
      if (path.contains("/login")) {
        final List<String>? setCookieHeaders =
            response.headers.map['set-cookie'];
        if (setCookieHeaders != null && setCookieHeaders.isNotEmpty) {
          final refreshToken = _extractRefreshToken(setCookieHeaders);
          if (refreshToken != null) {
            // 🍪 쿠키 저장소에 저장
            await _initializeCookieJar();
            final Uri uri = Uri.parse(baseUrl.toString());
            _cookieJar?.saveFromResponse(
                uri, [Cookie("_refreshToken", refreshToken)]);

            //  `await`을 사용하여 `initialize()` 실행 후 저장
            await ref.read(localStorageProvider.notifier).initialize();
            await ref
                .read(localStorageProvider)
                .saveEncrypted('AuthProvider.reToken', refreshToken);

            Log.d("✅ Refresh Token 로컬 스토리지에 저장 완료: $refreshToken");
          }
        }
      }

      return response.data as T;
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

  @override
  void cancelRequests({CancelToken? cancelToken}) =>
      dioService.cancelRequests(cancelToken: cancelToken);

  @override
  Future<T> deleteJson<T>(
    String path, {
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  }) =>
      request(
        path,
        method: 'DELETE',
        contentType: Headers.jsonContentType,
        queryParameters: queryParameters,
        requiresAuthToken: requiresAuthToken,
        converter: converter,
      );

  @override
  Future<T> getJson<T>(
    String path, {
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
    String? contentType,
    Map<String, String>? headers,
  }) =>
      request(
        path,
        method: 'GET',
        contentType: contentType ?? Headers.jsonContentType,
        queryParameters: queryParameters,
        requiresAuthToken: requiresAuthToken,
        converter: converter,
        headers: headers,
      );

  @override
  Future<T> putJson<T>(
    String path, {
    Object? data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  }) =>
      request(
        path,
        method: 'PUT',
        contentType: Headers.jsonContentType,
        data: data,
        queryParameters: queryParameters,
        requiresAuthToken: requiresAuthToken,
        converter: converter,
      );

  @override
  Future<T> postJson<T>(
    String path, {
    required Object? data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
    Map<String, dynamic>? headers,
  }) =>
      request(
        path,
        method: 'POST',
        contentType: Headers.jsonContentType,
        data: data,
        queryParameters: queryParameters,
        requiresAuthToken: requiresAuthToken,
        converter: converter,
        headers: headers,
      );

  @override
  Future<T> postFormUrlEncoded<T>(
    String path, {
    required Object? data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  }) =>
      request(
        path,
        method: 'POST',
        contentType: Headers.formUrlEncodedContentType,
        data: data,
        queryParameters: queryParameters,
        requiresAuthToken: requiresAuthToken,
        converter: converter,
      );

  @override
  Future<T> postFormData<T>(
    String path, {
    required FormData data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  }) =>
      request(
        path,
        method: 'POST',
        contentType: Headers.multipartFormDataContentType,
        data: data,
        queryParameters: queryParameters,
        requiresAuthToken: requiresAuthToken,
        converter: converter,
      );

  @override
  Future<T> putFormUrlEncoded<T>(
    String path, {
    Object? data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  }) =>
      request(
        path,
        method: 'PUT',
        contentType: Headers.formUrlEncodedContentType,
        data: data,
        queryParameters: queryParameters,
        requiresAuthToken: requiresAuthToken,
        converter: converter,
      );

  @override
  Future<T> patchJson<T>(
    String path, {
    Object? data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  }) =>
      request(
        path,
        method: 'PATCH',
        contentType: Headers.jsonContentType,
        data: data,
        queryParameters: queryParameters,
        requiresAuthToken: requiresAuthToken,
        converter: converter,
      );
}
