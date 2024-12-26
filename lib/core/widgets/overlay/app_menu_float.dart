import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import 'app_overlay.dart';

class AppMenuFloat extends AppOverlay {
  const AppMenuFloat({
    super.key,
    super.controller,
    this.width = 300,
    this.margin,
    this.padding,
    this.clipBehavior = Clip.hardEdge,
    this.decoration,
    this.focusNode,
    required this.menuView,
    required super.child,
  });

  final double width;
  final EdgeInsetsGeometry? margin, padding;
  final Clip clipBehavior;
  final Decoration? decoration;
  final FocusNode? focusNode;
  final Widget menuView;

  @override
  State<AppMenuFloat> createState() => _AppMenuFloatState();
}

class _AppMenuFloatState extends AppOverlayState<AppMenuFloat>
    with AppOverlayUseFocusNode {
  @override
  FocusNode get effectiveFocusNode =>
      widget.focusNode ?? super.effectiveFocusNode;

  @override
  bool get preferBelow => true;

  @override
  Widget buildOverlay(BuildContext context, Offset target, Widget? overlay) {
    overlay = Container(
      width: widget.width,
      padding: widget.padding,
      margin: widget.margin,
      clipBehavior: widget.clipBehavior,
      decoration: widget.decoration ??
          BoxDecoration(
              color: context.appColors.surface,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 20,
                  color: context.appColors.onSurface.withOpacity(0.102),
                )
              ]),
      child: widget.menuView,
    );

    return super.buildOverlay(context, target, overlay);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleMenu,
      child: super.build(context),
    );
  }

  void toggleMenu() {
    if (overlayController.status.isHidden) {
      overlayController.showOverlay();
    } else {
      overlayController.hidenOverlay();
    }
  }
}
