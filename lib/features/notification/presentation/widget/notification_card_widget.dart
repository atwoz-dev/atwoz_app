import 'package:atwoz_app/app/widget/view/default_divider.dart';
import 'package:atwoz_app/features/notification/data/dto/notification_response.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';

class NotificationCardWidget extends StatelessWidget {
  final NotificationModel notification;
  final VoidCallback onTap;

  const NotificationCardWidget({
    super.key,
    required this.notification,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                notification.title,
                style:
                    Fonts.body02Regular().copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(
              notification.content,
              style: Fonts.body03Regular(Palette.colorGrey400),
            ),
          ),
          const DefaultDivider(),
        ],
      ),
    );
  }
}
