import 'package:atwoz_app/core/widgets/error/error_route_page.dart';
import 'package:atwoz_app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return Routing.router;
});

/// Config routing for app
class Routing {
  const Routing._();

  static GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    initialLocation: AppRoute.navigation.path, // 초기 경로 설정
    routes: [
      ...HomeBranch.routes,
      ...OnboardBranch.routes,
    ], // router.dart의 routes 가져오기
    refreshListenable: ValueNotifier(authProvider),
    errorBuilder: (context, GoRouterState state) => ErrorRoutePage(state),
    redirect: (context, GoRouterState state) {
      final container = ProviderScope.containerOf(context);
      final isAuthenticated = container.read(authProvider);
      final isAuthPath = state.uri.toString() == AppRoute.auth.path;

      // 인증 상태에 따른 경로 리다이렉트
      // if (!isAuthenticated && !isAuthPath) {
      //   return '/onboard';
      // }
      // if (isAuthenticated && isAuthPath) {
      //   return '/home';
      // }
      return null;
    },
  );
}

class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {}
}
