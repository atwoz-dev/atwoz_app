import 'package:deepple_app/app/router/route_arguments.dart';
import 'package:deepple_app/app/router/router.dart';
import 'package:deepple_app/app/widget/dialogue/dialogue.dart';
import 'package:deepple_app/core/state/base_widget_state.dart';
import 'package:deepple_app/core/util/toast.dart';
import 'package:deepple_app/features/interview/interview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:deepple_app/app/constants/constants.dart';

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
  void initState() {
    super.initState();
    _fetchQuestions();
  }

  @override
  void didUpdateWidget(covariant QuestionCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentTabIndex != widget.currentTabIndex) {
      _fetchQuestions();
    }
  }

  void _fetchQuestions() {
    final category = InterviewCategory.values[widget.currentTabIndex];
    ref.read(interviewProvider.notifier).fetchQuestionList(category);
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final interviewState = ref.watch(interviewProvider);
    final questionList = interviewState.questionList.questionList;

    return Padding(
      padding: widget.contentPadding,
      child: SingleChildScrollView(
        child: Wrap(
          spacing: widget.tagSpacing,
          runSpacing: widget.tagSpacing - 4,
          children: questionList.map((question) {
            return GestureDetector(
              onTap: () {
                navigate(
                  context,
                  route: AppRoute.interviewRegister,
                  extra: InterviewRegisterArguments(
                    question: question.questionContent,
                    answer: question.answerContent ?? '',
                    currentTabIndex: widget.currentTabIndex,
                    answerId: question.answerId,
                    questionId: question.questionId,
                    isAnswered: question.isAnswered,
                  ),
                );
              },
              onLongPress: () {
                if (!question.isAnswered) return;
                if (question.answerId == null) {
                  showToastMessage('소개글을 삭제할 수 없습니다.');
                  return;
                }

                CustomDialogue.showTwoChoiceDialogue(
                  context: context,
                  content: '작성하신 ${question.questionContent} 소개글을 삭제하시겠어요?',
                  onElevatedButtonPressed: () async {
                    final isSuccess = await ref
                        .read(interviewProvider.notifier)
                        .removeAnswer(question.answerId!, question.questionId);

                    if (!context.mounted) return;

                    Navigator.of(context).pop();

                    if (isSuccess) {
                      showToastMessage('소개글이 정상적으로 삭제되었어요.');
                      return;
                    }

                    showToastMessage('소개글을 삭제하는데 실패했습니다.');
                  },
                );
              },
              child: _buildQuestionCard(
                context,
                question.questionContent,
                question.isAnswered,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildQuestionCard(
    BuildContext context,
    String question,
    bool isAnswered,
  ) {
    return SizedBox(
      width:
          (screenWidth - widget.horizontalPadding * 2 - widget.tagSpacing) / 2,
      child: Container(
        decoration: BoxDecoration(
          color: Palette.colorGrey100.withAlpha(100),
          borderRadius: Dimens.buttonRadius,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InterviewAnswerTagWidget(isAnswered),
              const Gap(8),
              Text(
                question,
                style: Fonts.body02Regular(palette.onSurface),
                maxLines: 2,
                overflow: TextOverflow.clip,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
