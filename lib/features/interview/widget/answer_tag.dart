import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';

class AnswerTag extends StatelessWidget {
  const AnswerTag(
    this.isAnswered, {
    super.key,
  });
  final bool isAnswered;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: isAnswered ? context.appColors.primary : AppColors.colorGrey100,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(
        isAnswered ? '답변 완료 🎉' : '미답변',
        style: AppStyles.body03Regular(
          isAnswered ? context.appColors.onPrimary : AppColors.colorGrey800,
        ),
      ),
    );
  }
}
