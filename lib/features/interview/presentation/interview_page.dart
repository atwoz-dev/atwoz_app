import 'package:atwoz_app/core/widgets/view/default_tap_bar.dart';
import 'package:atwoz_app/features/interview/widget/question_card.dart';
import 'package:atwoz_app/features/interview/widget/banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/view/default_bottom_navigation_bar.dart';
import 'package:gap/gap.dart';

class InterviewPage extends ConsumerStatefulWidget {
  const InterviewPage({super.key});

  @override
  InterviewPageState createState() => InterviewPageState();
}

class InterviewPageState extends ConsumerState<InterviewPage> {
  int _currentTabIndex = 0;
  int _currentBottomNavIndex = 2;
  bool _isBannerVisible = true;

  void _onTabTapped(int index) => setState(() => _currentTabIndex = index);

  void _onBottomNavTapped(int index) {
    setState(() => _currentBottomNavIndex = index);
    print('BottomNav tapped: $index');
  }

  void _closeBanner() => setState(() => _isBannerVisible = false);

  @override
  Widget build(BuildContext context) {
    final double horizontalPadding = context.screenWidth * 0.05;
    final EdgeInsets contentPadding =
        EdgeInsets.symmetric(horizontal: horizontalPadding);
    final double tagSpacing = 16;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: context.screenHeight * 0.1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: contentPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('나를 소개해볼까요?',
                      style: AppStyles.header03()
                          .copyWith(fontWeight: FontWeight.w900)),
                  const Gap(8),
                  Text(
                    '이성에게 보여 줄 인터뷰예요.',
                    style: AppStyles.body03Regular(AppColors.colorGrey600),
                  ),
                ],
              ),
            ),
            const Gap(16),
            DefaultTabBar(
              tabs: ['나', '관계', '연인'],
              currentIndex: _currentTabIndex,
              onTap: _onTabTapped,
              horizontalPadding: horizontalPadding,
            ),
            if (_isBannerVisible)
              Padding(
                padding: contentPadding,
                child: BannerWidget(onClose: _closeBanner),
              ),
            if (!_isBannerVisible) const Gap(12),
            Expanded(
              child: QuestionCard(
                ref: ref,
                tagSpacing: tagSpacing,
                contentPadding: contentPadding,
                currentTabIndex: _currentTabIndex,
                horizontalPadding: horizontalPadding,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: DefaultBottomNavigationBar(
        currentIndex: _currentBottomNavIndex,
        onTap: _onBottomNavTapped,
      ),
    );
  }
}
