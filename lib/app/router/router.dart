import 'dart:async';

import 'package:atwoz_app/features/auth/presentation/page/auth_navigation_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/auth_sign_up_terms_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_choice.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_picture_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_update_page.dart';
import 'package:atwoz_app/features/contact_setting/presentation/page/contact_setting_page.dart';
import 'package:atwoz_app/features/home/presentation/page/page.dart';
import 'package:atwoz_app/features/interview/presentation/page/interview_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_detail_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_filter_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_edit_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_register_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/navigation_page.dart';
import 'package:atwoz_app/features/my/presentation/page/page.dart';
import 'package:atwoz_app/features/my/presentation/page/privacy_policy_page.dart';
import 'package:atwoz_app/features/my/presentation/page/profile_update_page.dart';
import 'package:atwoz_app/features/my/presentation/page/service_withdraw_page.dart';
import 'package:atwoz_app/features/my/presentation/page/service_withdraw_reason_page.dart';
import 'package:atwoz_app/features/my/presentation/page/terms_of_use_page.dart';
import 'package:atwoz_app/features/navigation/presentation/page/navigation_page.dart';
import 'package:atwoz_app/features/notification/presentation/page/notification_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/page/onboarding_certificate_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/page/onboarding_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/page/onboarding_phone_number_page.dart';
import 'package:atwoz_app/features/profile/presentation/page/profile_page.dart';
import 'package:atwoz_app/features/profile/profile_design_inspection.dart';
import 'package:atwoz_app/features/report/presentation/page/report_page.dart';
import 'package:atwoz_app/features/store/presentation/page/navigation_page.dart';
import 'package:atwoz_app/features/store/presentation/page/store_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'route_arguments.dart';

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
  ideal('/ideal'),
  userByCategory('/home/userByCategory/:category'),
  auth('/auth'),
  myNavigation('/my'),
  myPage('/my/main'),
  profileManage('/my/manage-profile'),
  profileUpdate('/my/manage-profile/update-profile'),
  idealSetting('/my/ideal-setting'),
  blockFriend('/my/block-friend'),
  store('/my/store'),
  customerCenter('/my/customer-center'),
  setting('/my/setting'),
  pushNotificationSetting('/my/setting/push'),
  accountSetting('/my/setting/account-setting'),
  serviceWithdraw('/my/setting/account-setting/service-withdraw'),
  withdrawReason('/my/setting/account-setting/withdraw-reason'),
  privacyPolicy('/my/setting/privacy-policy'),
  termsOfUse('/my/setting/terms-of-use'),
  onboard('/onboard'),
  onboardPhone('/onboard/phone'),
  onboardCertification('/onboard/certification'),
  report('/report'),
  signUp('/auth/sign-up'),
  signUpProfile('/auth/sign-up/profile'),
  signUpTerms('/auth/sign-up/terms'),
  signUpProfileChoice('/auth/sign-up-profile-choice'),
  signUpProfileUpdate('/auth/sign-up/profile-update'),
  signUpProfilePicture('/auth/sign-up-profile-picture'),
  interview('/interview'),
  @Deprecated('This variable will be removed after design check')
  profileDesignInspection('/profile-design-inspection'),
  profile('/profile'),
  contactSetting('/profile/contact-setting'),
  introduce('/introduce'),
  introduceRegister('/introduceRegister'),
  introduceEdit('/introduceEdit'),
  introduceDetail('/introduceDetail'),
  introduceFilter('/introduceFilter'),
  introduceNavigation('/introduceNavigation'),
  notification('/notification'),
  storeNavigation('/storeNavigation');

  final String path;

  const AppRoute(this.path);
}

final allRoutes = [
  ...HomeBranch.routes,
  ...OnboardBranch.routes,
  ...SignBranch.routes,
  ...MyBranch.routes,
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
      path: AppRoute.homeNavigation.path,
      builder: (context, state) => const HomeNavigationPage(),
    ),
    GoRoute(
      path: AppRoute.ideal.path,
      builder: (context, state) => const IdealTypeSettingPage(),
    ),
    GoRoute(
      path: AppRoute.userByCategory.path,
      name: 'userByCategory',
      builder: (context, state) {
        final category = state.pathParameters['category'] ?? "상위 5%";
        return UserByCategoryPage(category: category);
      },
    ),
    GoRoute(
      path: AppRoute.myNavigation.path,
      builder: (context, state) => const MyNavigationPage(),
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
      path: AppRoute.introduceRegister.path,
      builder: (context, state) => const IntroduceRegisterPage(),
    ),
    GoRoute(
      path: AppRoute.introduceEdit.path,
      builder: (context, state) => const IntroduceEditPage(),
    ),
    GoRoute(
      path: AppRoute.introduceDetail.path,
      builder: (context, state) => const IntroduceDetailPage(),
    ),
    GoRoute(
      path: AppRoute.introduceFilter.path,
      builder: (context, state) => const IntroduceFilterPage(),
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
      path: AppRoute.profileDesignInspection.path,
      builder: (context, state) => const ProfileDesignInspection(),
    ),
    GoRoute(
      path: AppRoute.profile.path,
      builder: (context, state) {
        final args = state.extra;
        // TODO(Han): this will be removed after implement ErrorPage
        if (args is! ProfileDetailArguments) return const SizedBox.shrink();
        return ProfilePage(
          userId: args.userId,
          fromMatchedProfile: args.fromMatchedProfile,
        );
      },
    ),
    GoRoute(
      path: AppRoute.contactSetting.path,
      builder: (context, state) => const ContactSettingPage(),
    ),
    GoRoute(
      path: AppRoute.notification.path,
      builder: (context, state) => const NotificationPage(),
    ),
    GoRoute(
      path: AppRoute.store.path,
      builder: (context, state) => const StorePage(),
    ),
    GoRoute(
      path: AppRoute.storeNavigation.path,
      builder: (context, state) => const StoreNavigationPage(),
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
          builder: (context, state) {
            final args = state.extra;
            // TODO(Geumbin): this will be removed after implement ErrorPage
            if (args is! OnboardCertificationArguments)
              return const SizedBox.shrink();
            return OnboardingCertificationPage(phoneNumber: args.phoneNumber);
          },
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
          path: 'sign-up-profile-choice',
          builder: (context, state) => const SignUpProfileChoicePage(),
        ),
        GoRoute(
          path: 'sign-up-profile-picture',
          builder: (context, state) => const SignUpProfilePicturePage(),
        ),
        GoRoute(
          path: 'sign-up/terms', // 경로를 명시적으로 정의
          builder: (context, state) => const AuthSignUpTermsPage(),
        ),
        GoRoute(
          path: 'sign-up/profile-update',
          builder: (context, state) => const SignUpProfileUpdatePage(),
        ),
      ],
    ),
  ];
}

//My branch routes
class MyBranch {
  static final routes = [
    GoRoute(
      path: AppRoute.myNavigation.path,
      builder: (context, state) => const MyNavigationPage(),
      routes: [
        GoRoute(
          path: 'main',
          builder: (context, state) => const MyPage(),
        ),
        GoRoute(
          path: 'manage-profile',
          builder: (context, state) => const ProfileManagePage(),
        ),
        GoRoute(
          path: 'manage-profile/update-profile',
          builder: (context, state) => const ProfileUpdatePage(),
        ),
        GoRoute(
          path: 'ideal-setting',
          builder: (context, state) => const IdealTypeSettingPage(),
        ),
        GoRoute(
          path: 'block-friend',
          builder: (context, state) => const MyBlockFriendPage(),
        ),
        GoRoute(
          path: 'store', // 경로를 명시적으로 정의
          builder: (context, state) => const AuthSignUpTermsPage(),
        ),
        GoRoute(
          path: 'customer-center',
          builder: (context, state) => const SignUpProfileUpdatePage(),
        ),
        GoRoute(
          path: 'setting',
          builder: (context, state) => const MySettingPage(),
        ),
        GoRoute(
          path: '/setting/push',
          builder: (context, state) => const PushNotificationSettingPage(),
        ),
        GoRoute(
          path: '/setting/account-setting',
          builder: (context, state) => const MyAccountSettingPage(),
        ),
        GoRoute(
          path: '/setting/account-setting/service-withdraw',
          builder: (context, state) => const ServiceWithdrawPage(),
        ),
        GoRoute(
          path: '/setting/account-setting/withdraw-reason',
          builder: (context, state) => const ServiceWithdrawReasonPage(),
        ),
        GoRoute(
          path: '/setting/privacy-policy',
          builder: (context, state) => const PrivacyPolicyPage(),
        ),
        GoRoute(
          path: '/setting/terms-of-use',
          builder: (context, state) => const TermsOfUsePage(),
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
  RouteArguments? extra,
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
