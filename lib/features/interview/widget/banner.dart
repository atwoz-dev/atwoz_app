import 'package:atwoz_app/core/widgets/image/app_icon.dart';
import 'package:atwoz_app/core/widgets/text/mixed_bold_text.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/core/theme/theme.dart';

class BannerWidget extends StatelessWidget {
  final VoidCallback onClose;

  const BannerWidget({
    super.key,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        padding: const EdgeInsets.all(12.5),
        decoration: BoxDecoration(
          color: context.appColors.primary,
          borderRadius: AppDimens.buttonRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MixedBoldText(
              comment: '3가지 이상 작성해주시면 매칭 확률이 높아져요 👍',
              boldText: '3가지 이상',
              textStyle: AppStyles.body03Regular(context.appColors.onPrimary),
            ),
            GestureDetector(
              onTap: onClose,
              child: AppIcon(
                AppIcons.close,
                colorFilter: AppIcon.fillColor(context.appColors.onPrimary),
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
