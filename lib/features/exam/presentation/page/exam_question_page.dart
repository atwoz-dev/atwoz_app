import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamQuestionPage extends ConsumerStatefulWidget {
  const ExamQuestionPage({super.key});

  @override
  ExamQuestionPageState createState() => ExamQuestionPageState();
}

class ExamQuestionPageState extends ConsumerState<ExamQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(
      title: '가치관',
      leadingAction: (context) => {
        CustomDialogue.showTwoChoiceDialogue(
            context: context,
            content: '연애 모의고사를 종료 하시겠어요?\n페이지를 벗어날경우, 저장되지 않아요',
            onElevatedButtonPressed: () {
              navigate(
                context,
                route: AppRoute.home,
              );
            })
      },
    ));
  }
}
