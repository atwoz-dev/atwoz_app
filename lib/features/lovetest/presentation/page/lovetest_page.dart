import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/features/lovetest/presentation/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:gap/gap.dart';

class LoveTestMainPage extends ConsumerStatefulWidget {
  const LoveTestMainPage({super.key});

  @override
  LoveTestMainPageState createState() => LoveTestMainPageState();
}

class LoveTestMainPageState
    extends BaseConsumerStatefulPageState<LoveTestMainPage> {
  LoveTestMainPageState()
      : super(
          isAppBar: false,
          isHorizontalMargin: true,
          isDefaultBottomNavigationBar: true,
          defaultBottomNavigationBarIndex: 3,
        );
  int essentialSubjectCount = 30;
  int optoinalSubjectCount = 20;
  List<List<String>> tempEssentialSubjects = [
    ["가치관", "12"],
    ["데이트", "8"],
    ["취향", "10"]
  ];
  List<List<String>> tempOptionalSubjects = [
    ["연애밸런스", "10"],
    ["결혼", "10"]
  ];

  @override
  Widget buildPage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('연애 모의고사',
              style: Fonts.header03().copyWith(fontWeight: FontWeight.w700)),
          const Gap(8),
          Row(
            children: [
              Text(
                '필수과목 30 / 선택과목 20 ',
                style: Fonts.body03Regular(),
              ),
              Text(
                '(총 50문항)',
                style: Fonts.body03Regular(Palette.colorGrey600),
              ),
            ],
          ),
          const Gap(16),
          LoveTestPlainWidget(),
          const Gap(24),
          LoveTestSubjectWidget(
            subjectCount: essentialSubjectCount.toString(),
            subjectTitle: "필수과목",
            subjects: tempEssentialSubjects,
          ),
          const Gap(24),
          LoveTestSubjectWidget(
            subjectCount: optoinalSubjectCount.toString(),
            subjectTitle: "선택과목",
            subjects: tempOptionalSubjects,
          ),
          const Spacer(),
          DefaultElevatedButton(
            onPressed: () {
              navigate(context, route: AppRoute.lovetest);
            },
            primary: Palette.colorPrimary500,
            child: Text("연애 모의고사 시작하기",
                style: Fonts.body01Regular().copyWith(
                    fontWeight: FontWeight.w500, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
