import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';
import 'package:flutter/material.dart';
import '../../../core/extension/context_extension.dart';
import '../../../core/theme/app_fonts.dart';

class AuthPrimaryButton extends StatelessWidget {
  const AuthPrimaryButton({
    super.key,
    required this.text,
    required this.onClick,
    required this.isLoading,
    this.width,
    this.height,
    this.primary,
    this.style,
  });

  final String text;
  final VoidCallback onClick;
  final bool isLoading;
  final double? width;
  final double? height;
  final Color? primary;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final color = context.appColors.onSurface;
    return AppElevatedButton(
      borderRadius: BorderRadius.circular(20),
      height: context.screenHeight * 0.07,
      expandedWidth: true,
      isLoading: isLoading,
      onPressed: () {
        FocusScope.of(context).unfocus();
        onClick();
      },
      primary: primary ?? color,
      child: Text(
        text,
        style: style ?? AppStyles.body01Medium(),
      ),
    );
  }
}
