import 'package:atwoz_app/features/introduce/widget/post_button.dart';
import 'package:atwoz_app/features/introduce/widget/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/constants/paleette.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:gap/gap.dart';

class IntroducePage extends ConsumerStatefulWidget {
  const IntroducePage({super.key});

  @override
  IntroducePageState createState() => IntroducePageState();
}

class IntroducePageState extends ConsumerState<IntroducePage> {
  int _currentTabIndex = 0;

  void _onTabTapped(int index) => setState(() => _currentTabIndex = index);

  @override
  Widget build(BuildContext context) {
    final double horizontalPadding = context.screenWidth * 0.05;
    final EdgeInsets contentPadding =
        EdgeInsets.symmetric(horizontal: horizontalPadding);

    return Stack(
      children: [
        Scaffold(
            body: Padding(
          padding: EdgeInsets.only(top: context.screenHeight * 0.1), // 상단 여백 설정
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: contentPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('셀프소개',
                            style: AppStyles.header03()
                                .copyWith(fontWeight: FontWeight.w900)),
                        const Gap(8),
                        Text(
                          '이성에게 나를 먼저 어필해 볼까요? \n프로필 교환을 통해 메시지를 주고받을 수 있어요!',
                          style:
                              AppStyles.body03Regular(AppColors.colorGrey600),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          //AutoRouter.of(context).push(const IntroduceDetailScreen());
                        },
                        child: Container(
                            padding: const EdgeInsets.all(4),
                            child: AppIcon(
                              AppIcons.notification,
                              size: 24,
                            )),
                      ),
                      GestureDetector(
                        onTap: () async {
                          //AutoRouter.of(context).push(const IntroduceDetailScreen());
                        },
                        child: Container(
                            padding: const EdgeInsets.all(4),
                            child: AppIcon(
                              AppIcons.tune,
                              size: 24,
                            )),
                      )
                    ],
                  )
                ],
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
                    ? _buildIntroduceContent(context)
                    : _buildIntroduceHistory(context),
              )),
            ],
          ),
        )),
        PostButton(
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildIntroduceContent(BuildContext context) {
    final int itemCount = 10;
    final double thumbWidth = 64.w;
    final double thumbHeight = 64.h;
    final double gapWidth = 16.w;

    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          bool isLastItem = index == itemCount - 1;

          return Container(
            decoration: BoxDecoration(
              border: isLastItem
                  ? null
                  : Border(
                      bottom:
                          BorderSide(width: 1.w, color: AppColors.colorGrey100),
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
                      ClipOval(
                        child: SizedBox(
                            width: thumbWidth,
                            height: thumbHeight,
                            child: Image.asset(
                              AppImages.selfThumb,
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(width: gapWidth),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('송리버 (서울 / 27 / 186)',
                              style: AppStyles.body02Medium()
                                  .copyWith(fontWeight: FontWeight.w700)),
                          const Gap(4),
                          Text(
                            '다들 좋은 아침 보내셨나요? 다들 좋은 아침 보내셨나요? 다들 좋은 아침 보내셨나요? 다들 좋은 아침 보내셨나요?다들 좋은 아침 보내셨나요?',
                            style:
                                AppStyles.body03Regular(AppColors.colorGrey500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      )),
                    ],
                  )),
            ),
          );
        });
  }

  Widget _buildIntroduceHistory(BuildContext context) {
    final int itemCount = 4;

    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1.w, color: AppColors.colorGrey100),
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
                            style: AppStyles.body02Medium()
                                .copyWith(fontWeight: FontWeight.w700),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Gap(4),
                          Text(
                            '2025.02.28',
                            style:
                                AppStyles.body03Regular(AppColors.colorGrey500),
                          ),
                        ],
                      )),
                    ],
                  )),
            ),
          );
        });
  }
}
