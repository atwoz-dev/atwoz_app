import 'package:atwoz_app/app/constants/dimens.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/error/dialogue_error.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    super.key,
    required this.error,
    required this.onConfirm,
  });

  final DialogueErrorType error;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: Dimens.dialogPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.error_outline,
              size: 48,
              color: context.colorScheme.error,
            ),
            const Gap(16),
            Text(
              error.label,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Gap(24),
            DefaultElevatedButton(
              borderRadius: Dimens.buttonRadius,
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              onPressed: onConfirm,
              child: const Text('확인'),
            ),
          ],
        ),
      ),
    );
  }

  static Future<void> open(
    BuildContext context, {
    required DialogueErrorType error,
    required VoidCallback onConfirm,
  }) =>
      showDialog<bool>(
        context: context,
        builder: (context) => ErrorDialog(
          error: error,
          onConfirm: onConfirm,
        ),
      );
}
