import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/text/mixed_bold_text.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';

class InterviewBannerWidget extends StatelessWidget {
  final VoidCallback onClose;

  const InterviewBannerWidget({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        padding: const EdgeInsets.all(12.5),
        decoration: BoxDecoration(
          color: context.palette.primary,
          borderRadius: Dimens.buttonRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MixedBoldText(
              comment: '3가지 이상 작성해주시면 매칭 확률이 높아져요 👍',
              boldText: '3가지 이상',
              textStyle: Fonts.body03Regular(context.palette.onPrimary),
            ),
            GestureDetector(
              onTap: onClose,
              child: DefaultIcon(
                IconPath.close,
                colorFilter: DefaultIcon.fillColor(context.palette.onPrimary),
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
