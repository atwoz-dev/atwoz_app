import 'package:atwoz_app/features/auth/domain/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/constants.dart';
import 'default_divider.dart';

class DefaultAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    this.actions,
    this.bottom,
    this.title,
    this.isDivider = false,
    this.leadingIcon,
    this.leadingAction,
  });

  final String? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final bool isDivider;
  final Widget? leadingIcon;
  final VoidCallback? leadingAction;
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
            leadingWidth: 60.0, // 적절한 너비로 축소
            toolbarHeight: 80 - 1,
            centerTitle: true,
            titleSpacing: 0,
            title: title != null
                ? Text(
                    title!,
                    style: Fonts.body01Medium(),
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
              style: Fonts.body01Medium(),
              textScaler: TextScaler.noScaling,
            ),
          ),
        if (isDivider) const DefaultDivider(),
        if (bottom != null) bottom!,
      ],
    );
  }

  Widget _buildLeadingAppBar(BuildContext context) {
    final scaffold = Scaffold.maybeOf(context);
    if (scaffold?.hasDrawer ?? false) {
      return IconButton(
        icon: const Icon(Icons.menu, size: 24.0), // 아이콘 크기 설정
        onPressed: scaffold?.openDrawer,
      );
    }

    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/'),
      child: IconButton(
        icon: leadingIcon ?? Icon(Icons.arrow_back_ios_new),
        color: Theme.of(context).colorScheme.onSurface,
        iconSize: 24.0, // 아이콘 크기 설정
        onPressed:
            leadingAction ?? () => Navigator.of(context).pop(), // 기본값으로 뒤로가기 설정
      ),
    );
  }
}
