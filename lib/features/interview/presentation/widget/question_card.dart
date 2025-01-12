import 'package:atwoz_app/core/state/base_widget_state.dart';
import 'package:atwoz_app/features/interview/domain/interview_provider.dart';
import 'package:atwoz_app/features/interview/presentation/widget/interview_answer_dialogue_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:atwoz_app/features/interview/presentation/widget/interview_answer_tag_widget.dart';
import 'package:atwoz_app/app/constants/constants.dart';

class QuestionCard extends ConsumerStatefulWidget {
  final double tagSpacing;
  final EdgeInsetsGeometry contentPadding;
  final int currentTabIndex;
  final double horizontalPadding;

  const QuestionCard({
    super.key,
    required this.tagSpacing,
    required this.contentPadding,
    required this.currentTabIndex,
    required this.horizontalPadding,
  });

  @override
  ConsumerState<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends AppBaseConsumerWidgetState<QuestionCard> {
  final Map<String, TextEditingController> _controllers = {};

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
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
    ][widget.currentTabIndex];

    return Padding(
      padding: widget.contentPadding,
      child: SingleChildScrollView(
        child: Wrap(
          spacing: widget.tagSpacing,
          runSpacing: widget.tagSpacing - 4,
          children: questions.map((question) {
            _controllers.putIfAbsent(question, () => TextEditingController());

            final isAnswered =
                ref.watch(interviewNotifierProvider).answers[question] != null;

            return GestureDetector(
              onTap: () {
                InterviewAnswerDialogueWidget.showAnswerFormDialog(
                  initialValue: ref
                      .read(interviewNotifierProvider.notifier)
                      .getAnswer(question),
                  title: '인터뷰 답변',
                  hintText: '답변을 입력해주세요',
                  context: context,
                  questionTitle: question,
                  answerController: _controllers[question]!,
                  onSave: () {
                    final answer = _controllers[question]!.text;
                    ref
                        .read(interviewNotifierProvider.notifier)
                        .saveAnswer(question, answer);
                    Navigator.of(context).pop();
                  },
                );
              },
              child: _buildQuestionCard(context, question, isAnswered),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildQuestionCard(
      BuildContext context, String question, bool isAnswered) {
    return SizedBox(
      width:
          (screenWidth - widget.horizontalPadding * 2 - widget.tagSpacing) / 2,
      child: Container(
        decoration: BoxDecoration(
          color: Palette.colorGrey100.withAlpha(100),
          borderRadius: Dimens.buttonRadius,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InterviewAnswerTagWidget(isAnswered),
            const Gap(8),
            Text(
              question,
              style: Fonts.body02Regular(palette.onSurface),
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ],
        ),
      ),
    );
  }
}
