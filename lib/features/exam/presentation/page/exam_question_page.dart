import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/exam/data/data.dart';
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
      ref.watch(examNotifierProvider.select((s) => s.currentSubjectIndex));

  List<SubjectItem> get _subjectList =>
      ref.watch(examNotifierProvider).questionList.questionList;

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

  void _resetAnswer() {
    setState(() {
      _currentAnswerList = {};
    });
  }

  void _nextStep() async {
    final currentSubject = _subjectList[_currentSubjectIndex];

    if (_currentPage < currentSubject.questions.length - 1) {
      await Future.delayed(Duration(milliseconds: 300));

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
          ref.read(examNotifierProvider.notifier).setOptional(true);
          ref.read(examNotifierProvider.notifier).resetCurrentSubjectIndex();

          navigate(
            context,
            route: AppRoute.home,
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

  void _submit() async {
    final payload = SubjectAnswerItem.fromJson(
      ref.read(examNotifierProvider.notifier).buildFinalPayload(
            _currentAnswerList,
            _currentSubjectIndex + 1,
          ),
    );

    await ref
        .read(examNotifierProvider.notifier)
        .createSubmitAnswerList(payload);

    await ref.read(examNotifierProvider.notifier).fetchSoulmateList();

    navigate(
      context,
      route: AppRoute.examResult,
    );

    if (_currentSubjectIndex < _subjectList.length - 1) {
      _nextSubject();
    } else {
      ref.read(examNotifierProvider.notifier).setOptional(false);
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
              Gap(24),
              StepIndicator(
                totalStep: currentQuestions.length,
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
                          currentQuestions[_currentPage].content,
                          style: Fonts.header03().copyWith(
                            color: Palette.colorBlack,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ]),
              ),
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
                child: examState.isRequired
                    ? DefaultElevatedButton(
                        onPressed: _currentAnswerList.length !=
                                currentSubject.questions.length
                            ? null
                            : () => _submit(),
                        child: Text('제출하기'),
                      )
                    : DefaultElevatedButton(
                        onPressed: _currentAnswerList.length !=
                                currentSubject.questions.length
                            ? null
                            : () => {
                                  _nextSubject(),
                                  ref
                                      .read(examNotifierProvider.notifier)
                                      .setOptional(true),
                                  ref
                                      .read(examNotifierProvider.notifier)
                                      .setExamDone(),
                                },
                        child: Text('다음'),
                      ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
