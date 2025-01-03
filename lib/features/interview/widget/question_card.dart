import 'package:atwoz_app/core/widgets/dialogue/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:atwoz_app/features/interview/widget/answer_tag.dart';
import 'package:atwoz_app/core/theme/theme.dart';

class QuestionCard extends StatelessWidget {
  final double tagSpacing;
  final EdgeInsetsGeometry contentPadding;
  final int currentTabIndex;
  final double horizontalPadding;

  QuestionCard({
    super.key,
    required this.tagSpacing,
    required this.contentPadding,
    required this.currentTabIndex,
    required this.horizontalPadding,
  });

  final List<List<String>> _questions = [
    [
      '내가 생각하는 내 장점과 단점은 이거다!',
      '나의 평일과 주말은 이런식으로 보내고 있어!',
      '작고 귀여운 소소한 행복은 어떤게 있나요?',
      '내가 생각하는 나의 반전 매력은 이거야!',
      '스트레스는 만병의 근원! 나만의 방법은?',
      '내 최애 음식과 싫어하는 음식은?',
      '나는 요즘 이런걸 배워보고 싶더라!',
      '10년 뒤 멋진 내 모습, 과연 어떤 모습일까?',
      '비밀인데, 관리 루틴을 알려줄게~',
      '내 삶에 있어서 우선 순위를 매겨봐',
    ],
    List.generate(10, (index) => '관계 질문 ${index + 1}\n관계 질문 ${index + 1}'),
    List.generate(10, (index) => '연인 질문 ${index + 1}\n연인 질문 ${index + 1}'),
  ];

  @override
  Widget build(BuildContext context) {
    final TextEditingController answerController = TextEditingController();

    return Padding(
      padding: contentPadding,
      child: SingleChildScrollView(
        child: Wrap(
          spacing: tagSpacing, // 카드들 간의 가로 간격
          runSpacing: tagSpacing - 4, // 카드들 간의 세로 간격
          children: _questions[currentTabIndex].map((question) {
            return _buildQuestionCard(context, question);
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildQuestionCard(BuildContext context, String question) {
    return SizedBox(
      width: (context.screenWidth - horizontalPadding * 2 - tagSpacing) / 2,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.colorGrey100.withAlpha(100),
          borderRadius: AppDimens.buttonRadius,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnswerTag(),
            const Gap(8),
            Text(
              question,
              style: AppStyles.body02Regular(context.appColors.onSurface),
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ],
        ),
      ),
    );
  }
}
