import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class AuthNavigationPage extends ConsumerStatefulWidget {
  const AuthNavigationPage({super.key});

  @override
  ConsumerState<AuthNavigationPage> createState() => _AuthNavigationPageState();
}

class _AuthNavigationPageState
    extends AppBaseConsumerStatefulPageState<AuthNavigationPage> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
          vertical: screenWidth * 0.2,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(context, route: AppRoute.signUp);
                },
                child: Text(
                  '회원가입 1단계',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(context, route: AppRoute.signUpProfileChoice);
                },
                child: Text(
                  '회원가입 2단계',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(context, route: AppRoute.signUpProfilePicture);
                },
                child: Text(
                  '회원가입 3단계',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(context, route: AppRoute.signUpTerms);
                },
                child: Text(
                  '이용약관',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () async {
                  await ref.read(authUsecaseProvider).signOut(); // 🔥 ref 사용 가능
                },
                child: Text(
                  '로그아웃',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
