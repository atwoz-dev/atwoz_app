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

  late IntroduceNotifier notifier;

  void _onTabTapped(int index) => safeSetState(() {
    _currentTabIndex = index;
    if (index == 0) {
      notifier.fetchIntroduceList();
    } else if (index == 1) {
      notifier.fetchIntroduceMyList(lastId: null);
    }
  });

  @override
  void initState() {
    super.initState();

    notifier = ref.read(introduceProvider.notifier);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifier.fetchIntroduceList();
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    // final state = ref.watch(introduceProvider);
    final isLoaded = ref.watch(
      introduceProvider.select((value) => value.isLoaded),
    );
    final introduceList = ref.watch(
      introduceProvider.select((value) => value.introduceList),
    );

    final introduceMyList = ref.watch(
      introduceProvider.select((value) => value.introduceMyList),
    );

    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding = EdgeInsets.symmetric(
      horizontal: horizontalPadding,
    );

    // TODO: 셀프 소개 목록 불러오기 전까지 로딩??
    // TODO: api 에러 처리??
    if (!isLoaded) {
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
                        ? _buildIntroduceContent(context, introduceList)
                        : _buildIntroduceHistory(context, introduceMyList),
                  ),
                ),
              ],
            ),
          ),
        ),
        PostButton(
          onTap: () async {
            await navigate(context, route: AppRoute.introduceRegister);
            // TOGO: 등록한 셀프소개가 서버에 적용되는데 약간의 딜레이 발생
            _refreshIntroduceList();
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
    return itemCount == 0
        ? const Text("셀프 소개 없음")
        : ListView.builder(
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
          // navigate(context, route: AppRoute.introduceDetail);
          final nickname = ref.watch(globalProvider).profile.nickname;

          if (nickname == item.nickname) {
            await navigate(
              context,
              route: AppRoute.introduceEdit,
              extra: IntroduceEditArguments(id: item.id),
            );
            _refreshIntroduceList();
          } else {
            // TODO: 다른 화면으로 이동
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
    List<IntroduceItem> introduces,
  ) {
    int itemCount = introduces.length;

    // TODO: 내 셀프소개 글이 없는 경우 화면 필요
    return itemCount == 0
        ? const Text("내가 작성한 셀프소개 없음")
        : ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: itemCount,
            itemBuilder: (context, index) {
              final introcude = introduces[index];
              bool isLastItem = index == itemCount - 1;
              return Container(
                decoration: BoxDecoration(
                  border: isLastItem
                      ? null
                      : Border(
                          bottom: BorderSide(
                            width: 1.w,
                            color: Palette.colorGrey50,
                          ),
                        ),
                ),
                child: GestureDetector(
                  onTap: () async {
                    await navigate(
                      context,
                      route: AppRoute.introduceEdit,
                      extra: IntroduceEditArguments(id: introcude.id),
                    );
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
                                introcude.title,
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
                                style: Fonts.body03Regular(
                                  Palette.colorGrey500,
                                ),
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

  void _refreshIntroduceList() async {
    await Future.delayed(const Duration(milliseconds: 500));

    if (_currentTabIndex == 0) {
      notifier.fetchIntroduceList();
    } else if (_currentTabIndex == 1) {
      notifier.fetchIntroduceMyList();
    }
  }
}
