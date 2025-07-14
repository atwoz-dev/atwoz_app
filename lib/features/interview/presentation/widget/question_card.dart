import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/state/base_widget_state.dart';
import 'package:atwoz_app/features/interview/data/data.dart';
import 'package:atwoz_app/features/interview/presentation/widget/interview_answer_dialogue_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    final category = InterviewCategory.values[widget.currentTabIndex];
    final provider = ref.watch(interviewRepositoryProvider);

    return FutureBuilder<List<InterviewQuestionItem>>(
      future: provider.getQuestionList(category: category),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError || !snapshot.hasData) {
          return const Center(child: Text('질문을 불러오지 못했습니다.'));
        }

        final questionList = snapshot.data!;
        print(questionList);

        return Padding(
          padding: widget.contentPadding,
          child: SingleChildScrollView(
            child: Wrap(
              spacing: widget.tagSpacing,
              runSpacing: widget.tagSpacing - 4,
              children: questionList.map((question) {
                final controller = _controllers.putIfAbsent(
                  question.questionId.toString(),
                  () => TextEditingController(text: question.answerContent),
                );

                return GestureDetector(
                  onTap: () {
                    InterviewAnswerDialogueWidget.showAnswerFormDialog(
                      initialValue: controller.text,
                      title: '인터뷰 답변',
                      hintText: '답변을 입력해주세요',
                      context: context,
                      questionTitle: question.questionContent,
                      answerController: controller,
                      onSave: () async {
                        final content = controller.text.trim();
                        // if (question.isAnswered) {
                        //   await ref
                        //       .read(updateInterviewAnswerUseCaseProvider)
                        //       .call(
                        //           answerId: question.answerId!,
                        //           answerContent: content);
                        // } else {
                        //   await ref
                        //       .read(submitInterviewAnswerUseCaseProvider)
                        //       .call(
                        //           questionId: question.questionId,
                        //           answerContent: content);
                        // }

                        // 다시 불러오기 (강제 리빌드 또는 invalidate 필요)
                        setState(() {});
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  child: _buildQuestionCard(
                      context, question.questionContent, question.isAnswered),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  Widget _buildQuestionCard(
      BuildContext context, String question, bool isAnswered) {
    return SizedBox(
        width:
            (screenWidth - widget.horizontalPadding * 2 - widget.tagSpacing) /
                2,
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
        ));
  }
}
