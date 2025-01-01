import 'package:atwoz_app/core/widgets/image/app_icon.dart';
import 'package:atwoz_app/features/onboarding/widget/chat_bubble.dart';
import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import 'app_overlay.dart';

class AppTooltip extends AppOverlay {
  AppTooltip({
    this.fillColor = AppColors.colorGrey400,
    super.key,
    this.autoClose = true,
    super.controller,
    required this.message,
    Widget? child,
  }) : super(
          child: child ??
              AppIcon(
                AppIcons.help,
                colorFilter: ColorFilter.mode(fillColor, BlendMode.srcIn),
              ),
        );

  final bool autoClose;
  final String message;
  final Color fillColor;

  @override
  State<AppTooltip> createState() => _AppTooltipState();
}

class _AppTooltipState extends AppOverlayState<AppTooltip>
    with AppOverlayUseTimer {
  @override
  @override
  double get verticalOffset => 20; // 아래로 표시되도록 설정

  @override
  Widget buildOverlay(BuildContext context, Offset target, Widget? overlay) {
    overlay = bubbleWidget(
        comment: widget.message,
        trianglePosition: BubblePosition.top, // 삼각형이 위로 향하도록 수정
        textColor: AppColors.colorWhite,
        bubbleColor: AppColors.colorBlack.withAlpha(180),
        isShadow: false);

    return super.buildOverlay(context, target, overlay);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: overlayController.showOverlay,
      child: super.build(context),
    );
  }
}
