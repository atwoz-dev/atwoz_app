import 'package:atwoz_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText(
      {super.key,
      required this.title,
      this.textStyle,
      this.textColor,
      this.fontWeight});

  final String title;
  final TextStyle? textStyle;
  final Color? textColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle ??
          AppStyles.header01().copyWith(
              fontWeight: fontWeight ?? FontWeight.w900, color: textColor),
    );
  }
}
