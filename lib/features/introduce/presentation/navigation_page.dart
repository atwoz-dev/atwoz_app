import 'package:atwoz_app/router/router.dart';
import 'package:flutter/material.dart';

import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';

// TODO: 셀프소개 전체화면 나온 뒤 삭제 필요
class IntroduceNavigationPage extends StatelessWidget {
  const IntroduceNavigationPage({super.key});

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
                        route: AppRoute.introduce,
                      );
                    },
                    child: Text(
                      '셀프소개 리스트',
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
                        route: AppRoute.introduce,
                      );
                    },
                    child: Text(
                      '셀프소개 등록',
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
                        route: AppRoute.introduce,
                      );
                    },
                    child: Text(
                      '셀프소개 수정',
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
                        route: AppRoute.introduce,
                      );
                    },
                    child: Text(
                      '셀프소개 상세',
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
                        route: AppRoute.introduce,
                      );
                    },
                    child: Text(
                      '필터',
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
                        route: AppRoute.introduce,
                      );
                    },
                    child: Text(
                      '프로필교환 요청 수락',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                ],
              ),
            )));
  }
}
