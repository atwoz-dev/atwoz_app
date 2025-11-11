import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class DialogButton {
  const DialogButton({required this.label, required this.onTap});

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
    required double buttonVerticalPadding,
  }) async => showDialog(
    barrierColor: Colors.transparent,
    useSafeArea: false,
    context: this,
    builder:
        (_) => _ConfirmDialog(
          submit: submit,
          cancel: cancel ?? DialogButton(label: '취소', onTap: pop),
          enabled: enabled,
          visibleClose: enableCloseButton,
          buttonVerticalPadding: buttonVerticalPadding,

          child: child,
        ),
  );

  Future<T?> showPrimaryConfirmDialog<T>({
    required DialogButton submit,
    bool enabled = true,
    required Widget child,
    required double buttonVerticalPadding,
  }) async => showDialog(
    barrierColor: Colors.transparent,
    useSafeArea: false,
    context: this,
    builder:
        (_) => _ConfirmDialog(
          submit: submit,
          enabled: enabled,
          buttonVerticalPadding: buttonVerticalPadding,
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
    required this.buttonVerticalPadding,
  });

  final DialogButton submit;
  final bool enabled;
  final DialogButton? cancel;
  final bool visibleClose;
  final Widget child;
  final double buttonVerticalPadding; // 버튼 세로 여백 설정

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff404040).withValues(alpha: 0.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.fromLTRB(12, 32, 12, 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Column(
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
                const Gap(24),
                Row(
                  spacing: 8,
                  children: [
                    if (cancel != null)
                      Expanded(
                        child: DefaultElevatedButton(
                          onPressed: cancel!.onTap,
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                            vertical: buttonVerticalPadding,
                          ),
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
                        padding: EdgeInsets.symmetric(
                          vertical: buttonVerticalPadding,
                        ),
                        child: Text(
                          submit.label,
                          style: Fonts.body02Medium().copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
