import 'package:atwoz_app/core/widgets/image/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/button/app_outlined_button.dart';
import 'package:gap/gap.dart';

class EmptyNotificationView extends StatelessWidget {
  final VoidCallback onSettingsPressed;

  const EmptyNotificationView({super.key, required this.onSettingsPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppIcon(
            AppIcons.frowningFace,
            size: 48,
          ),
          Gap(16),
          Text(
            '아직 받은 알람이 없어요\n새로운 알람을 받을 수 있도록 설정하시겠어요?',
            textAlign: TextAlign.center,
            style: AppStyles.body02Regular(),
          ),
          const Gap(32),
          AppOutlinedButton(
            onPressed: onSettingsPressed,
            child: const Text('알람 설정하러 가기'),
          ),
        ],
      ),
    );
  }
}
