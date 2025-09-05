import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/exam/domain/provider/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamResultPage extends ConsumerStatefulWidget {
  const ExamResultPage({super.key});

  @override
  ExamResultPageState createState() => ExamResultPageState();
}

class ExamResultPageState extends ConsumerState<ExamResultPage> {
  void _showTwoChoiceDialogue() {
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

  @override
  Widget build(BuildContext context) {
    final examState = ref.watch(examNotifierProvider);

    return Scaffold(
      appBar: DefaultAppBar(
        title: examState.isRequired ? '매칭 현황' : '매칭 결과',
        leadingAction: (context) => _showTwoChoiceDialogue(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: examState.isRequired
            ? DefaultElevatedButton(
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.examQuestion,
                  );
                },
                child: Text('다음과목 이어서 풀기'),
              )
            : examState.isDone
                ? DefaultElevatedButton(
                    onPressed: () => {
                      navigate(
                        context,
                        route: AppRoute.home,
                      )
                    },
                    child: Text('연애 모의고사 종료하기'),
                  )
                : DefaultElevatedButton(
                    onPressed: () => {
                      ref
                          .read(examNotifierProvider.notifier)
                          .resetCurrentSubjectIndex(),
                      ref
                          .read(examNotifierProvider.notifier)
                          .fetchOptionalQuestionList(),
                      navigate(
                        context,
                        route: AppRoute.examQuestion,
                      )
                    },
                    child: Text('선택과목 풀기'),
                  ),
      ),
    );
  }
}
