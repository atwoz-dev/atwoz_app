import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class DialogButton {
  const DialogButton({
    required this.label,
    required this.onTap,
  });

  final String label;
  final VoidCallback? onTap;
}

extension ConfirmDialogueX on BuildContext {
  Future<T?> showConfirmDialog<T>({
    required DialogButton submit,
    DialogButton? cancel,
    bool enabled = true,
    required bool enableCloseButton,
    required Widget child,
  }) async =>
      showDialog(
          context: this,
          builder: (_) => _ConfirmDialog(
                submit: submit,
                cancel: cancel ?? DialogButton(label: '취소', onTap: pop),
                enabled: enabled,
                visibleClose: enableCloseButton,
                child: child,
              ));

  Future<T?> showPrimaryConfirmDialog<T>({
    required DialogButton submit,
    bool enabled = true,
    required Widget child,
  }) async =>
      showDialog(
        context: this,
        builder: (_) => _ConfirmDialog(
          submit: submit,
          enabled: enabled,
          child: child,
        ),
      );
}

class _ConfirmDialog extends StatelessWidget {
  const _ConfirmDialog({
    required this.submit,
    this.cancel,
    required this.enabled,
    this.visibleClose = false,
    required this.child,
  });

  final DialogButton submit;
  final bool enabled;
  final DialogButton? cancel;
  final bool visibleClose;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 327.0),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (visibleClose)
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: context.pop,
                  child: const Icon(Icons.close, size: 24.0),
                ),
              ),
            child,
            const Gap(24.0),
            Row(
              spacing: 8.0,
              children: [
                if (cancel != null)
                  Expanded(
                    child: DefaultElevatedButton(
                      onPressed: cancel!.onTap,
                      primary: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      border: const BorderSide(color: Color(0xffE1E1E1)),
                      child: Text(
                        cancel!.label,
                        style: Fonts.body02Medium().copyWith(
                          fontWeight: FontWeight.w400,
                          color: Palette.colorBlack,
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: DefaultElevatedButton(
                    onPressed: enabled ? submit.onTap : null,
                    primary: Palette.colorPrimary500,
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      submit.label,
                      style: Fonts.body02Medium().copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
