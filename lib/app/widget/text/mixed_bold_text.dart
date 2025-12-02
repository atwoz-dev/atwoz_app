import 'package:deepple_app/app/constants/fonts.dart';
import 'package:flutter/material.dart';

class MixedBoldText extends StatelessWidget {
  final String comment; // 말풍선 텍스트
  final String? boldText; // bold 처리할 텍스트
  final TextStyle? textStyle;

  const MixedBoldText({
    super.key,
    required this.comment,
    this.boldText,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    // 텍스트 스타일 기본값
    final TextStyle defaultStyle = textStyle ?? Fonts.body03Regular();
    final TextStyle boldStyle = defaultStyle.copyWith(
      fontWeight: FontWeight.bold,
    );

    if (boldText != null && comment.contains(boldText!)) {
      final parts = comment.split(boldText!);
      return RichText(
        text: TextSpan(
          text: parts[0],
          style: defaultStyle,
          children: [
            TextSpan(text: boldText, style: boldStyle),
            if (parts.length > 1) TextSpan(text: parts[1], style: defaultStyle),
          ],
        ),
      );
    } else {
      return Text(comment, style: defaultStyle);
    }
  }
}
