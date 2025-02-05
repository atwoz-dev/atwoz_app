import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/features/profile/presentation/widget/common_button_group.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ContactRegistrationDialog extends StatelessWidget {
  const ContactRegistrationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: Dimens.dialogPadding,
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: Dimens.dialogRadius,
        ),
        constraints: BoxConstraints(maxWidth: context.screenWidth * .8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('연락처 등록', style: Fonts.header03()),
            const Gap(16.0),
            Text(
              '연락처 등록이 안되었네요!\n'
              '상대방에게 메시지를 보내기 위해서는\n'
              '최초 1회 등록이 필요해요',
              textAlign: TextAlign.center,
              style: Fonts.body02Medium(
                context.colorScheme.tertiary,
              ),
            ),
            const Gap(24.0),
            CommonButtonGroup(
              onCancel: () => context.pop(false),
              onSubmit: () async {
                final registerSuccess = await navigate<bool>(
                  context,
                  route: AppRoute.contactSetting,
                );
                if (!context.mounted || !(registerSuccess ?? false)) {
                  return;
                }
                context.pop<bool>(registerSuccess);
                // TODO(Han): 후처리 방법 고안
              },
              cancelLabel: '취소',
              submitLabel: '등록하러 가기',
              weights: const [5, 8],
            ),
          ],
        ),
      ),
    );
  }

  static Future<bool?> open(BuildContext context) => showDialog<bool>(
        context: context,
        builder: (context) => const ContactRegistrationDialog(),
      );
}
