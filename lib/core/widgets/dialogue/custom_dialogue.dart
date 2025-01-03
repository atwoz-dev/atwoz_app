import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';
import 'package:atwoz_app/core/widgets/button/app_outlined_button.dart';
import 'package:atwoz_app/core/widgets/input/app_text_form_field.dart';
import 'package:atwoz_app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:atwoz_app/core/widgets/dialogue/default_dialogue.dart';

class CustomDialog {
  static Future<void> showAnswerFormDialog({
    required BuildContext context,
    required String questionTitle,
    required TextEditingController answerController,
    required VoidCallback onSave,
    String? title,
    String? hintText,
    TextStyle? hintStyle,
  }) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return DefaultDialog.common(
          title: title != null
              ? Align(
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: AppStyles.body03Regular(),
                  ),
                )
              : null,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                questionTitle,
                textAlign: TextAlign.center,
                style: AppStyles.body01Regular()
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const Gap(16),
              AppTextFormField(
                style: AppStyles.body03Regular(context.appColors.onSurface),
                controller: answerController,
                hintText: hintText,
                hintStyle: hintStyle ??
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
              )
            ],
          ),
          action: Row(
            children: [
              Expanded(
                flex: 3,
                child: AppOutlinedButton(
                  primary: AppColors.colorGrey100,
                  textColor: context.appColors.onSurface,
                  height: 35,
                  onPressed: () => pop(context),
                  child: const Text('닫기'),
                ),
              ),
              const Gap(8),
              Expanded(
                flex: 7,
                child: AppElevatedButton(
                  height: 35,
                  onPressed: onSave,
                  child: const Text('저장'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
