import 'package:atwoz_app/core/widgets/error/error_route_page.dart';
import 'package:atwoz_app/data/sources/remote/auth_service.dart';
import 'package:atwoz_app/features/auth/presentation/sign_in_page.dart';
import 'package:atwoz_app/features/home/presentation/home_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/onboard_page.dart';
import 'package:atwoz_app/features/root/presentation/root_setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routing.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
class UserNotifier extends _$UserNotifier with ChangeNotifier {
  bool get isAuthenticated => ref.watch(authServiceProvider).user != null;

  @override
  bool build() {
    return isAuthenticated;
  }

  void login() {
    // 로그인 후 상태를 변경
    notifyListeners(); // 상태 변경 알림
  }

  void logout() {
    // 로그아웃 후 상태를 변경
    notifyListeners(); // 상태 변경 알림
  }
}

@riverpod
GoRouter router(Ref ref) {
  final isAuthenticated = ref.watch(userNotifierProvider);

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
    refreshListenable: ref.read(userNotifierProvider.notifier),
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoardPage(),
      ),
      GoRoute(
        path: '/auth',
        builder: (context, state) => SignInPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/root',
        builder: (context, state) => const RootSettingPage(),
      ),
    ],
    errorBuilder: (context, state) => ErrorRoutePage(state),
    redirect: (context, state) {
      final currentLocation = state.uri.toString();

      // if (!isAuthenticated && currentLocation != '/auth') {
      //   return '/auth';
      // }
      // if (isAuthenticated && currentLocation == '/auth') {
      //   return '/';
      // }
      // return null; // 그대로 유지
      return '/';
    },
  );
}
