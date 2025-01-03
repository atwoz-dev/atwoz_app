import 'package:flutter/material.dart';
import 'package:atwoz_app/core/theme/theme.dart';
import 'package:gap/gap.dart';

class AnswerTag extends StatelessWidget {
  const AnswerTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.colorGrey100,
        borderRadius: AppDimens.buttonRadius,
      ),
      child: Text(
        '미답변',
        style: AppStyles.body03Regular(AppColors.colorGrey800),
      ),
    );
  }
}
