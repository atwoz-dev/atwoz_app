import 'package:deepple_app/app/router/router.dart';
import 'package:deepple_app/app/widget/icon/default_icon.dart';
import 'package:flutter/material.dart';
import 'package:deepple_app/app/constants/constants.dart';

class DefaultAppBarActionGroup extends StatelessWidget {
  const DefaultAppBarActionGroup({
    super.key,
    this.showNotification = true,
    this.showFilter = false,
    this.filterRoute = AppRoute.ideal,
    this.iconSize = Dimens.iconSize,
    this.visualDensity = -4.0,
    this.boxConstraints = 48.0,
  });

  final bool showNotification;
  final bool showFilter;
  final AppRoute filterRoute;
  final double iconSize;
  final double visualDensity;
  final double boxConstraints;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showNotification)
          _AppBarAction(
            onPressed: () => navigate(context, route: AppRoute.notification),
            icon: IconPath.notification,
            tooltip: '알림',
            iconSize: iconSize,
            visualDensity: visualDensity,
            boxConstraints: boxConstraints,
          ),
        if (showFilter)
          _AppBarAction(
            onPressed: () => navigate(context, route: filterRoute),
            icon: IconPath.filter,
            tooltip: '필터',
            iconSize: iconSize,
            visualDensity: visualDensity,
            boxConstraints: boxConstraints,
          ),
      ],
    );
  }
}

class _AppBarAction extends StatelessWidget {
  const _AppBarAction({
    required this.onPressed,
    required this.icon,
    required this.tooltip,
    required this.iconSize,
    required this.visualDensity,
    required this.boxConstraints,
  });

  final VoidCallback onPressed;
  final String icon;
  final String tooltip;
  final double iconSize;
  final double visualDensity;
  final double boxConstraints;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: DefaultIcon(icon, size: iconSize),
      tooltip: tooltip,
      visualDensity: VisualDensity(
        horizontal: visualDensity,
        vertical: visualDensity,
      ),
      constraints: BoxConstraints(
        minWidth: boxConstraints,
        minHeight: boxConstraints,
      ),
    );
  }
}
