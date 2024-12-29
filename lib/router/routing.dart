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
    initialLocation: '/onboard',
    routes: HomeBranch.routes,
    refreshListenable: ValueNotifier(authProvider),
    errorBuilder: (context, GoRouterState state) => ErrorRoutePage(state),
    redirect: (context, GoRouterState state) {
      final container = ProviderScope.containerOf(context);
      final isAuthenticated = container.read(authProvider);
      final isAuthPath = state.uri.toString() == '/auth';

      // TODO: API 연결 후 각주 해제
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
