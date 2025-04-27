import 'dart:async';
import 'dart:developer';

import 'package:atwoz_app/core/storage/local_storage.dart';
import 'package:atwoz_app/core/config/config.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:cookie_jar/cookie_jar.dart';

import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
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
  ApiServiceImpl({
    required this.ref,
    String? baseUrl,
    bool enableAuth = false,
    Duration? timeout,
  }) {
    _initialize(
      enableAuth: enableAuth,
      baseUrl: baseUrl,
      timeout: timeout ?? Config.timeout,
    );
  }

  final Ref ref;

  late final String _baseUrl;
  late final DioService _dioService;
  late final PersistCookieJar _cookieJar;

  final Completer _initCompleter = Completer();

  Future<PersistCookieJar> get cookieJar async {
    await _initCompleter.future;
    return _cookieJar;
  }

  Future<void> _initialize({
    required bool enableAuth,
    required String? baseUrl,
    required Duration timeout,
  }) async {
    _baseUrl = baseUrl ?? Config.baseUrl;
    final appDocDir = await getApplicationDocumentsDirectory();
    _cookieJar = PersistCookieJar(storage: FileStorage(appDocDir.path));

    _dioService = DioService(
      BaseOptions(
        baseUrl: _baseUrl,
        sendTimeout: timeout,
        connectTimeout: timeout,
        receiveTimeout: timeout,
      ),
      [
        if (enableAuth) TokenInterceptor(ref),
        if (Config.enableLogRequestInfo) LoggingInterceptor(),
        CookieManager(_cookieJar),
      ],
    );

    _initCompleter.complete();
  }

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
    await _initCompleter.future;
    try {
      final finalHeaders = await _prepareHeaders(
        headers: headers,
        requiresAuthToken: requiresAuthToken,
      );

      final response = await _dioService.request(
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

      if (path.contains("/login")) {
        await _handleLoginResponse(response);
      }

      return converter?.call(response.data) ?? response.data as T;
    } on DioException catch (e) {
      throw NetworkException.getException(e);
    } catch (error) {
      throw NetworkException.otherException(error.runtimeType);
    }
  }

  Future<Map<String, dynamic>> _prepareHeaders({
    Map<String, dynamic>? headers,
    bool requiresAuthToken = true,
  }) async {
    await _initCompleter.future;
    final Map<String, dynamic> finalHeaders = {
      "Accept": "*/*",
      ...?headers,
    };

    if (!requiresAuthToken) return finalHeaders;

    final accessToken = await ref.read(authUsecaseProvider).getAccessToken();
    await ref.read(localStorageProvider.notifier).initialize();
    final refreshToken =
        await ref.read(localStorageProvider).getEncrypted('_refreshToken');

    if (accessToken != null) {
      finalHeaders['Authorization'] = "Bearer $accessToken";
    }
    if (refreshToken != null) {
      finalHeaders['x-refresh-token'] = refreshToken;
    }

    return finalHeaders;
  }

  Future<void> _handleLoginResponse(Response response) async {
    await _initCompleter.future;
    final setCookieHeaders = response.headers.map['set-cookie'];
    if (setCookieHeaders == null || setCookieHeaders.isEmpty) return;

    final refreshToken = _extractRefreshToken(setCookieHeaders);
    if (refreshToken == null) return;

    await _saveRefreshToken(refreshToken);
  }

  Future<void> _saveRefreshToken(String refreshToken) async {
    final uri = Uri.parse(_baseUrl);
    _cookieJar.saveFromResponse(uri, [Cookie("_refreshToken", refreshToken)]);

    await ref.read(localStorageProvider.notifier).initialize();
    await ref
        .read(localStorageProvider)
        .saveEncrypted('AuthProvider.reToken', refreshToken);

    Log.d("✅ Refresh Token 로컬 스토리지에 저장 완료: $refreshToken");
  }

  String? _extractRefreshToken(List<String> cookies) {
    return cookies
        .map((cookie) => RegExp(r'refresh_token=([^;]+)').firstMatch(cookie))
        .firstWhere((match) => match != null, orElse: () => null)
        ?.group(1);
  }

  @override
  Future<void> cancelRequests({CancelToken? cancelToken}) async {
    await _initCompleter.future;

    _dioService.cancelRequests(cancelToken: cancelToken);
  }

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
