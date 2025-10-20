import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/provider/global_notifier.dart';
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
import 'package:fluttertoast/fluttertoast.dart';
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
    ref.read(globalNotifierProvider.notifier).initProfile();
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
              SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    const HomeNavbarArea(), // 홈 상단 네비게이션바
                    const Gap(16),
                    const HomeProfileCardArea(), // 소개받은 프로필 부분
                    const Gap(16),
                    HomeCategoryButtonsArea(
                      // 카테고리 버튼 영역
                      onTapButton: (category) async {
                        final hasProfiles =
                            await homeNotifier.checkIntroducedProfiles(
                          IntroducedCategory.parse(category),
                        );
                        if (!hasProfiles) {
                          showToastMessage(
                            '조건에 맞는 이성을 찾지 못했어요',
                            gravity: ToastGravity.TOP,
                          );
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
                    GestureDetector(
                      onTap: () {
                        navigate(context, route: AppRoute.exam);
                      },
                      child: Image.asset(
                        ImagePath.homeTest,
                        fit: BoxFit.cover,
                        width: context.screenWidth,
                      ),
                    ),
                  ],
                ),
              ),
              if (data.isCheckingIntroducedProfiles) ...[
                const ModalBarrier(
                  dismissible: false,
                  color: Colors.transparent,
                ),
                const Center(child: CircularProgressIndicator()),
              ],
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
