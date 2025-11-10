import 'package:atwoz_app/app/widget/image/rounded_image.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar_action_group.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_notifier.dart';
import 'package:atwoz_app/features/introduce/introduce.dart';
import 'package:atwoz_app/features/introduce/presentation/widget/post_button.dart';
import 'package:atwoz_app/features/introduce/presentation/widget/tab_bar.dart';
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

  void _onTabTapped(int index) => safeSetState(() => _currentTabIndex = index);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final notifier = ref.read(introduceProvider.notifier);
      notifier.fetchIntroduceList();
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    final notifier = ref.read(introduceProvider.notifier);
    final state = ref.watch(introduceProvider);

    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding = EdgeInsets.symmetric(
      horizontal: horizontalPadding,
    );

    // TODO: 셀프 소개 목록 불러오기 전까지 로딩??
    // TODO: api 에러 처리??
    if (!state.isLoaded) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

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
                        ? _buildIntroduceContent(context, state.introduceList)
                        : _buildIntroduceHistory(context),
                  ),
                ),
              ],
            ),
          ),
        ),
        PostButton(
          onTap: () {
            // TODO: introduceRegister 갔다와서 셀프소개목록 갱신필요함
            navigate(context, route: AppRoute.introduceRegister);
          },
        ),
      ],
    );
  }

  Widget _buildIntroduceContent(
    BuildContext context,
    List<IntroduceItem> items,
  ) {
    final double gapWidth = 16.w;

    final int itemCount = items.length;
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        bool isLastItem = index == itemCount - 1;

        return _introduceItem(
          item: items[index],
          isLastItem: isLastItem,
          gapWidth: gapWidth,
        );
      },
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

  Widget _buildIntroduceHistory(BuildContext context) {
    const int itemCount = 4;

    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.w, color: Palette.colorGrey50),
            ),
          ),
          child: GestureDetector(
            onTap: () async {
              //AutoRouter.of(context).push(const IntroduceDetailScreen());
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
                          '다들 좋은 아침 보내셨나요? 다들 좋은 아침 보내셨나요? 다들 좋은 아침 보내셨나요? 다들 좋은 아침 보내셨나요?다들 좋은 아침 보내셨나요?',
                          style: Fonts.body02Medium().copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Gap(4),
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
      },
    );
  }
}
