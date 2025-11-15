import 'package:atwoz_app/app/provider/global_notifier.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/widget/image/rounded_image.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar_action_group.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/features/introduce/introduce.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class IntroducePage extends ConsumerStatefulWidget {
  const IntroducePage({super.key});

  @override
  IntroducePageState createState() => IntroducePageState();
}

class IntroducePageState extends BaseConsumerStatefulPageState<IntroducePage> {
  IntroducePageState() : super(isAppBar: false, isHorizontalMargin: false);

  int _currentTabIndex = 0;
  String nickname = "";

  @override
  void initState() {
    super.initState();

    nickname = ref.read(globalProvider).profile.nickname;
  }

  @override
  Widget buildPage(BuildContext context) {
    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding = EdgeInsets.symmetric(
      horizontal: horizontalPadding,
    );

    final stateAsync = ref.watch(introduceProvider);

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
                        ? _buildIntroduceContent(context, stateAsync)
                        : _buildIntroduceHistory(context, stateAsync),
                  ),
                ),
              ],
            ),
          ),
        ),
        PostButton(
          onTap: () async {
            await navigate(context, route: AppRoute.introduceRegister);

            // TODO: 등록한 셀프소개가 서버에 적용되는데 약간의 딜레이 발생. 다른 방법이 있을까?
            await Future.delayed(const Duration(milliseconds: 500));
            _refreshIntroduceList();
          },
        ),
      ],
    );
  }

  Widget _buildIntroduceContent(
    BuildContext context,
    AsyncValue<IntroduceState> stateAync,
  ) {
    final double gapWidth = 16.w;

    return stateAync.when(
      data: (data) {
        final introduces = data.introduceList;
        final introducesCount = introduces.length;
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: data.introduceList.length,
          itemBuilder: (context, index) {
            bool isLastItem = index == introducesCount - 1;

            return _introduceItem(
              item: introduces[index],
              isLastItem: isLastItem,
              gapWidth: gapWidth,
            );
          },
        );
      },
      error: (error, stackTrace) => const SizedBox.shrink(),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _introduceItem({
    required IntroduceItem item,
    required bool isLastItem,
    required double gapWidth,
  }) {
    final double thumbSize = 64.w;

    return Container(
      decoration: BoxDecoration(
        border: isLastItem
            ? null
            : Border(
                bottom: BorderSide(width: 1.w, color: Palette.colorGrey50),
              ),
      ),
      child: GestureDetector(
        onTap: () async {
          //AutoRouter.of(context).push(const IntroduceDetailScreen());
          // navigate(context, route: AppRoute.introduceDetail);

          if (nickname == item.nickname) {
            await navigate(
              context,
              route: AppRoute.introduceEdit,
              extra: IntroduceEditArguments(id: item.id),
            );

            await Future.delayed(const Duration(milliseconds: 500));
            _refreshIntroduceList();
          } else {
            // TODO: 다른 화면으로 이동
            navigate(
              context,
              route: AppRoute.introduceDetail,
              extra: IntroduceDetailArguments(introduceId: item.id),
            );
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(
            children: [
              RoundedImage(size: thumbSize, imageURL: item.profileUrl),
              SizedBox(width: gapWidth),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.nickname ?? "nickname",
                      style: Fonts.body02Medium().copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      item.title,
                      style: Fonts.body03Regular(Palette.colorGrey500),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIntroduceHistory(
    BuildContext context,
    AsyncValue<IntroduceState> stateAync,
  ) {
    return stateAync.when(
      data: (data) {
        final introduces = data.introduceMyList;
        final introducesCount = introduces.length;

        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: introducesCount,
          itemBuilder: (context, index) {
            final introduce = introduces[index];
            bool isLastItem = index == introducesCount - 1;
            return _introduceHistoryItem(
              introduce: introduce,
              isLastItem: isLastItem,
            );
          },
        );
      },
      error: (error, stackTrace) => const SizedBox.shrink(),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _introduceHistoryItem({
    required IntroduceItem introduce,
    required bool isLastItem,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: isLastItem
            ? null
            : Border(
                bottom: BorderSide(width: 1.w, color: Palette.colorGrey50),
              ),
      ),
      child: GestureDetector(
        onTap: () async {
          await navigate(
            context,
            route: AppRoute.introduceEdit,
            extra: IntroduceEditArguments(id: introduce.id),
          );
          await Future.delayed(const Duration(milliseconds: 500));
          _refreshIntroduceList();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      introduce.title,
                      style: Fonts.body02Medium().copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Gap(4),
                    // TODO: 날짜???
                    Text(
                      '2025.02.28',
                      style: Fonts.body03Regular(Palette.colorGrey500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTabTapped(int index) => safeSetState(() {
    _currentTabIndex = index;
    _refreshIntroduceList();
  });

  void _refreshIntroduceList() async {
    if (_currentTabIndex == 0) {
      ref.read(introduceProvider.notifier).fetchIntroduceList();
    } else if (_currentTabIndex == 1) {
      ref.read(introduceProvider.notifier).fetchIntroduceMyList();
    }
  }
}
