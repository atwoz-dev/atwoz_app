import 'package:atwoz_app/app/widget/view/default_divider.dart';
import 'package:atwoz_app/features/notification/data/notification_model.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notification;

  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12.0,
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: RichText(
              text: TextSpan(
                children: [
                  if (notification.type is! GeneralNotificationType) ...[
                    TextSpan(
                      text: '${notification.senderName} ',
                      style: AppStyles.body02Regular(context.appColors.primary)
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: notification.describeType().replaceFirst(
                          '${notification.senderName} ',
                          ''), // senderName 이후 부분
                      style: AppStyles.body02Regular()
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ] else ...[
                    TextSpan(
                      text: notification.content!,
                      style: AppStyles.body02Regular()
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ],
              ),
            ),
          ),
          subtitle: Text(
            notification.formattedDate,
            style: AppStyles.body03Regular(AppColors.colorGrey400),
          ),
        ),
        const DefaultDivider(),
      ],
    );
  }
}
