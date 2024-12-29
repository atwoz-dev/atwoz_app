import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:atwoz_app/features/home/presentation/home_page.dart';
import 'package:atwoz_app/features/auth/presentation/sign_in_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/onboarding_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/onboarding_phone_input_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/onboarding_certification_page.dart';

// Global Navigator Keys
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>();

// State Provider Example
final authProvider = StateProvider<bool>((ref) => false);

// Navigation methods enum
enum NavigationMethod { push, replace, go, pop, pushReplacement }

// Route enum with path
enum AppRoute {
  home('/home'),
  auth('/auth'),
  onboard('/onboard'),
  onboardPhone('/onboard/phone'),
  onboardCertification('/onboard/certification');

  final String path;

  const AppRoute(this.path);
}

// 네비게이션 헬퍼 메서드
Future<T?> navigate<T>({
  required BuildContext context,
  required AppRoute route,
  NavigationMethod method = NavigationMethod.push,
  Object? extra,
  VoidCallback? callback,
}) async {
  final goRouter = GoRouter.of(context);
  T? result;

  switch (method) {
    case NavigationMethod.push:
      result = await goRouter.push<T>(route.path, extra: extra);
      break;
    case NavigationMethod.replace:
      result = await goRouter.replace<T>(route.path, extra: extra);
      break;
    case NavigationMethod.go:
      goRouter.go(route.path, extra: extra);
      break;
    case NavigationMethod.pop:
      Navigator.of(context).pop(extra);
      break;
    case NavigationMethod.pushReplacement:
      result = await goRouter.pushReplacement<T>(route.path, extra: extra);
      break;
  }

  if (callback != null && (method != NavigationMethod.pop || result != null)) {
    callback();
  }

  return result;
}

// GoRouter 설정
final goRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  routes: [
    ...HomeBranch.routes,
    ...OnboardBranch.routes,
  ],
);

// Home branch routes
class HomeBranch {
  static final routes = [
    GoRoute(
      path: AppRoute.home.path,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoute.auth.path,
      builder: (context, state) => const SignInPage(),
    ),
  ];
}

// Onboard branch routes
class OnboardBranch {
  static final routes = [
    GoRoute(
      path: AppRoute.onboard.path,
      builder: (context, state) => const OnBoardPage(),
      routes: [
        GoRoute(
          path: AppRoute.onboardPhone.path.split('/onboard').last,
          builder: (context, state) => const OnboardingPhoneInputPage(),
        ),
        GoRoute(
          path: AppRoute.onboardCertification.path.split('/onboard').last,
          builder: (context, state) => const OnboardingCertificationPage(),
        ),
      ],
    ),
  ];
}

/*
< navigate() 메서드 용례 >

// 1. 일반적인 push 동작
navigate(context: context, route: AppRoute.home);

// 2. replace 동작
navigate(
  context: context,
  route: AppRoute.auth,
  method: NavigationMethod.replace,
);

// 3. go 동작
navigate(
  context: context,
  route: AppRoute.onboard,
  method: NavigationMethod.go,
);

// 4. pop 동작
navigate(
  context: context,
  route: AppRoute.home,
  method: NavigationMethod.pop,
);

// 5. pushReplacement 동작
navigate(
  context: context,
  route: AppRoute.auth,
  method: NavigationMethod.pushReplacement,
);

// 6. 결과와 콜백 처리
navigate(
  context: context,
  route: AppRoute.onboardCertification,
  method: NavigationMethod.push,
  callback: () => print('Navigation completed!'),
);
 */
