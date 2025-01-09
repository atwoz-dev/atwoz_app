import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';
import 'package:atwoz_app/router/router.dart';
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
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.home,
                      );
                    },
                    child: Text(
                      '홈',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.idealTypeSetting,
                      );
                    },
                    child: Text(
                      '이상형 설정',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.home,
                      );
                    },
                    child: Text(
                      '소개받고 싶은 이성',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                ],
              ),
            )));
  }
}
