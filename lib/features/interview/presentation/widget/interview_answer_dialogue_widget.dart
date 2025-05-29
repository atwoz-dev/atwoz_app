import 'package:atwoz_app/core/state/base_widget_state.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InterviewAnswerDialogueWidget extends StatefulWidget {
  final String questionTitle;
  final TextEditingController answerController;
  final VoidCallback onSave;
  final String? title;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? initialValue;

  const InterviewAnswerDialogueWidget({
    super.key,
    required this.questionTitle,
    required this.answerController,
    required this.onSave,
    this.title,
    this.hintText,
    this.hintStyle,
    this.initialValue,
  });

  @override
  State<InterviewAnswerDialogueWidget> createState() =>
      _InterviewAnswerDialogueWidgetState();

  static Future<void> showAnswerFormDialog({
    required BuildContext context,
    required String questionTitle,
    required TextEditingController answerController,
    required VoidCallback onSave,
    String? title,
    String? hintText,
    TextStyle? hintStyle,
    String? initialValue,
  }) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return InterviewAnswerDialogueWidget(
          questionTitle: questionTitle,
          answerController: answerController,
          onSave: onSave,
          title: title,
          hintText: hintText,
          hintStyle: hintStyle,
          initialValue: initialValue,
        );
      },
    );
  }
}

class _InterviewAnswerDialogueWidgetState
    extends AppBaseWidgetState<InterviewAnswerDialogueWidget> {
  bool _isActive = false;
  double opacity = 1;

  @override
  void initState() {
    super.initState();
    _isActive = widget.answerController.text.isNotEmpty;
    widget.answerController.addListener(_updateActiveState);
  }

  @override
  void dispose() {
    widget.answerController.removeListener(_updateActiveState);
    super.dispose();
  }

  void _updateActiveState() {
    safeSetState(() {
      _isActive = widget.answerController.text.isNotEmpty;
    });
  }

  void _showConfirmationDialog(BuildContext context) {
    safeSetState(() {
      opacity = 0; // Answer 다이얼로그 투명화
    });

    CustomDialogue.showTwoChoiceDialogue(
      context: context,
      content: '이 페이지를 벗어나면 작성된 내용은\n저장되지 않습니다.',
      outlineButtonText: '머무르기',
      onOutlinedButtonPressed: () {
        pop(context); // CustomDialogue 닫기
        safeSetState(() {
          opacity = 1; // Answer 다이얼로그를 다시 활성화
        });
      },
      elevatedButtonText: '확인',
      elevatedButtonTextColor: palette.onSurface,
      elevatedButtonColor: Palette.colorGrey200,
      onElevatedButtonPressed: () {
        if (widget.initialValue != null) {
          widget.answerController.text = widget.initialValue!;
        } else {
          widget.answerController.clear(); // 작성된 내용 초기화
        }
        pop(context); // CustomDialogue 닫기
        pop(context); //  InterviewAnswerDialogueWidget 닫기
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: DefaultDialog.common(
        title: widget.title != null
            ? Align(
                alignment: Alignment.center,
                child: Text(
                  widget.title!,
                  style: Fonts.body03Regular(),
                ),
              )
            : null,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.questionTitle,
              textAlign: TextAlign.center,
              style:
                  Fonts.body01Regular().copyWith(fontWeight: FontWeight.bold),
            ),
            const Gap(16),
            DefaultTextFormField(
              initialValue: widget.initialValue,
              style: Fonts.body03Regular(palette.onSurface),
              controller: widget.answerController,
              hintText: widget.hintText,
              hintStyle:
                  widget.hintStyle ?? Fonts.body02Regular(Palette.colorGrey600),
              maxLines: 5,
              minLines: 5,
              border: OutlineInputBorder(
                borderRadius: Dimens.buttonRadius,
                borderSide: BorderSide(
                  color: Palette.colorGrey100,
                  width: 2.0,
                ),
              ),
            ),
          ],
        ),
        action: Row(
          children: [
            Expanded(
              flex: 3,
              child: DefaultOutlinedButton(
                textStyle: Fonts.body02Medium(),
                primary: Palette.colorGrey200,
                textColor: palette.onSurface,
                height: 35,
                onPressed: () {
                  if (_isActive) {
                    _showConfirmationDialog(context);
                  } else {
                    pop(context); // 단순히 다이얼로그 닫기
                  }
                },
                child: const Text('닫기'),
              ),
            ),
            const Gap(8),
            Expanded(
              flex: 7,
              child: DefaultElevatedButton(
                textStyle: Fonts.body02Regular(),
                height: 35,
                primary: _isActive ? palette.primary : Palette.colorGrey200,
                onPressed: _isActive ? widget.onSave : null,
                child: Text(
                  '저장',
                  // style: Fonts.body03Regular(_isActive?palette.onPrimary:
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
