import 'package:atwoz_app/core/network/logging_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:path_provider/path_provider.dart';

/// Common service call API support cancel api
class DioService extends DioForNative {
  static late PersistCookieJar _cookieJar; // 쿠키 저장소 초기화

  DioService([super.baseOptions, Iterable<Interceptor>? interceptors])
      : _cancelToken = CancelToken() {
    interceptors ??= [];
    _initializeCookieJar(); // 쿠키 저장소 초기화 함수 호출 (비동기)

    interceptors = [
      ...interceptors,
      CookieManager(_cookieJar), // 쿠키 관리자 추가
      LoggingInterceptor(), // LoggingInterceptor 추가 (요청 로깅)
    ];
    this.interceptors.addAll(interceptors);
  }

  static Future<void> _initializeCookieJar() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    _cookieJar = PersistCookieJar(storage: FileStorage(appDocDir.path));
  }

  final CancelToken _cancelToken;

  void cancelRequests({CancelToken? cancelToken, String reason = '요청 취소됨'}) {
    if (cancelToken == null) {
      _cancelToken.cancel(reason);
    } else {
      cancelToken.cancel(reason);
    }
  }

  /// 저장된 쿠키 가져오는 메서드
  Future<List<Cookie>> getStoredCookies(Uri uri) async {
    return _cookieJar.loadForRequest(uri);
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
