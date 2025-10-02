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

  PageController _pageController = PageController();

  Map<int, int> _currentAnswerList = {};

  int _currentPage = 0;

  int get _currentSubjectIndex =>
      ref.read(examNotifierProvider.select((s) => s.currentSubjectIndex));

  bool get isLastSubject => _currentSubjectIndex == _subjectList.length - 1;

  List<SubjectItem> get _subjectList =>
      ref.read(examNotifierProvider).questionList.questionList;

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

  void _resetAnswer() {
    setState(() {
      _currentAnswerList = {};
    });
  }

  void _nextStep() async {
    final currentSubject = _subjectList[_currentSubjectIndex];

    if (_currentPage < currentSubject.questions.length - 1) {
      await Future.delayed(Duration(milliseconds: 300));

      if (!mounted) return;

      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevStep() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _showLeaveExamDialogue();
    }
  }

  void _showLeaveExamDialogue() {
    CustomDialogue.showTwoChoiceDialogue(
        context: context,
        content: '연애 모의고사를 종료 하시겠어요?\n페이지를 벗어날경우, 저장되지 않아요',
        onElevatedButtonPressed: () {
          ref.read(examNotifierProvider.notifier).setSubjectOptional(false);
          ref.read(examNotifierProvider.notifier).resetCurrentSubjectIndex();

          navigate(
            context,
            route: AppRoute.mainTab,
            method: NavigationMethod.go,
          );
        });
  }

  void _nextSubject() async {
    _resetAnswer();

    ref
        .read(examNotifierProvider.notifier)
        .setCurrentSubjectIndex(_currentSubjectIndex + 1);

    setState(() {
      _currentPage = 0;
      _pageController.jumpToPage(0);
    });
  }

  Future<void> _submitAnswers(SubjectAnswer payload) async {
    await ref
        .read(examNotifierProvider.notifier)
        .createSubmitAnswerList(payload);
  }

  void _submit() async {
    final notifier = ref.read(examNotifierProvider.notifier);
    final payload = SubjectAnswer(
      subjectId: _currentSubjectIndex + 1,
      answers: _currentAnswerList.entries
          .map((e) => QuestionAnswer(
                questionId: e.key,
                answerId: e.value,
              ))
          .toList(),
    );

    await _submitAnswers(payload);
    await notifier.fetchSoulmateList(isResult: isLastSubject);

    _handleNavigation();
  }

  void _handleNavigation() {
    final notifier = ref.read(examNotifierProvider.notifier);
    final hasResultData = ref.read(examNotifierProvider).hasResultData;

    if (isLastSubject) {
      notifier.setSubjectOptional(true);
      navigate(context, route: AppRoute.examResult);
      return;
    }

    _nextSubject();

    if (hasResultData) {
      navigate(context, route: AppRoute.examResult);
      return;
    }
  }

  @override
  Widget buildPage(BuildContext context) {
    final examState = ref.watch(examNotifierProvider);
    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding =
        EdgeInsets.symmetric(horizontal: horizontalPadding);

    if (!examState.isLoaded || _subjectList.isEmpty) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    final currentSubject = _subjectList[_currentSubjectIndex];
    final currentQuestions = currentSubject.questions;

    return Scaffold(
      appBar: DefaultAppBar(
        title: currentSubject.name,
        leadingAction: (context) => _showLeaveExamDialogue(),
      ),
      body: Padding(
        padding: contentPadding,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 9,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _buildQuestionHeader(currentSubject),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  physics: NeverScrollableScrollPhysics(), // 자동 Swipe 방지
                  itemCount: currentQuestions.length,
                  itemBuilder: (context, index) {
                    final question = currentQuestions[index];
                    final selectedAnswerId = _currentAnswerList[question.id];

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: question.answers.map((answer) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: AnswerRadioButton(
                                id: answer.id,
                                selectedId: selectedAnswerId,
                                content: answer.content,
                                onTap: (int id) {
                                  setState(() {
                                    _currentAnswerList[question.id] = id;
                                  });

                                  _nextStep();
                                },
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    );
                  },
                ),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.05),
            child: Row(spacing: 8.0, children: [
              Expanded(
                  child: DefaultOutlinedButton(
                primary: Palette.colorGrey100,
                onPressed: () => _prevStep(),
                child: Text('이전'),
                textColor: Palette.colorGrey500,
              )),
              Expanded(
                child: examState.isSubjectOptional
                    ? DefaultElevatedButton(
                        onPressed: _currentAnswerList.length !=
                                currentSubject.questions.length
                            ? null
                            : () => {
                                  _nextSubject(),
                                  ref
                                      .read(examNotifierProvider.notifier)
                                      .setSubjectOptional(false),
                                  ref
                                      .read(examNotifierProvider.notifier)
                                      .setExamDone(),
                                },
                        child: Text('다음'),
                      )
                    : DefaultElevatedButton(
                        onPressed: _currentAnswerList.length !=
                                currentSubject.questions.length
                            ? null
                            : () => _submit(),
                        child: Text(isLastSubject ? '제출하기' : '저장하기'),
                      ),
              )
            ]),
          ),
        ]),
      ),
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
}
