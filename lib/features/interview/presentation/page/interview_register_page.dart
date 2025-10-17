import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/widget/button/default_text_button.dart';
import 'package:atwoz_app/app/widget/dialogue/dialogue.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/app/widget/view/default_divider.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/features/interview/interview.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/constants/constants.dart';

class InterviewRegisterPage extends ConsumerStatefulWidget {
  final String question;
  final String answer;
  final int currentTabIndex;
  final int? answerId;
  final int? questionId;
  final bool isAnswered;

  const InterviewRegisterPage({
    super.key,
    required this.question,
    required this.answer,
    required this.currentTabIndex,
    required this.answerId,
    required this.questionId,
    required this.isAnswered,
  });

  @override
  InterviewRegisterPageState createState() => InterviewRegisterPageState();
}

class InterviewRegisterPageState extends ConsumerState<InterviewRegisterPage> {
  final TextEditingController _inputContentController = TextEditingController();

  @override
  void dispose() {
    _inputContentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(interviewRepositoryProvider);

    return Scaffold(
      appBar: DefaultAppBar(
        title: '인터뷰 답변하기',
        actions: [
          DefaultTextButton(
            primary: Palette.colorGrey500,
            child: Text(widget.isAnswered ? '수정' : '등록'),
            onPressed: () {
              CustomDialogue.showTwoChoiceDialogue(
                  context: context,
                  content: '작성된 내용을 저장합니다',
                  elevatedButtonText: '확인',
                  onElevatedButtonPressed: () async {
                    try {
                      if (widget.isAnswered) {
                        await ref
                            .read(interviewProvider.notifier)
                            .addAnswer(
                              widget.answerId ?? 0,
                              _inputContentController.text.trim(),
                            );
                      } else {
                        await ref
                            .read(interviewProvider.notifier)
                            .addAnswer(
                              widget.questionId ?? 0,
                              _inputContentController.text.trim(),
                            );
                      }
                      navigate(
                        context,
                        route: AppRoute.mainTab,
                        method: NavigationMethod.go,
                      );
                    } catch (e) {
                      showToastMessage('저장에 실패했습니다.');
                    }
                  });
            },
          )
        ],
        leadingAction: (context) {
          CustomDialogue.showTwoChoiceDialogue(
              context: context,
              content: '이 페이지를 벗어나면\n작성된 내용은 저장되지 않습니다.',
              onElevatedButtonPressed: () {
                navigate(
                  context,
                  route: AppRoute.mainTab,
                  method: NavigationMethod.go,
                );
              });
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Text(
              widget.question,
              style: Fonts.body01Medium(),
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: DefaultDivider()),
          Expanded(
            child: DefaultTextFormField(
              autofocus: true,
              initialValue: widget.answer,
              controller: _inputContentController,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              textAlignVertical: TextAlignVertical.top,
              maxLines: null,
              expands: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
              maxLength: 1000,
              showCharacterCount: true,
              hintText:
                  '인터뷰 답변을 작성해주세요\n\n솔직하고 진심 어린 생각을 담아 답변해주시면,\n인터뷰를 읽는 분들도 깊게 공감할 수 있어요',
            ),
          )
        ],
      ),
    );
  }
}
