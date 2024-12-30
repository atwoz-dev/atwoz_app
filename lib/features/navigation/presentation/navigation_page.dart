import 'package:atwoz_app/router/router.dart';
import 'package:flutter/material.dart';

import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/view/default_appbar.dart';
import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
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
                        context: context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '온보딩',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context: context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '회원가입',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context: context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '메인(홈화면)',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context: context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '셀프소개',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context: context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '인터뷰',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context: context,
                        route: AppRoute.report,
                      );
                    },
                    child: Text(
                      '신고하기',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context: context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '연애고사',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context: context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '알림',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context: context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '좋아요 목록/보내기',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context: context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '스토어',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context: context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '프로필 상세',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context: context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '마이페이지',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                ],
              ),
            )));
  }
}
