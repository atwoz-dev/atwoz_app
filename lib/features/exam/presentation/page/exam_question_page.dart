import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:atwoz_app/features/exam/domain/model/subject_answer.dart';
import 'package:atwoz_app/features/exam/domain/provider/domain.dart';
import 'package:atwoz_app/features/exam/presentation/widget/answer_radio_button.dart';
import 'package:atwoz_app/features/exam/presentation/widget/step_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:gap/gap.dart';

class ExamQuestionPage extends ConsumerStatefulWidget {
  const ExamQuestionPage({super.key});

  @override
  ExamQuestionPageState createState() => ExamQuestionPageState();
}

class ExamQuestionPageState
    extends BaseConsumerStatefulPageState<ExamQuestionPage> {
  ExamQuestionPageState()
      : super(
          isAppBar: false,
          isHorizontalMargin: false,
        );

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      final page = _pageController.page?.round() ?? 0;
      if (page != _currentPage) {
        setState(() {
          _currentPage = page;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    final examState = ref.watch(examNotifierProvider);
    final notifier = ref.read(examNotifierProvider.notifier);

    if (!examState.isLoaded || examState.questionList.questionList.isEmpty) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    final currentSubject =
        examState.questionList.questionList[examState.currentSubjectIndex];

    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding =
        EdgeInsets.symmetric(horizontal: horizontalPadding);

    return Scaffold(
      appBar: DefaultAppBar(
        title: currentSubject.name,
        leadingAction: (context) => _showLeaveExamDialogue(context, notifier),
      ),
      body: Padding(
        padding: contentPadding,
        child: Column(
          children: [
            _buildQuestionHeader(currentSubject),
            Expanded(
              child:
                  _buildQuestionPageView(examState, currentSubject, notifier),
            ),
            _buildQuestionBottomButton(examState, currentSubject, notifier),
          ],
        ),
      ),
    );
  }

  void _showLeaveExamDialogue(BuildContext context, ExamNotifier notifier) {
    CustomDialogue.showTwoChoiceDialogue(
      context: context,
      content: '연애 모의고사를 종료 하시겠어요?\n페이지를 벗어날경우, 저장되지 않아요',
      onElevatedButtonPressed: () {
        notifier.setSubjectOptional(false);
        notifier.resetCurrentSubjectIndex();
        navigate(
          context,
          route: AppRoute.mainTab,
          method: NavigationMethod.go,
        );
      },
    );
  }

  Widget _buildQuestionHeader(SubjectItem currentSubject) {
    final currentQuestion = currentSubject.questions[_currentPage];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(24),
        StepIndicator(
          totalStep: currentSubject.questions.length,
          currentStep: _currentPage + 1,
        ),
        Gap(24),
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 60.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${_currentPage + 1}. ",
                style: Fonts.header03().copyWith(
                  color: Palette.colorBlack,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Flexible(
                child: Text(
                  currentQuestion.content,
                  style: Fonts.header03().copyWith(
                    color: Palette.colorBlack,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildQuestionPageView(
    ExamState examState,
    SubjectItem currentSubject,
    ExamNotifier notifier,
  ) {
    return PageView.builder(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      itemCount: currentSubject.questions.length,
      itemBuilder: (context, index) {
        final question = currentSubject.questions[index];
        final selectedAnswerId = examState.currentAnswerList[question.id];

        return Column(
          children: question.answers.map((answer) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: AnswerRadioButton(
                id: answer.id,
                selectedId: selectedAnswerId,
                content: answer.content,
                onTap: (id) {
                  notifier.selectAnswer(question.id, id);
                  if (examState.currentPage <
                      currentSubject.questions.length - 1) {
                    notifier.nextPage();
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildQuestionBottomButton(
    ExamState examState,
    SubjectItem currentSubject,
    ExamNotifier notifier,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenHeight * 0.05),
      child: Row(
        spacing: 8.0,
        children: [
          Expanded(
            child: DefaultOutlinedButton(
              primary: Palette.colorGrey100,
              textColor: Palette.colorGrey500,
              onPressed: () {
                if (examState.currentPage > 0) {
                  notifier.previousPage();
                  _pageController.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  _showLeaveExamDialogue(context, notifier);
                }
              },
              child: Text('이전'),
            ),
          ),
          Expanded(
            child: DefaultElevatedButton(
              onPressed: examState.currentAnswerList.length !=
                      currentSubject.questions.length
                  ? null
                  : () {
                      notifier.submitCurrentSubject(context: context);
                      _pageController.jumpToPage(0);
                    },
              child: Text(
                examState.isSubjectOptional
                    ? notifier.isLastSubject
                        ? '저장하기'
                        : '다음'
                    : notifier.isLastSubject
                        ? '제출하기'
                        : '저장하기',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
