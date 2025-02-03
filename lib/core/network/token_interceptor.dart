import 'package:atwoz_app/core/mixin/log_mixin.dart';
import 'package:atwoz_app/core/mixin/toast_mixin.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/features/auth/domain/usecase/auth_usecase.dart';
import 'package:atwoz_app/app/router/routing.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Add token in header call API
class TokenInterceptor extends Interceptor with LogMixin, ToastMixin {
  final Ref ref;

  TokenInterceptor(this.ref) : super();

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers.containsKey('requiresAuthToken')) {
      if (options.headers['requiresAuthToken'] == true) {
        final String? token =
            await ref.read(authUsecaseProvider).getAccessToken();
        options.headers.addAll(<String, Object?>{'Authorization': token});
      }

      options.headers.remove('requiresAuthToken');
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
      // // 401 중에서도 토큰 만료인 경우에만 토큰 재발급 시도
      // // TODO: 토큰 만료 아닐때는 어케 함?
      // try {
      //   // 토큰 재발급
      //   final Map<String, dynamic>? newToken = await authService.refreshToken();

      //   if (newToken != null) {
      //     // 새로 받아 온 토큰으로 Authorization 헤더 갱신
      //     options.headers['Authorization'] = newToken['accessToken'];
      //     options.headers['Refresh-Token'] = newToken['refreshToken'];

      //     // 새로운 토큰으로 원래 요청 재시도
      //     final clonedRequest = await Dio().fetch(options);
      //     return handler.resolve(clonedRequest);
      //   }
      // } catch (refreshError) {
      //   if (refreshError is DioException) {
      //     // 토큰 재발급 실패 시 로그아웃
      //     WidgetsBinding.instance.addPostFrameCallback((_) {
      //       authService.signOut().then((_) {
      //         router.go('/auth'); // 인증 페이지로 이동
      //       });
      //     });
      //   }
      // }
    }

    super.onError(err, handler);
  }
}
