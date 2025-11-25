import 'package:atwoz_app/app/constants/dimens.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CommonButtonGroup extends StatelessWidget {
  factory CommonButtonGroup({
    required VoidCallback onCancel,
    required VoidCallback onSubmit,
    required String cancelLabel,
    required String submitLabel,
    bool enabledSubmit = true,
    List<int> weights = const [1, 1],
  }) => CommonButtonGroup.custom(
    onCancel: onCancel,
    onSubmit: onSubmit,
    cancel: Text(cancelLabel),
    submit: Text(submitLabel),
    enabledSubmit: enabledSubmit,
    weights: weights,
  );

  const CommonButtonGroup.custom({
    super.key,
    required this.onCancel,
    required this.onSubmit,
    required this.cancel,
    required this.submit,
    this.enabledSubmit = true,
    this.weights = const [1, 1],
  }) : assert(weights.length == 2, '[weights] must be provided in two.');

  final VoidCallback onSubmit;
  final Widget submit;
  final VoidCallback onCancel;
  final Widget cancel;
  final bool enabledSubmit;
  final List<int> weights;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Fonts.body02Medium(),
      child: Row(
        children: [
          Expanded(
            flex: weights.first,
            child: CommonSecondaryButton(onCancel: onCancel, cancel: cancel),
          ),
          const Gap(8.0),
          Expanded(
            flex: weights.last,
            child: CommonPrimaryButton(
              onSubmit: onSubmit,
              enabled: enabledSubmit,
              submit: submit,
            ),
          ),
        ],
      ),
    );
  }
}

class CommonPrimaryButton extends StatelessWidget {
  const CommonPrimaryButton({
    super.key,
    required this.onSubmit,
    required this.submit,
    this.enabled = true,
  });

  final VoidCallback onSubmit;
  final Widget submit;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return DefaultElevatedButton(
      borderRadius: Dimens.buttonRadius,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      onPressed: enabled ? onSubmit : null,
      child: submit,
    );
  }
}

class CommonSecondaryButton extends StatelessWidget {
  const CommonSecondaryButton({
    super.key,
    required this.onCancel,
    required this.cancel,
  });

  final VoidCallback onCancel;
  final Widget cancel;

  @override
  Widget build(BuildContext context) {
    return DefaultOutlinedButton(
      primary: context.colorScheme.outline,
      textColor: context.colorScheme.secondary,
      borderRadius: Dimens.buttonRadius,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      onPressed: onCancel,
      child: cancel,
    );
  }
}
