import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/widget/view/default_tap_bar.dart';
import 'package:atwoz_app/features/interview/presentation/widget/question_card.dart';
import 'package:atwoz_app/features/interview/presentation/widget/interview_banner_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:gap/gap.dart';

class InterviewPage extends ConsumerStatefulWidget {
  const InterviewPage({super.key});

  @override
  InterviewPageState createState() => InterviewPageState();
}

class InterviewPageState extends BaseConsumerStatefulPageState<InterviewPage> {
  InterviewPageState()
      : super(
          isAppBar: false,
          isHorizontalMargin: false,
          isDefaultBottomNavigationBar: true,
          defaultBottomNavigationBarIndex: 3,
        );
  int _currentTabIndex = 0;
  bool _isBannerVisible = true;

  void _onTabTapped(int index) => safeSetState(() => _currentTabIndex = index);

  void _closeBanner() => safeSetState(() => _isBannerVisible = false);

  @override
  Widget buildPage(BuildContext context) {
    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding =
        EdgeInsets.symmetric(horizontal: horizontalPadding);
    final double tagSpacing = 16;

    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.1,
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
                    style:
                        Fonts.header03().copyWith(fontWeight: FontWeight.w900)),
                const Gap(8),
                Text(
                  '이성에게 보여 줄 인터뷰예요.',
                  style: Fonts.body03Regular(Palette.colorGrey600),
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
              child: InterviewBannerWidget(onClose: _closeBanner),
            ),
          if (!_isBannerVisible) const Gap(12),
          Expanded(
            child: QuestionCard(
              tagSpacing: tagSpacing,
              contentPadding: contentPadding,
              currentTabIndex: _currentTabIndex,
              horizontalPadding: horizontalPadding,
            ),
          ),
        ],
      ),
    );
  }
}
