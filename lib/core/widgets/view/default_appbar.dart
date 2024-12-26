import 'package:atwoz_app/data/sources/remote/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../theme/theme.dart';
import 'default_divider.dart';

class DefaultAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    this.actions,
    this.bottom,
    this.title,
  });

  final String? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  @override
  Size get preferredSize =>
      Size.fromHeight(80 + (bottom?.preferredSize.height ?? 0));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (authState.isLoading)
          const LinearProgressIndicator()
        else
          AppBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            leading: _buildLeadingAppBar(context),
            leadingWidth: context.screenWidth * 0.5,
            toolbarHeight: 80 - 1,
            centerTitle: false,
            titleSpacing: 0,
            title: title != null
                ? Text(
                    title!,
                    style: AppStyles.body01Medium(),
                  )
                : null,
            actions: actions,
            automaticallyImplyLeading: true,
          ),
        if (authState.error != null)
          Container(
            color: Theme.of(context).colorScheme.error,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Error: ${authState.error}',
              style: AppStyles.body01Medium(),
              textScaler: TextScaler.noScaling,
            ),
          ),
        const DefaultDivider(),
        if (bottom != null) bottom!,
      ],
    );
  }

  Widget _buildLeadingAppBar(BuildContext context) {
    final scaffold = Scaffold.maybeOf(context);
    if (scaffold?.hasDrawer ?? false) {
      return IconButton(
        icon: const Icon(Icons.menu),
        onPressed: scaffold?.openDrawer,
      );
    }

    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/'),
      child: Icon(
        Icons.home,
        color: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
