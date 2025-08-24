import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/widget/view/default_divider.dart';
import 'package:atwoz_app/features/notification/data/dto/notification_response.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';

class NotificationCardWidget extends StatelessWidget {
  final NotificationModel notification;

  const NotificationCardWidget({super.key, required this.notification});

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
                  if (notification.type
                      is! GeneralNotificationListItemType) ...[
                    TextSpan(
                      text: '${notification.senderName} ',
                      style: Fonts.body02Regular(context.palette.primary)
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: notification.describeType().replaceFirst(
                          '${notification.senderName} ',
                          ''), // senderName 이후 부분
                      style: Fonts.body02Regular()
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ] else ...[
                    TextSpan(
                      text: notification.content!,
                      style: Fonts.body02Regular()
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ],
              ),
            ),
          ),
          subtitle: Text(
            notification.formattedDate,
            style: Fonts.body03Regular(Palette.colorGrey400),
          ),
        ),
        const DefaultDivider(),
      ],
    );
  }
}
