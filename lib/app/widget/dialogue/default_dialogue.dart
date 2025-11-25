import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DefaultDialog extends StatelessWidget {
  const DefaultDialog({
    super.key,
    this.title,
    this.content,
    this.action,
    this.dialogWidth,
  });

  final Widget? title;
  final Widget? content;
  final Widget? action;
  final double? dialogWidth;

  const DefaultDialog.common({
    super.key,
    this.title,
    this.content,
    this.action,
    this.dialogWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: dialogWidth ?? context.screenWidth * 0.9,
        padding: EdgeInsets.all(context.screenWidth * 0.05),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null) ...[title!, const Gap(12)],
            if (content != null) content!,
            if (action != null) ...[const Gap(16), action!],
          ],
        ),
      ),
    );
  }
}
