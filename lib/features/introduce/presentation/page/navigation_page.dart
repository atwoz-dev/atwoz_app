import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:flutter/material.dart';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';

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
                  DefaultElevatedButton(
                    primary: context.palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.introduce,
                      );
                    },
                    child: Text(
                      '셀프소개 리스트',
                      style: Fonts.body01Regular(context.palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: context.palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.introduceRegister,
                        method: NavigationMethod.pushReplacement,
                      );
                    },
                    child: Text(
                      '셀프소개 등록',
                      style: Fonts.body01Regular(context.palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: context.palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.introduceEdit,
                      );
                    },
                    child: Text(
                      '셀프소개 수정',
                      style: Fonts.body01Regular(context.palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: context.palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.introduceDetail,
                      );
                    },
                    child: Text(
                      '셀프소개 상세',
                      style: Fonts.body01Regular(context.palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: context.palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.introduceFilter,
                      );
                    },
                    child: Text(
                      '필터',
                      style: Fonts.body01Regular(context.palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: context.palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.introduce,
                      );
                    },
                    child: Text(
                      '프로필교환 요청 수락',
                      style: Fonts.body01Regular(context.palette.onPrimary),
                    ),
                  ),
                ],
              ),
            )));
  }
}
