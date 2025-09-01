import 'dart:ui';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/features/home/presentation/provider/provider.dart';
import 'package:atwoz_app/features/home/presentation/widget/home/home_category_buttons_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/home/home_navbar_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/home/home_profile_card_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends BaseConsumerStatefulPageState<HomePage> {
  HomePageState() : super(isAppBar: false, isHorizontalMargin: false);

  @override
  void initState() {
    ref.read(globalNotifierProvider.notifier).initialize();
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    final homeStateAsync = ref.watch(homeNotifierProvider);
    final homeNotifier = ref.read(homeNotifierProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: homeStateAsync.when(
          data: (data) => Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const HomeNavbarArea(), // 홈 상단 네비게이션바
                      const Gap(16),
                      const HomeProfileCardArea(), // 소개받은 프로필 부분
                      const Gap(16),
                      HomeCategoryButtonsArea(
                        // 카테고리 버튼 영역
                        onTapButton: (category) async {
                          final isNotEmptyList =
                              await homeNotifier.checkIntroducedProfiles(
                            IntroducedCategory.parse(category),
                          );
                          if (!isNotEmptyList) {
                            showToastMessage('조건에 맞는 이성을 찾지 못했어요');
                            return;
                          }
                          if (context.mounted) {
                            navigate(
                              context,
                              route: AppRoute.userByCategory,
                              extra: UserByCategoryArguments(
                                category: IntroducedCategory.parse(category),
                              ),
                            );
                          }
                        },
                      ),
                      const Gap(24),
                      Image.asset(
                        ImagePath.homeTest,
                        fit: BoxFit.cover,
                        width: context.screenWidth,
                        height: 89,
                      ),
                    ],
                  ),
                ),
              ),
              if (data.isCheckingIntroducedProfiles)
                const Center(
                  child: CircularProgressIndicator(),
                ),
            ],
          ),
          error: (error, stackTrace) => const SizedBox.shrink(),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
