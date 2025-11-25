import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/message_list/domain/domain.dart';
import 'package:flutter/material.dart';

class MessageListItem extends StatelessWidget {
  const MessageListItem({
    super.key,
    required this.message,
    required this.onTap,
  });

  final MessageSummary message;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      position: DecorationPosition.foreground,
      decoration: BoxDecoration(
        border: Border(
          bottom: Divider.createBorderSide(
            context,
            color: context.colorScheme.outline,
          ),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 20.0,
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.0,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(message.profileUrl),
              radius: 32.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 4.0,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(message.name, style: Fonts.body01Medium()),
                      Text(
                        DateTimeFormatter.summaryConvert.format(
                          message.createdAt.toLocal(),
                        ),
                        style: Fonts.body02Regular(
                          context.colorScheme.onSurface.withAlpha(80),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    message.content,
                    style: Fonts.body02Regular(
                      context.colorScheme.onSurface.withAlpha(150),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
