import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';

class DefaultAppBarIcon extends StatelessWidget {
  const DefaultAppBarIcon({
    super.key,
    this.showNotification = true,
    this.showFilter = false,
    this.filterRoute,
  });

  final bool showNotification;
  final bool showFilter;
  final AppRoute? filterRoute;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showNotification)
          IconButton(
            onPressed: () => navigate(context, route: AppRoute.notification),
            icon: const DefaultIcon(
              IconPath.notification,
              size: 24,
            ),
            tooltip: '알림',
            visualDensity: const VisualDensity(
              horizontal: -4,
              vertical: -4,
            ),
            constraints: const BoxConstraints(
              minWidth: 48,
              minHeight: 48,
            ),
          ),
        if (showFilter)
          IconButton(
            onPressed: () {
              if (filterRoute != null) {
                navigate(context, route: filterRoute!);
              }
            },
            icon: const DefaultIcon(
              IconPath.filter,
              size: 24,
            ),
            tooltip: '필터',
            visualDensity: const VisualDensity(
              horizontal: -4,
              vertical: -4,
            ),
            constraints: const BoxConstraints(
              minWidth: 48,
              minHeight: 48,
            ),
          ),
      ],
    );
  }
}
