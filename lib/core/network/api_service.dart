import 'package:dio/dio.dart';

typedef Json = Map<String, dynamic>;
typedef FromJson<T> = T Function(Json json);
typedef ToJson<T> = Json Function(T data);
typedef Converter<T> = T Function(dynamic data);
typedef Progress = void Function(int count, int total);

/// HTTP networking interface
abstract class ApiService {
  /// 모든 HTTP 요청에 공통으로 사용하는 메서드
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
  });

  void cancelRequests({CancelToken? cancelToken});

  Future<T> deleteJson<T>(
    String path, {
    Json? queryParameters,
    bool requiresAccessToken,
    bool requiresRefreshToken,
    bool requiresRefreshCookie,
    Converter<T>? converter,
  });

  Future<T> getJson<T>(
    String path, {
    Json? queryParameters,
    bool requiresAccessToken,
    bool requiresRefreshToken,
    bool requiresRefreshCookie,
    Converter<T>? converter,
    String? contentType,
    Map<String, String>? headers,
  });

  Future<T> putJson<T>(
    String path, {
    Object? data,
    Json? queryParameters,
    bool requiresAccessToken,
    bool requiresRefreshToken,
    bool requiresRefreshCookie,
    Converter<T>? converter,
  });

  Future<T> postJson<T>(
    String path, {
    required Object? data,
    Json? queryParameters,
    bool requiresAccessToken,
    bool requiresRefreshToken,
    bool requiresRefreshCookie,
    Converter<T>? converter,
    Map<String, dynamic>? headers,
  });

  Future<T> postFormUrlEncoded<T>(
    String path, {
    required Object? data,
    Json? queryParameters,
    bool requiresAccessToken,
    bool requiresRefreshToken,
    bool requiresRefreshCookie,
    Converter<T>? converter,
  });

  Future<T> putFormUrlEncoded<T>(
    String path, {
    Object? data,
    Json? queryParameters,
    bool requiresAccessToken,
    bool requiresRefreshToken,
    bool requiresRefreshCookie,
    Converter<T>? converter,
  });

  Future<T> postFormData<T>(
    String path, {
    required FormData data,
    Json? queryParameters,
    bool requiresAccessToken,
    bool requiresRefreshToken,
    bool requiresRefreshCookie,
    Converter<T>? converter,
  });

  Future<T> patchJson<T>(
    String path, {
    Object? data,
    Json? queryParameters,
    bool requiresAccessToken,
    bool requiresRefreshToken,
    bool requiresRefreshCookie,
    Converter<T>? converter,
    Map<String, dynamic>? headers,
  });
}
