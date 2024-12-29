// Import statements
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:atwoz_app/features/home/presentation/home_page.dart';
import 'package:atwoz_app/features/auth/presentation/sign_in_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/onboard_page.dart';
import 'package:atwoz_app/features/onboarding/presentation/onboarding_phone_input_page.dart';

// Navigator keys
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>();

final authProvider = StateProvider<bool>((ref) => false);

Future<T?> navigate<T>({
  required BuildContext context,
  required String code,
  Object? extra,
  VoidCallback? callback,
}) async {
  final goRouter = GoRouter.of(context);
  T? result;

  switch (code) {
    case 'home':
      result = await goRouter.push<T>('/home', extra: extra);
      break;
    case 'auth':
      result = await goRouter.push<T>('/auth', extra: extra);
      break;
    case 'onboard':
      result = await goRouter.push<T>('/onboard', extra: extra);
      break;
    case 'onboard-phone':
      result = await goRouter.push<T>('/onboard-phone', extra: extra);
      break;
    default:
      break;
  }

  if (callback != null && result != null) {
    callback();
  }

  return result;
}

// Home branch routes
class HomeBranch {
  static final routes = [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/onboard',
      builder: (context, state) => const OnBoardPage(),
    ),
    GoRoute(
      path: '/onboard-phone',
      builder: (context, state) => OnboardingPhoneInputPage(),
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => SignInPage(),
    ),
  ];
}
