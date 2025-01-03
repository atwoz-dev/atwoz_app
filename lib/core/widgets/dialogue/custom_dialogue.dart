import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';
import 'package:atwoz_app/core/widgets/button/app_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomDialogue extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  final String content;
  final TextStyle? contentStyle;
  final String outlineButtonText;
  final Color? outlinedButtonTextColor;
  final Color? outlinedButtonTextBorderColor;
  final String? elevatedButtonText;
  final Color? elevatedButtonTextColor;
  final Color? elevatedButtonColor;
  final VoidCallback? onOutlinedButtonPressed;
  final VoidCallback onElevatedButtonPressed;

  const CustomDialogue({
    super.key,
    this.title,
    this.titleStyle,
    required this.content,
    this.contentStyle,
    this.outlineButtonText = '취소',
    this.outlinedButtonTextColor,
    this.outlinedButtonTextBorderColor,
    this.elevatedButtonText = '확인',
    this.elevatedButtonTextColor,
    this.elevatedButtonColor,
    this.onOutlinedButtonPressed,
    required this.onElevatedButtonPressed,
  });

  static Future<void> showTwoChoiceDialogue({
    required BuildContext context,
    String? title,
    TextStyle? titleStyle,
    required String content,
    TextStyle? contentStyle,
    String outlineButtonText = '취소',
    Color? outlinedButtonTextColor,
    Color? outlinedButtonTextBorderColor,
    String? elevatedButtonText = '확인',
    Color? elevatedButtonTextColor,
    Color? elevatedButtonColor,
    VoidCallback? onOutlinedButtonPressed,
    required VoidCallback onElevatedButtonPressed,
  }) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialogue(
          title: title,
          titleStyle: titleStyle,
          content: content,
          contentStyle: contentStyle,
          outlineButtonText: outlineButtonText,
          outlinedButtonTextColor: outlinedButtonTextColor,
          outlinedButtonTextBorderColor: outlinedButtonTextBorderColor,
          elevatedButtonText: elevatedButtonText,
          elevatedButtonTextColor: elevatedButtonTextColor,
          elevatedButtonColor: elevatedButtonColor,
          onOutlinedButtonPressed:
              onOutlinedButtonPressed ?? () => Navigator.of(context).pop(),
          onElevatedButtonPressed: onElevatedButtonPressed,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: context.screenWidth * 0.9,
        padding: EdgeInsets.all(context.screenWidth * 0.05),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (title != null)
              Text(
                title!,
                style: titleStyle ??
                    AppStyles.header03().copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            if (title != null) const Gap(12),
            Text(
              content,
              style: contentStyle ?? AppStyles.body01Regular(),
              textAlign: TextAlign.center,
            ),
            const Gap(16),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: AppOutlinedButton(
                    primary:
                        outlinedButtonTextBorderColor ?? AppColors.colorGrey200,
                    textColor:
                        outlinedButtonTextColor ?? context.appColors.onSurface,
                    height: 35,
                    onPressed: onOutlinedButtonPressed,
                    child: Text(outlineButtonText),
                  ),
                ),
                const Gap(8),
                Expanded(
                  flex: 1,
                  child: AppElevatedButton(
                    height: 35,
                    primary: elevatedButtonColor ?? context.appColors.primary,
                    onPressed: onElevatedButtonPressed,
                    child: Text(
                      elevatedButtonText!,
                      style: TextStyle(
                        color: elevatedButtonTextColor ??
                            context.appColors.onPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
