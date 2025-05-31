import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/home/presentation/widget/home/home_category_buttons_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/home/home_navbar_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/home/home_profile_card_area.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../app/constants/enum.dart';
import '../../../../app/router/route_arguments.dart';
import '../../../../app/router/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeNavbarArea(), // 홈 상단 네비게이션바
              const Gap(16),
              const HomeProfileCardArea(), // 소개받은 프로필 부분
              const Gap(16),
              Image.asset(
                ImagePath.homeTest,
                fit: BoxFit.cover,
                width: context.screenWidth,
                height: 89,
              ),
              const Gap(24),
              HomeCategoryButtonsArea(
                // 카테고리 버튼 영역
                onTapButton: (category) {
                  navigate(
                    context,
                    route: AppRoute.userByCategory,
                    extra: UserByCategoryArguments(
                        category: IntroducedCategory.parse(category)),
                  );
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
