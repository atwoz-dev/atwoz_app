import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/button/default_outlined_button.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomReturnDialogue extends StatelessWidget {
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

  const CustomReturnDialogue({
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

  /// #### return 값
  ///
  /// null : 백그라운드 터치로 Dialoue 닫음
  ///
  /// false : 취소 버튼 누름
  ///
  /// true : 확인 버튼 누름
  static Future<bool?> showTwoChoiceDialogue({
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
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return CustomReturnDialogue(
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
              onOutlinedButtonPressed ?? () => Navigator.of(context).pop(true),
          onElevatedButtonPressed: () {
            onElevatedButtonPressed();
            Navigator.of(context).pop(true);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: context.screenWidth * 0.9,
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (title != null)
              Text(
                title!,
                style:
                    titleStyle ??
                    Fonts.header03().copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            if (title != null) const Gap(12),
            Text(
              content,
              style:
                  contentStyle ?? Fonts.body01Regular().copyWith(height: 1.2),
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: DefaultOutlinedButton(
                    primary:
                        outlinedButtonTextBorderColor ?? Palette.colorGrey200,
                    textColor:
                        outlinedButtonTextColor ?? context.palette.onSurface,
                    height: 44,
                    onPressed: onOutlinedButtonPressed,
                    child: Text(
                      outlineButtonText,
                      style: Fonts.body02Regular(),
                    ),
                  ),
                ),
                const Gap(8),
                Expanded(
                  flex: 1,
                  child: DefaultElevatedButton(
                    height: 44,
                    primary: elevatedButtonColor ?? context.palette.primary,
                    onPressed: onElevatedButtonPressed,
                    child: Text(
                      elevatedButtonText!,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color:
                            elevatedButtonTextColor ??
                            context.palette.onPrimary,
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
