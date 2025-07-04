import 'package:atwoz_app/core/network/logging_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:path_provider/path_provider.dart';

/// 공통 API 서비스 클래스 (비동기 초기화 방식)
class DioService extends DioForNative {
  PersistCookieJar? _cookieJar;
  final CancelToken _cancelToken = CancelToken();

  DioService._internal([BaseOptions? baseOptions]) : super(baseOptions);

  /// 비동기 초기화를 위한 팩토리 메서드
  static Future<DioService> create([
    BaseOptions? baseOptions,
    Iterable<Interceptor>? interceptors,
  ]) async {
    final service = DioService._internal(baseOptions);
    await service._initializeCookieJar();
    service._addInterceptors(interceptors);
    return service;
  }

  /// 쿠키 저장소 초기화
  Future<void> _initializeCookieJar() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    _cookieJar = PersistCookieJar(storage: FileStorage(appDocDir.path));
  }

  /// 인터셉터 추가
  void _addInterceptors(Iterable<Interceptor>? customInterceptors) {
    final allInterceptors = [
      if (customInterceptors != null) ...customInterceptors,
      CookieManager(_cookieJar!),
      LoggingInterceptor(),
    ];
    interceptors.addAll(allInterceptors);
  }

  /// 요청 취소
  void cancelRequests({CancelToken? cancelToken, String reason = '요청 취소됨'}) {
    (cancelToken ?? _cancelToken).cancel(reason);
  }

  /// 저장된 쿠키 가져오기
  Future<List<Cookie>> getStoredCookies(Uri uri) async {
    if (_cookieJar == null) {
      throw Exception("`_cookieJar`가 아직 초기화되지 않았습니다!");
    }
    return _cookieJar!.loadForRequest(uri);
  }

  /// 기본 request 오버라이드
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

  /// URI 기반 request 오버라이드
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
