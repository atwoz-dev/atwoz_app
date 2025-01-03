import 'package:atwoz_app/core/widgets/dialogue/custom_dialogue.dart';
import 'package:atwoz_app/features/interview/domain/interview_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:atwoz_app/features/interview/widget/answer_tag.dart';
import 'package:atwoz_app/core/theme/theme.dart';

class QuestionCard extends StatefulWidget {
  final double tagSpacing;
  final EdgeInsetsGeometry contentPadding;
  final int currentTabIndex;
  final double horizontalPadding;
  final WidgetRef ref;

  const QuestionCard({
    super.key,
    required this.tagSpacing,
    required this.contentPadding,
    required this.currentTabIndex,
    required this.horizontalPadding,
    required this.ref,
  });

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  final Map<String, TextEditingController> _controllers = {};

  @override
  void dispose() {
    // 모든 컨트롤러를 dispose하여 메모리 누수 방지
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
    final interviewNotifier =
        widget.ref.watch(interviewNotifierProvider.notifier);

    return Padding(
      padding: widget.contentPadding,
      child: SingleChildScrollView(
        child: Wrap(
          spacing: widget.tagSpacing, // 카드 간 가로 간격
          runSpacing: widget.tagSpacing - 4, // 카드 간 세로 간격
          children: questions.map((question) {
            _controllers.putIfAbsent(question, () => TextEditingController());

            return GestureDetector(
              onTap: () {
                String? answer = interviewNotifier.getAnswer(question);
                print('질문: $question // 답변: $answer');
                CustomDialog.showAnswerFormDialog(
                  title: '인터뷰 답변',
                  hintText: '답변을 입력해주세요',
                  context: context,
                  questionTitle: question,
                  answerController: _controllers[question]!,
                  onSave: () {
                    final answer = _controllers[question]!.text;

                    // Riverpod 상태 업데이트
                    interviewNotifier.saveAnswer(question, answer);

                    Navigator.of(context).pop();
                  },
                );
              },
              child: _buildQuestionCard(context, question),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildQuestionCard(BuildContext context, String question) {
    return SizedBox(
      width: (context.screenWidth -
              widget.horizontalPadding * 2 -
              widget.tagSpacing) /
          2,
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
