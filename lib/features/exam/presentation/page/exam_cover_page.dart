import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/features/exam/domain/provider/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ExamCoverPage extends ConsumerStatefulWidget {
  const ExamCoverPage({super.key});

  @override
  ExamCoverPageState createState() => ExamCoverPageState();
}

class ExamCoverPageState extends BaseConsumerStatefulPageState<ExamCoverPage> {
  ExamCoverPageState() : super(defaultAppBarTitle: '연애 모의고사');

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchRequiredQuestionList();
    });
  }

  Future<void> _fetchRequiredQuestionList() async {
    await ref.read(examNotifierProvider.notifier).fetchRequiredQuestionList();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 9,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Gap(8),
            Text(
              '필수과목 30 / 선택 과목 20 (총 50문항)',
              style: Fonts.body02Medium(),
            ),
            const Gap(12),
            Container(
                decoration: BoxDecoration(
                  color: Palette.colorGrey50,
                  border: Border.all(
                    width: 1.w,
                    color: Palette.colorGrey100,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildBulletText(
                            '본 고사는 서로의 가치관과 생각을 이해하기 위한 것으로 진실에 근거하여 성실한 자세로 임하셔야 합니다.'),
                        _buildBulletText(
                            '필수과목 30문제를 풀고 선택한 모든 항목이 나와 동일한 상대방과 무료로 매칭을 진행할 수 있습니다'),
                        _buildBulletText('연애 모의고사 최초 1회 참여 시 15하트를 지급해 드립니다'),
                      ]),
                )),
            const Gap(24),
            Text(
              '필수과목 30',
              style: Fonts.body03Regular(Palette.colorBlack),
            ),
            const Gap(8),
            Container(
                decoration: BoxDecoration(
                  color: Palette.colorWhite,
                  border: Border.all(
                    width: 1.w,
                    color: Palette.colorGrey100,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSubjectItem('가치관', '10'),
                        _buildSubjectItem('데이트', '10'),
                        _buildSubjectItem('취향', '10'),
                      ]),
                )),
            const Gap(24),
            Text(
              '선택과목 20',
              style: Fonts.body03Regular(Palette.colorBlack),
            ),
            const Gap(8),
            Container(
                decoration: BoxDecoration(
                  color: Palette.colorWhite,
                  border: Border.all(
                    width: 1.w,
                    color: Palette.colorGrey100,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSubjectItem('연애밸런스', '12'),
                        _buildSubjectItem('결혼', '8'),
                      ]),
                )),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: screenHeight * 0.05),
          child: DefaultElevatedButton(
            onPressed: () async {
              await _fetchRequiredQuestionList();
              navigate(
                context,
                route: AppRoute.examQuestion,
                method: NavigationMethod.go,
              );
            },
            child: Text(
              '연애 모의고사 시작하기',
              style: Fonts.body01Medium().copyWith(
                fontWeight: FontWeight.w900,
                color: Palette.colorWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBulletText(
    String text,
  ) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "• ",
            style: Fonts.body03Regular(Palette.colorGrey800),
          ),
          Expanded(
            child: Text(
              text,
              style: Fonts.body03Regular(Palette.colorGrey800),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubjectItem(
    String name,
    String count,
  ) {
    return Container(
        margin: EdgeInsets.only(bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Fonts.body03Regular(Palette.colorBlack),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '\u2013' * 40,
                  overflow: TextOverflow.clip,
                  softWrap: false,
                  style: Fonts.body03Regular(Palette.colorGrey200),
                ),
              ),
            ),
            SizedBox(width: 8),
            Text(
              count,
              style: Fonts.body03Regular(Palette.colorBlack),
            ),
          ],
        ));
  }
}
