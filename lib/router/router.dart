import 'dart:async';
import 'package:atwoz_app/features/auth/presentation/sign_up_three_page.dart';
import 'package:atwoz_app/features/navigation/presentation/navigation_page.dart';
import 'package:atwoz_app/features/report/presentation/report_page.dart';
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
enum NavigationMethod { push, replace, go, pushReplacement }

// Route enum with path
enum AppRoute {
  navigation('/navigation'),
  home('/home'),
  auth('/auth'),
  onboard('/onboard'),
  onboardPhone('/onboard/phone'),
  onboardCertification('/onboard/certification'),
  report('/report'),
  signUpFirst('/sign-up/first'), // 회원가입 쪽 하시는 분 이름 원하는대로 바꿔주세요.
  signUpThree('/sign-up/three');

  final String path;

  const AppRoute(this.path);
}

final allRoutes = [
  ...HomeBranch.routes,
  ...OnboardBranch.routes,
  ...SignBranch.routes,
];

// Home branch routes
class HomeBranch {
  static final routes = [
    // TODO: 화면 전부 나오면 삭제하기
    GoRoute(
      path: AppRoute.navigation.path,
      builder: (context, state) => const NavigationPage(),
    ),
    GoRoute(
      path: AppRoute.home.path,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoute.auth.path,
      builder: (context, state) => const SignInPage(),
    ),
    // TODO: 나중에 report 경로 위치 바꾸기
    GoRoute(
      path: AppRoute.report.path,
      builder: (context, state) => const ReportPage(),
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

class SignBranch {
  static final routes = [
    GoRoute(
      path: AppRoute.signUpFirst.path,
      builder: (context, state) => const SignInPage(), // TODO: 바꾸기
      routes: [
        GoRoute(
          path: AppRoute.signUpThree.path.split('/sign-up').last,
          builder: (context, state) => const SignUpThreePage(),
        ),
      ],
    ),
  ];
}

// pop
void pop(BuildContext context, [Object? extra]) =>
    Navigator.of(context).pop(extra);

// 네비게이션 헬퍼 메서드
Future<T?> navigate<T>(
  BuildContext context, {
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

    case NavigationMethod.pushReplacement:
      result = await goRouter.pushReplacement<T>(route.path, extra: extra);
      break;
  }

  if (callback != null && result != null) {
    callback();
  }

  return result;
}

/* < navigate() 메서드 용례 >

// 1. 일반적인 push 동작
navigate(
  context,
  route: AppRoute.home
);

//  2. replace 동작
navigate(
  context,
  route: AppRoute.auth,
  method: NavigationMethod.replace
);

// 3. go 동작
navigate(
  context,
  route: AppRoute.onboard,
  method: NavigationMethod.go
);

// 4. pop 동작
pop(context);

// 5. pushReplacement 동작
navigate(
  context,
  route: AppRoute.report,
    method: NavigationMethod.pushReplacement,
);

// 6. 결과와 콜백 처리
navigate(
  context,
  route: AppRoute.onboardCertification,
  extra: {'exampleKey': 'exampleValue'},
  callback: () => print('Navigation completed!'),
);
 */
