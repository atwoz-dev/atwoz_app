import 'package:atwoz_app/core/network/logging_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

/// Common service call API support cancel api
class DioService extends DioForNative {
  DioService([super.baseOptions, Iterable<Interceptor>? interceptors])
      : _cancelToken = CancelToken() {
    interceptors ??= [];

    interceptors = [
      ...interceptors,
    ];
    this.interceptors.addAll(interceptors);
  }

  final CancelToken _cancelToken;

  void cancelRequests({CancelToken? cancelToken, String reason = '요청 취소됨'}) {
    if (cancelToken == null) {
      _cancelToken.cancel(reason);
    } else {
      cancelToken.cancel(reason);
    }
  }

  @override
  Future<Response<T>> request<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return super.request(
      path,
      data: data,
      queryParameters: queryParameters,
      cancelToken: cancelToken ?? _cancelToken,
      options: options,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  @override
  Future<Response<T>> requestUri<T>(
    Uri uri, {
    Object? data,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return super.requestUri(
      uri,
      data: data,
      cancelToken: cancelToken ?? _cancelToken,
      options: options,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }
}
