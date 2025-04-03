import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'api_service_impl.dart';

typedef Json = Map<String, dynamic>;
typedef FromJson<T> = T Function(Json json);
typedef ToJson<T> = Json Function(T data);
typedef Converter<T> = T Function(dynamic data);
typedef Progress = void Function(int count, int total);

/// HTTP networking interface
abstract class ApiService {
  const ApiService();

  /// `ref`를 필수로 받아야 하도록 수정
  factory ApiService.create(Ref ref) =>
      ApiServiceImpl(ref: ref, enableAuth: true);

  /// 커스텀 baseUrl 설정을 위한 팩토리 메서드
  factory ApiService.custom(Ref ref, {String? baseUrl}) =>
      ApiServiceImpl(ref: ref, baseUrl: baseUrl);

  void cancelRequests({CancelToken? cancelToken});

  Future<T> request<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    required String method,
    required String contentType,
    bool requiresAuthToken = true,
    T Function(dynamic)? converter,
    Map<String, dynamic>? headers,
  });

  Future<T> deleteJson<T>(
    String path, {
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  });

  Future<T> getJson<T>(
    String path, {
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
    String? contentType,
    Map<String, String>? headers,
  });

  Future<T> putJson<T>(
    String path, {
    Object? data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  });

  Future<T> postJson<T>(
    String path, {
    required Object? data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
    Map<String, dynamic>? headers,
  });

  Future<T> postFormUrlEncoded<T>(
    String path, {
    required Object? data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  });

  Future<T> putFormUrlEncoded<T>(
    String path, {
    Object? data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  });

  Future<T> postFormData<T>(
    String path, {
    required FormData data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  });

  Future<T> patchJson<T>(
    String path, {
    Object? data,
    Json? queryParameters,
    bool requiresAuthToken = true,
    Converter<T>? converter,
  });
}
