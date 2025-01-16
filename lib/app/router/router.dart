import 'dart:async';
import 'package:atwoz_app/features/auth/presentation/page/auth_navigation_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_birth.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_drinking_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_education_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_height.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_hobbies_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_job.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_location.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_mbti_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/auth_sign_up_profile_picture_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_religion_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_smoking_page.dart';
import 'package:atwoz_app/features/home/presentation/page/home_navigation_page.dart';
import 'package:atwoz_app/features/home/presentation/page/home_screen.dart';
import 'package:atwoz_app/features/interview/presentation/page/interview_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/navigation_page.dart';
import 'package:atwoz_app/features/navigation/presentation/page/navigation_page.dart';
import 'package:atwoz_app/features/notification/presentation/page/notification_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/page/onboarding_certificate_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/page/onboarding_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/page/onboarding_phone_number_page.dart';
import 'package:atwoz_app/features/profile/presentation/page/profile_page.dart';
import 'package:atwoz_app/features/report/presentation/page/report_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
  authNavigation('/auth'),
  home('/home'),
  homeNavigation('/homeNavigation'),
  onboard('/onboard'),
  onboardPhone('/onboard/phone'),
  onboardCertification('/onboard/certification'),
  report('/report'),
  signUp('/auth/sign-up'),
  signUpProfileBirth('/auth/sign-up-profile-birth'),
  signUpProfileHeight('/auth/sign-up-profile-height'),
  signUpProfileJob('/auth/sign-up-profile-job'),
  signUpProfileLocation('/auth/sign-up-profile-location'),
  signUpProfileReligion('/auth/sign-up-profile-religion'),
  signUpProfileSmoking('/auth/sign-up-profile-smoking'),
  signUpProfileHobbies('/auth/sign-up-profile-hobbies'),
  signUpProfileDrinking('/auth/sign-up-profile-drinking'),
  signUpProfileEducation('/auth/sign-up-profile-education'),
  signUpProfileMbti('/auth/sign-up-profile-mbti'),
  signUpProfilePicture('/auth/sign-up-profile-picture'),
  interview('/interview'),
  profile('/profile'),
  introduce('/introduce'),
  introduceNavigation('/introduceNavigation'),
  notification('/notification');

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
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoute.homeNavigation.path,
      builder: (context, state) => const HomeNavigationPage(),
    ),
    GoRoute(
      path: AppRoute.report.path,
      builder: (context, state) => const ReportPage(),
    ),
    GoRoute(
      path: AppRoute.introduce.path,
      builder: (context, state) => const IntroducePage(),
    ),
    GoRoute(
      path: AppRoute.introduceNavigation.path,
      builder: (context, state) => const IntroduceNavigationPage(),
    ),
    GoRoute(
      path: AppRoute.interview.path,
      builder: (context, state) => const InterviewPage(),
    ),
    GoRoute(
      path: AppRoute.profile.path,
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: AppRoute.notification.path,
      builder: (context, state) => const NotificationPage(),
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

// Sign branch routes
class SignBranch {
  static final routes = [
    GoRoute(
      path: AppRoute.authNavigation.path,
      builder: (context, state) => const AuthNavigationPage(),
      routes: [
        GoRoute(
          path: 'sign-up',
          builder: (context, state) => const SignUpPage(),
        ),
        GoRoute(
          path: 'sign-up-profile-birth',
          builder: (context, state) => const SignUpBirthPage(),
        ),
        GoRoute(
          path: 'sign-up-profile-height',
          builder: (context, state) => const SignUpHeightPage(),
        ),
        GoRoute(
          path: 'sign-up-profile-job',
          builder: (context, state) => const SignUpJobPage(),
        ),
        GoRoute(
          path: 'sign-up-profile-location',
          builder: (context, state) => const SignUpLocationPage(),
        ),
        GoRoute(
          path: 'sign-up-profile-religion',
          builder: (context, state) => const SignUpReligionPage(),
        ),
        GoRoute(
          path: 'sign-up-profile-smoking',
          builder: (context, state) => const SignUpSmokingPage(),
        ),
        GoRoute(
          path: 'sign-up-profile-hobbies',
          builder: (context, state) => const SignUpHobbiesPage(),
        ),
        GoRoute(
          path: 'sign-up-profile-drinking',
          builder: (context, state) => const SignUpDrinkingPage(),
        ),
        GoRoute(
          path: 'sign-up-profile-education',
          builder: (context, state) => const SignUpEducationPage(),
        ),
        GoRoute(
          path: 'sign-up-profile-mbti',
          builder: (context, state) => const SignUpMbtiPage(),
        ),
        GoRoute(
          path: 'sign-up-profile-picture',
          builder: (context, state) => const AuthSignUpProfilePicturePage(),
        ),
      ],
    ),
  ];
}

// Navigation helper methods
void pop(BuildContext context, [Object? extra]) =>
    Navigator.of(context).pop(extra);

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

