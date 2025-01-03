import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';
import 'package:atwoz_app/core/widgets/button/app_outlined_button.dart';
import 'package:atwoz_app/core/widgets/input/app_text_form_field.dart';
import 'package:atwoz_app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:atwoz_app/core/widgets/dialogue/default_dialogue.dart';

class AnswerDialogue extends StatefulWidget {
  final String questionTitle;
  final TextEditingController answerController;
  final VoidCallback onSave;
  final String? title;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? initialValue;

  const AnswerDialogue({
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
  State<AnswerDialogue> createState() => _AnswerDialogueState();

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
        return AnswerDialogue(
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

class _AnswerDialogueState extends State<AnswerDialogue> {
  bool _isActive = false;

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
    setState(() {
      _isActive = widget.answerController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultDialog.common(
      title: widget.title != null
          ? Align(
              alignment: Alignment.center,
              child: Text(
                widget.title!,
                style: AppStyles.body03Regular(),
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
                AppStyles.body01Regular().copyWith(fontWeight: FontWeight.bold),
          ),
          const Gap(16),
          AppTextFormField(
            initialValue: widget.initialValue,
            style: AppStyles.body03Regular(context.appColors.onSurface),
            controller: widget.answerController,
            hintText: widget.hintText,
            hintStyle: widget.hintStyle ??
                AppStyles.body02Regular(AppColors.colorGrey600),
            maxLines: 5,
            minLines: 5,
            border: OutlineInputBorder(
              borderRadius: AppDimens.buttonRadius,
              borderSide: BorderSide(
                color: AppColors.colorGrey100,
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
            child: AppOutlinedButton(
              primary: AppColors.colorGrey200,
              textColor: context.appColors.onSurface,
              height: 35,
              onPressed: () {
                pop(context);
                widget.answerController.clear();
              },
              child: const Text('닫기'),
            ),
          ),
          const Gap(8),
          Expanded(
            flex: 7,
            child: AppElevatedButton(
              height: 35,
              primary: _isActive
                  ? context.appColors.primary
                  : AppColors.colorGrey200,
              onPressed: _isActive ? widget.onSave : null,
              child: Text(
                '저장',
                // style: AppStyles.body03Regular(_isActive?context.appColors.onPrimary:
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
