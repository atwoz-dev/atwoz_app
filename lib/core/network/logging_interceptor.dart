import 'package:atwoz_app/core/mixin/log_mixin.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/features/auth/domain/usecase/auth_usecase.dart';
import 'package:atwoz_app/app/router/routing.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Add token in header call API
class TokenInterceptor extends Interceptor with LogMixin {
  final Ref ref;

  TokenInterceptor(this.ref) : super();

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers.containsKey('requiresAccessToken')) {
      if (options.headers['requiresAccessToken'] == true) {
        final String? token =
            await ref.read(authUsecaseProvider).getAccessToken();
        options.headers
            .addAll(<String, Object?>{'Authorization': 'Bearer $token'});
      }

      options.headers.remove('requiresAccessToken');
    }
    return handler.next(options);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    final AuthUseCase authService = ref.read(authUsecaseProvider);
    final router = ref.read(routerProvider);

    // 403 에러 발생 시 처리 로직
    if (err.response?.statusCode == 403) {
      router.go('/'); // 홈 경로로 이동
    }

    // 401 에러 발생 시 액세스 토큰 재발급 시도
    if (err.response?.statusCode == 401) {
      final authService = ref.read(authUsecaseProvider);
      final newToken = await authService.getAccessToken();

      if (newToken != null) {
        // 기존 요청의 Authorization 헤더를 갱신하고 다시 요청 시도
        err.requestOptions.headers['Authorization'] = newToken;
        final clonedRequest = await Dio().fetch(err.requestOptions);
        return handler.resolve(clonedRequest);
      }

      // TODO: 토큰 만료 아닐때는 어케 함?
    }

    super.onError(err, handler);
  }
}
