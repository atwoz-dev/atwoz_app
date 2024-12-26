import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../theme/theme.dart';
import '../../utils/string_utils.dart';
import '../view/progress_indicator.dart';

class AppIcon extends ConsumerWidget {
  const AppIcon(
    this.icon, {
    this.padding = EdgeInsets.zero,
    this.size = AppDimens.iconSize,
    this.colorFilter,
    this.alignment = Alignment.center,
    this.fit = BoxFit.cover,
    super.key,
  }) : onPressed = null;

  const AppIcon.button(
    this.icon, {
    required this.onPressed,
    this.padding = EdgeInsets.zero,
    this.size = AppDimens.iconSize,
    this.colorFilter,
    this.alignment = Alignment.center,
    this.fit = BoxFit.cover,
    super.key,
  });

  final String? icon;

  final double? size;

  final BoxFit fit;

  final ColorFilter? colorFilter;

  final AlignmentGeometry alignment;

  final VoidCallback? onPressed;

  final EdgeInsetsGeometry padding;

  static ColorFilter fillColor(Color color) =>
      ColorFilter.mode(color, BlendMode.srcIn);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (icon?.isEmpty ?? true) {
      return SizedBox.square(
          dimension: size, child: const AppCircularProgressIndicator());
    }

    Widget? result;

    if (StringUtils.isURL(icon!)) {
      result = SvgPicture.network(
        icon!,
        width: size,
        height: size,
        alignment: alignment,
        fit: fit,
        colorFilter: colorFilter,
      );
    }

    result ??= SvgPicture.asset(
      icon!,
      width: size,
      height: size,
      alignment: alignment,
      fit: fit,
      colorFilter: colorFilter,
    );

    if (onPressed != null) {
      result = IconButton(
          alignment: alignment,
          padding: padding,
          onPressed: onPressed,
          icon: result);
    } else {
      result = Padding(padding: padding, child: result);
    }

    if (size != null) {
      result = SizedBox(
        width: size! + padding.horizontal,
        height: size! + padding.vertical,
        child: result,
      );
    }

    return result;
  }
}
