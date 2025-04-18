import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/home/presentation/widget/home/home_category_buttons_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/home/home_navbar_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/home/home_profile_card_area.dart';
import 'package:flutter/material.dart';

import '../../../../app/constants/enum.dart';
import '../../../../app/router/route_arguments.dart';
import '../../../../app/router/router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              const SizedBox(height: 16),
              const HomeProfileCardArea(), // 소개받은 프로필 부분
              const SizedBox(height: 16),
              Image.asset(
                ImagePath.homeTest,
                fit: BoxFit.cover,
                width: context.screenWidth,
                height: 89,
              ),
              const SizedBox(height: 24),
              HomeCategoryButtonsArea(
                // 카테고리 버튼 영역
                onTapButton: (category) {
                  final categoryEnum = introducedCategoryMap.entries
                      .firstWhere((entry) => entry.value == category)
                      .key;

                  navigate(
                    context,
                    route: AppRoute.userByCategory,
                    extra: UserByCategoryArguments(category: categoryEnum),
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
