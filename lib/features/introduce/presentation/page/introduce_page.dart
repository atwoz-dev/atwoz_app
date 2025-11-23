import 'package:atwoz_app/app/widget/view/default_app_bar_action_group.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/features/introduce/introduce.dart';
import 'package:atwoz_app/features/introduce/presentation/widget/introduce_content_list.dart';
import 'package:atwoz_app/features/introduce/presentation/widget/introduce_my_list.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class IntroducePage extends ConsumerStatefulWidget {
  const IntroducePage({super.key});

  @override
  IntroducePageState createState() => IntroducePageState();
}

class IntroducePageState extends BaseConsumerStatefulPageState<IntroducePage> {
  IntroducePageState() : super(isAppBar: false, isHorizontalMargin: false);

  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding = EdgeInsets.symmetric(
      horizontal: horizontalPadding,
    );

    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.1), // 상단 여백 설정
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: contentPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          '셀프소개',
                          style: Fonts.header03().copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const DefaultAppBarActionGroup(
                        showFilter: true,
                        filterRoute: AppRoute.introduceFilter,
                      ),
                    ],
                  ),
                ),
                const Gap(16),
                DefaultTabBar(
                  tabs: ['소개', '내가 쓴 글'],
                  currentIndex: _currentTabIndex,
                  horizontalPadding: horizontalPadding,
                  onTap: _onTabTapped,
                ),
                Expanded(
                  child: Padding(
                    padding: contentPadding,
                    child: _currentTabIndex == 0
                        ? const IntroduceContentList()
                        : const IntroduceMyList(),
                  ),
                ),
              ],
            ),
          ),
        ),
        PostButton(
          onTap: () async {
            await navigate(context, route: AppRoute.introduceRegister);

            // 등록한 셀프소개가 적용되는 딜레이 필요
            await Future.delayed(const Duration(milliseconds: 500));
            _refreshIntroduceList();
          },
        ),
      ],
    );
  }

  void _onTabTapped(int index) => safeSetState(() {
    _currentTabIndex = index;
    _refreshIntroduceList();
  });

  Future<void> _refreshIntroduceList() async {
    if (_currentTabIndex == 0) {
      ref.read(introduceProvider.notifier).fetchIntroduceList();
    } else if (_currentTabIndex == 1) {
      ref.read(introduceProvider.notifier).fetchMyIntroduceList();
    }
  }
}
