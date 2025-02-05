import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';

class HomeNavigationPage extends StatelessWidget {
  const HomeNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.screenWidth * 0.05,
                vertical: context.screenWidth * 0.2),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DefaultElevatedButton(
                    primary: context.palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.home,
                      );
                    },
                    child: Text(
                      '홈',
                      style: Fonts.body01Regular(context.palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: context.palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.ideal,
                      );
                    },
                    child: Text(
                      '이상형 설정',
                      style: Fonts.body01Regular(context.palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: context.palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.userByCategory,
                      );
                    },
                    child: Text(
                      '소개받고 싶은 이성',
                      style: Fonts.body01Regular(context.palette.onPrimary),
                    ),
                  ),
                ],
              ),
            )));
  }
}
