import 'package:deepple_app/app/widget/icon/default_icon.dart';
import 'package:deepple_app/core/state/base_page_state.dart';
import 'package:deepple_app/features/introduce/introduce.dart';
import 'package:deepple_app/features/introduce/presentation/widget/introduce_content_list.dart';
import 'package:deepple_app/features/introduce/presentation/widget/introduce_my_list.dart';
import 'package:flutter/material.dart';
import 'package:deepple_app/app/router/router.dart';
import 'package:deepple_app/app/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

enum IntroduceTabType {
  all('소개'),
  my('내가 쓴 글');

  final String label;

  const IntroduceTabType(this.label);
}

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

    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: 16.0.w,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '셀프소개',
                            style: Fonts.header03().copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              SizedBox(
                                height: Dimens.iconSize,
                                width: Dimens.iconSize,
                                child: IconButton(
                                  onPressed: () => navigate(
                                    context,
                                    route: AppRoute.notification,
                                  ),
                                  padding: EdgeInsets.zero,
                                  icon: const DefaultIcon(
                                    IconPath.notification,
                                    size: Dimens.iconSize,
                                  ),
                                ),
                              ),
                              if (_currentTabIndex == 0)
                                Row(
                                  children: [
                                    const Gap(8),
                                    SizedBox(
                                      height: Dimens.iconSize,
                                      width: Dimens.iconSize,
                                      child: IconButton(
                                        onPressed: () => navigate(
                                          context,
                                          route: AppRoute.introduceFilter,
                                        ),
                                        padding: EdgeInsets.zero,
                                        icon: const DefaultIcon(
                                          IconPath.filter,
                                          size: Dimens.iconSize,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IntroduceTabBar(
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
          PostButton(
            onTap: () async {
              await navigate(context, route: AppRoute.introduceRegister);

              // 등록한 셀프소개가 적용되는 딜레이 필요
              // await Future.delayed(const Duration(milliseconds: 500));
              _refreshIntroduceList();
            },
          ),
        ],
      ),
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

/// DefaultIcon(IconPath.frowningFace, size: 48),
