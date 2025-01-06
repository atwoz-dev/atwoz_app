import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../view/progress_indicator.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.padding = AppDimens.buttonPadding,
    this.primary,
    this.backgroundColor,
    this.expandedWidth = false,
    this.isLoading = false,
    this.alignment,
    this.height = AppDimens.buttonHeight,
    this.width = 0.0,
    this.borderRadius = AppDimens.buttonRadius,
    this.borderWidth = 2.0,
    this.textStyle,
    this.textColor,
  });

  final Widget child;
  final Color? primary;
  final Color? textColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;
  final bool expandedWidth;
  final AlignmentGeometry? alignment;
  final bool isLoading;
  final double height;
  final double width;
  final BorderRadiusGeometry borderRadius;
  final double borderWidth;
  final TextStyle? textStyle;
  bool get isDisabled => onPressed == null;

  @override
  Widget build(BuildContext context) {
    final Color foregroundColor = primary ?? context.appColors.primary;
    final Color disabledForegroundColor = foregroundColor.withOpacity(0.4);

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor ?? foregroundColor,
        disabledForegroundColor: disabledForegroundColor,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: padding,
        side: BorderSide(
          color: isDisabled ? disabledForegroundColor : foregroundColor,
          width: borderWidth,
        ),
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        textStyle: textStyle ?? AppStyles.body01Medium(),
        minimumSize: Size(
          expandedWidth ? double.infinity : width,
          height,
        ),
        alignment: alignment,
      ),
      onPressed: isLoading ? null : onPressed,
      onLongPress: isLoading ? null : onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      child: AnimatedSize(
        duration: AppParams.animationDurationFast,
        curve: Curves.fastOutSlowIn,
        child: isLoading
            ? SizedBox(
                height: height - padding.vertical,
                child: FittedBox(
                  child: AppCircularProgressIndicator(color: foregroundColor),
                ),
              )
            : child,
      ),
    );
  }
}
