import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:gap/gap.dart';

class ExamRequiredResultPage extends ConsumerStatefulWidget {
  const ExamRequiredResultPage({super.key});

  @override
  ExamResultPageState createState() => ExamResultPageState();
}

class ExamResultPageState extends ConsumerState<ExamRequiredResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(
          title: '매칭 현황',
          leadingAction: (context) => {
            CustomDialogue.showTwoChoiceDialogue(
                context: context,
                content: '연애 모의고사를 종료 하시겠어요?\n페이지를 벗어날경우, 저장되지 않아요',
                onElevatedButtonPressed: () {
                  navigate(
                    context,
                    route: AppRoute.home,
                  );
                }),
          },
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: DefaultElevatedButton(
              primary: Palette.colorGrey100,
              onPressed: () => Navigator.of(context).pop(),
              child: Text('다음과목 이어서 풀기'),
            )));
  }
}
