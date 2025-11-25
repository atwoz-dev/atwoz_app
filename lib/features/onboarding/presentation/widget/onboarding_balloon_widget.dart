import 'package:flutter/material.dart';

class OnboardingBalloonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle? textStyle;

  const OnboardingBalloonWidget({
    super.key,
    required this.text,
    required this.color,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 35),
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(80),
      ),
      child: Text(
        text,
        style:
            textStyle ??
            const TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 20,
            ),
      ),
    );
  }
}
