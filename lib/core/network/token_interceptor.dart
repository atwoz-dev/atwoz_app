import 'package:atwoz_app/features/auth/domain/auth_provider.dart';
import '../../features/auth/domain/auth_service.dart';
import 'package:atwoz_app/app/router/routing.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Add token in header call API
class TokenInterceptor extends Interceptor {
  final Ref ref;

  TokenInterceptor(this.ref) : super();

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers.containsKey('requiresAuthToken')) {
      if (options.headers['requiresAuthToken'] == true) {
        final String? token =
            await ref.read(authServiceProvider).getAuthToken();
        options.headers.addAll(<String, Object?>{'Authorization': token});
      }

      options.headers.remove('requiresAuthToken');
    }
    return handler.next(options);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    final AuthService authService = ref.read(authServiceProvider);
    final router = ref.read(routerProvider);

    // 403 에러 발생 시 처리 로직
    if (err.response?.statusCode == 403) {
      router.go('/'); // 홈 경로로 이동
    }

    // 401 에러 발생 시 처리 로직
    if (err.response?.statusCode == 401) {
      final RequestOptions options = err.requestOptions;

      // 리스폰스에서 에러 코드 또는 메시지 확인
      final dynamic responseBody = err.response?.data;
      final String? errorCode = responseBody['status'] as String?;

      // 401 중에서도 토큰 만료인 경우에만 토큰 재발급 시도
      // TODO: 토큰 만료 아닐때는 어케 함?
      try {
        // 토큰 재발급
        final Map<String, dynamic>? newToken = await authService.refreshToken();

        if (newToken != null) {
          // 새로 받아 온 토큰으로 Authorization 헤더 갱신
          options.headers['Authorization'] = newToken['accessToken'];
          options.headers['Refresh-Token'] = newToken['refreshToken'];

          // 새로운 토큰으로 원래 요청 재시도
          final clonedRequest = await Dio().fetch(options);
          return handler.resolve(clonedRequest);
        }
      } catch (refreshError) {
        if (refreshError is DioException) {
          // 토큰 재발급 실패 시 로그아웃
          WidgetsBinding.instance.addPostFrameCallback((_) {
            authService.signOut().then((_) {
              router.go('/auth'); // 인증 페이지로 이동
            });
          });
        }
      }
    }

    super.onError(err, handler);
  }
}
