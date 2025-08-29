import 'dart:async';

import 'package:atwoz_app/features/auth/presentation/page/auth_navigation_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/auth_sign_up_terms_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_choice.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_picture_page.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_update_page.dart';
import 'package:atwoz_app/features/contact_setting/presentation/page/contact_setting_page.dart';
import 'package:atwoz_app/features/exam/presentation/page/exam_cover_page.dart';
import 'package:atwoz_app/features/exam/presentation/page/exam_question_page.dart';
import 'package:atwoz_app/features/exam/presentation/page/exam_result_page.dart';
import 'package:atwoz_app/features/favorite_list/presentation/page/favorite_list_page.dart';
import 'package:atwoz_app/features/home/presentation/page/page.dart';
import 'package:atwoz_app/features/interview/presentation/page/interview_page.dart';
import 'package:atwoz_app/features/interview/presentation/page/interview_register_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_detail_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_edit_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_filter_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_register_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/navigation_page.dart';
import 'package:atwoz_app/features/my/presentation/page/dormant_account_page.dart';
import 'package:atwoz_app/features/my/presentation/page/my_profile_image_update_page.dart';
import 'package:atwoz_app/features/my/presentation/page/page.dart';
import 'package:atwoz_app/features/my/presentation/page/profile_preview_page.dart';
import 'package:atwoz_app/features/navigation/presentation/page/navigation_page.dart';
import 'package:atwoz_app/features/notification/presentation/page/notification_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/page/onboarding_certificate_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/page/onboarding_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/page/onboarding_phone_number_page.dart';
import 'package:atwoz_app/features/profile/presentation/page/profile_page.dart';
import 'package:atwoz_app/features/profile/profile_design_inspection.dart';
import 'package:atwoz_app/features/report/presentation/page/report_page.dart';
import 'package:atwoz_app/features/heart_history/presentation/page/heart_history_page.dart';
import 'package:atwoz_app/features/store/presentation/page/store_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'route_arguments.dart';
import 'named_go_route.dart';

// Global Navigator Keys
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>();

// State Provider Example
final authProvider = StateProvider<bool>((ref) => false);

// Navigation methods enum
enum NavigationMethod { push, replace, go, pushReplacement }

// Route names enum
enum AppRoute {
  // Navigation
  navigation('navigation'),
  home('home'),
  homeNavigation('home-navigation'),
  ideal('ideal'),
  userByCategory('user-by-category'),
  myNavigation('my-navigation'),
  report('report'),

  // Introduce
  introduce('introduce'),
  introduceRegister('introduce-register'),
  introduceEdit('introduce-edit'),
  introduceDetail('introduce-detail'),
  introduceFilter('introduce-filter'),
  introduceNavigation('introduce-navigation'),

  // Profile
  profile('profile'),
  profileDesignInspection('profile-design-inspection'),
  contactSetting('contact-setting'),
  favoriteList('favorite-list'),

  // Store
  store('store'),
  storeNavigation('store-navigation'),
  heartHistory('heart-history'),

  // DatingExam
  exam('exam'),
  examQuestion('exam-question'),
  examResult('exam-result'),

  // Notification
  notification('notification'),

  // Interview
  interview('interview'),
  interviewRegister('interview-register'),

  // Onboard
  onboard('onboard'),
  onboardPhone('onboard-phone'),
  onboardCertification('onboard-certification'),

  // Auth
  auth('auth'),
  authNavigation('auth-navigation'),
  signUp('sign-up'),
  signUpProfile('sign-up-profile'),
  signUpTerms('sign-up-terms'),
  signUpProfileChoice('sign-up-profile-choice'),
  signUpProfileUpdate('sign-up-profile-update'),
  signUpProfilePicture('sign-up-profile-picture'),

  // My
  myPage('my-page'),
  profileManage('profile-manage'),
  profileUpdate('profile-update'),
  idealSetting('ideal-setting'),
  blockFriend('block-friend'),
  customerCenter('customer-center'),
  setting('setting'),
  pushNotificationSetting('push-notification-setting'),
  accountSetting('account-setting'),
  serviceWithdraw('service-withdraw'),
  withdrawReason('withdraw-reason'),
  privacyPolicy('privacy-policy'),
  termsOfUse('terms-of-use'),
  myProfileImageUpdate('my-profile-image-update'),
  profilePreview('profile-preview'),
  dormantAccount('dormant-account');

  final String name;
  const AppRoute(this.name);
}

final allRoutes = [
  NamedGoRoute(
    name: '/',
    builder: (context, state) => const NavigationPage(),
    routes: [
      // Home routes
      NamedGoRoute(
        name: AppRoute.homeNavigation.name,
        builder: (context, state) => const HomeNavigationPage(),
        routes: [
          NamedGoRoute(
            name: AppRoute.home.name,
            builder: (context, state) => const HomePage(),
          ),
          NamedGoRoute(
            name: AppRoute.ideal.name,
            builder: (context, state) => const IdealTypeSettingPage(),
          ),
          NamedGoRoute(
            name: AppRoute.userByCategory.name,
            builder: (context, state) {
              final args = state.extra;
              if (args is! UserByCategoryArguments) {
                return const SizedBox.shrink();
              }
              return UserByCategoryPage(category: args.category);
            },
          ),
        ],
      ),
      NamedGoRoute(
        name: AppRoute.myNavigation.name,
        builder: (context, state) => const MyNavigationPage(),
      ),
      NamedGoRoute(
        name: AppRoute.report.name,
        builder: (context, state) => const ReportPage(),
      ),
      NamedGoRoute(
        name: AppRoute.introduce.name,
        builder: (context, state) => const IntroducePage(),
        routes: [
          NamedGoRoute(
            name: AppRoute.introduceRegister.name,
            builder: (context, state) => const IntroduceRegisterPage(),
          ),
          NamedGoRoute(
            name: AppRoute.introduceEdit.name,
            builder: (context, state) => const IntroduceEditPage(),
          ),
          NamedGoRoute(
            name: AppRoute.introduceDetail.name,
            builder: (context, state) => const IntroduceDetailPage(),
          ),
          NamedGoRoute(
            name: AppRoute.introduceFilter.name,
            builder: (context, state) => const IntroduceFilterPage(),
          ),
          NamedGoRoute(
            name: AppRoute.introduceNavigation.name,
            builder: (context, state) => const IntroduceNavigationPage(),
          ),
        ],
      ),
      NamedGoRoute(
        name: AppRoute.interview.name,
        builder: (context, state) {
          final args = state.extra;
          final tabIndex =
              args is InterviewArguments ? args.currentTabIndex : 0;

          return InterviewPage(
            currentTabIndex: tabIndex,
          );
        },
        routes: [
          NamedGoRoute(
            name: AppRoute.interviewRegister.name,
            builder: (context, state) {
              final args = state.extra;
              if (args is! InterviewRegisterArguments) {
                return const SizedBox.shrink();
              }
              return InterviewRegisterPage(
                question: args.question,
                answer: args.answer,
                currentTabIndex: args.currentTabIndex,
                answerId: args.answerId,
                questionId: args.questionId,
                isAnswered: args.isAnswered,
              );
            },
          ),
          // Home routes
        ],
      ),
      NamedGoRoute(
        name: AppRoute.profile.name,
        builder: (context, state) {
          final args = state.extra;
          if (args is! ProfileDetailArguments) return const SizedBox.shrink();
          return ProfilePage(
            userId: args.userId,
            fromMatchedProfile: args.fromMatchedProfile,
          );
        },
        routes: [
          NamedGoRoute(
            name: AppRoute.profileDesignInspection.name,
            builder: (context, state) => const ProfileDesignInspection(),
          ),
          NamedGoRoute(
            name: AppRoute.contactSetting.name,
            builder: (context, state) => const ContactSettingPage(),
          ),
        ],
      ),
      NamedGoRoute(
        name: AppRoute.favoriteList.name,
        builder: (_, __) => const FavoriteListPage(),
      ),
      NamedGoRoute(
        name: AppRoute.exam.name,
        builder: (context, state) => const ExamCoverPage(),
        routes: [
          NamedGoRoute(
            name: AppRoute.examQuestion.name,
            builder: (context, state) => const ExamQuestionPage(),
          ),
          NamedGoRoute(
            name: AppRoute.examResult.name,
            builder: (context, state) => const ExamResultPage(),
          ),
        ],
      ),
      NamedGoRoute(
        name: AppRoute.notification.name,
        builder: (context, state) => const NotificationPage(),
      ),
      NamedGoRoute(
        name: AppRoute.store.name,
        builder: (context, state) => const StorePage(),
        routes: [
          NamedGoRoute(
            name: AppRoute.heartHistory.name,
            builder: (context, state) => const HeartHistoryPage(),
          ),
        ],
      ),
      // Onboard routes
      NamedGoRoute(
        name: AppRoute.onboard.name,
        builder: (context, state) => const OnBoardPage(),
        routes: [
          NamedGoRoute(
            name: AppRoute.onboardPhone.name,
            builder: (context, state) => const OnboardingPhoneInputPage(),
          ),
          NamedGoRoute(
            name: AppRoute.onboardCertification.name,
            builder: (context, state) {
              final args = state.extra;
              if (args is! OnboardCertificationArguments) {
                return const SizedBox.shrink();
              }
              return OnboardingCertificationPage(phoneNumber: args.phoneNumber);
            },
          ),
        ],
      ),
      // Auth routes
      NamedGoRoute(
        name: AppRoute.authNavigation.name,
        builder: (context, state) => const AuthNavigationPage(),
        routes: [
          NamedGoRoute(
            name: AppRoute.signUp.name,
            builder: (context, state) => const SignUpPage(),
            routes: [
              NamedGoRoute(
                name: AppRoute.signUpProfileChoice.name,
                builder: (context, state) => const SignUpProfileChoicePage(),
              ),
              NamedGoRoute(
                name: AppRoute.signUpProfilePicture.name,
                builder: (context, state) => const SignUpProfilePicturePage(),
              ),
              NamedGoRoute(
                name: AppRoute.signUpTerms.name,
                builder: (context, state) => const AuthSignUpTermsPage(),
              ),
              NamedGoRoute(
                name: AppRoute.signUpProfileUpdate.name,
                builder: (context, state) => const SignUpProfileUpdatePage(),
              ),
            ],
          ),
        ],
      ),
      // My routes
      NamedGoRoute(
        name: AppRoute.myPage.name,
        builder: (context, state) => const MyPage(),
      ),
      NamedGoRoute(
        name: AppRoute.profileManage.name,
        builder: (context, state) => const ProfileManagePage(),
        routes: [
          NamedGoRoute(
            name: AppRoute.profileUpdate.name,
            builder: (context, state) {
              final args = state.extra;
              if (args is! MyProfileUpdateArguments) {
                return const SizedBox.shrink();
              }
              return ProfileUpdatePage(profileType: args.profileType);
            },
          ),
          NamedGoRoute(
            name: AppRoute.myProfileImageUpdate.name,
            builder: (context, state) {
              final args = state.extra;
              if (args is! MyProfileImageUpdateArguments) {
                return const SizedBox.shrink();
              }
              return MyProfileImageUpdatePage(
                profileImages: args.profileImages,
              );
            },
          ),
          NamedGoRoute(
            name: AppRoute.profilePreview.name,
            builder: (context, state) {
              final args = state.extra;
              if (args is! ProfilePreviewArguments) {
                return const SizedBox.shrink();
              }
              return ProfilePreviewPage(profile: args.profile);
            },
          ),
          NamedGoRoute(
            name: AppRoute.dormantAccount.name,
            builder: (_, __) => const DormantAccountPage(),
          ),
        ],
      ),
      // TODO: 추후 삭제
      NamedGoRoute(
        name: AppRoute.navigation.name,
        builder: (context, state) => const NavigationPage(),
      ),
      NamedGoRoute(
        name: AppRoute.idealSetting.name,
        builder: (context, state) => const IdealTypeSettingPage(),
      ),
      NamedGoRoute(
        name: AppRoute.blockFriend.name,
        builder: (context, state) => const MyBlockFriendPage(),
      ),
      NamedGoRoute(
        name: AppRoute.customerCenter.name,
        builder: (context, state) => const SignUpProfileUpdatePage(),
      ),
      NamedGoRoute(
        name: AppRoute.setting.name,
        builder: (context, state) => const MySettingPage(),
        routes: [
          NamedGoRoute(
            name: AppRoute.pushNotificationSetting.name,
            builder: (context, state) => const PushNotificationSettingPage(),
          ),
          NamedGoRoute(
            name: AppRoute.accountSetting.name,
            builder: (context, state) => const MyAccountSettingPage(),
            routes: [
              NamedGoRoute(
                name: AppRoute.serviceWithdraw.name,
                builder: (context, state) => const ServiceWithdrawPage(),
              ),
              NamedGoRoute(
                name: AppRoute.withdrawReason.name,
                builder: (context, state) => const ServiceWithdrawReasonPage(),
              ),
            ],
          ),
          NamedGoRoute(
            name: AppRoute.privacyPolicy.name,
            builder: (context, state) => const PrivacyPolicyPage(),
          ),
          NamedGoRoute(
            name: AppRoute.termsOfUse.name,
            builder: (context, state) => const TermsOfUsePage(),
          ),
        ],
      ),
    ],
  ),
];

// Navigation helper methods
void pop(BuildContext context, [Object? extra]) =>
    Navigator.of(context).pop(extra);

Future<T?> navigate<T>(
  BuildContext context, {
  required AppRoute route,
  NavigationMethod method = NavigationMethod.push,
  RouteArguments? extra,
}) async {
  final goRouter = GoRouter.of(context);

  return switch (method) {
    NavigationMethod.push =>
      await goRouter.pushNamed<T>(route.name, extra: extra),
    NavigationMethod.replace =>
      await goRouter.replaceNamed<T>(route.name, extra: extra),
    NavigationMethod.go => (() {
        goRouter.goNamed(route.name, extra: extra);
        return null;
      })(),
    NavigationMethod.pushReplacement =>
      await goRouter.pushReplacementNamed<T>(route.name, extra: extra),
  };
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
