import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';

class DefaultAppBarActionGroup extends StatelessWidget {
  const DefaultAppBarActionGroup({
    super.key,
    this.showNotification = true,
    this.showFilter = false,
    this.filterRoute = AppRoute.ideal,
  });

  final bool showNotification;
  final bool showFilter;
  final AppRoute filterRoute;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showNotification)
          _AppBarAction(
            onPressed: () => navigate(context, route: AppRoute.notification),
            icon: IconPath.notification,
            tooltip: '알림',
          ),
        if (showFilter)
          _AppBarAction(
            onPressed: () => navigate(context, route: filterRoute),
            icon: IconPath.filter,
            tooltip: '필터',
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
  });

  final VoidCallback onPressed;
  final String icon;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: DefaultIcon(icon, size: 24),
      tooltip: tooltip,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      constraints: const BoxConstraints(minWidth: 48, minHeight: 48),
    );
  }
}
