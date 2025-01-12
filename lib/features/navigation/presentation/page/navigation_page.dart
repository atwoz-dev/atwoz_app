import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:flutter/material.dart';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends AppBaseStatefulPageBase<NavigationPage> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, vertical: screenWidth * 0.2),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '온보딩',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '회원가입',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '메인(홈화면)',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.introduceNavigation,
                      );
                    },
                    child: Text(
                      '셀프소개',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.interview,
                      );
                    },
                    child: Text(
                      '인터뷰',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.report,
                      );
                    },
                    child: Text(
                      '신고하기',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '연애고사',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.notification,
                      );
                    },
                    child: Text(
                      '알림',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '좋아요 목록/보내기',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '스토어',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.profile,
                      );
                    },
                    child: Text(
                      '프로필 상세',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.onboard,
                      );
                    },
                    child: Text(
                      '마이페이지',
                      style: Fonts.body01Regular(palette.onPrimary),
                    ),
                  ),
                ],
              ),
            )));
  }
}
