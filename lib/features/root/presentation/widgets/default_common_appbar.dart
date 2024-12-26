import 'package:flutter/material.dart';
import '../../../../core/theme/theme.dart';

class DefaultCommonAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const DefaultCommonAppbar({
    super.key,
    this.title = '',
    this.automaticallyImplyLeading = true,
    this.leading,
    this.actions,
    this.bottom,
  });

  final String title;
  final bool automaticallyImplyLeading;
  final Widget? leading;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  @override
  Size get preferredSize => Size.fromHeight(
      AppDimens.appbarHeight + (bottom?.preferredSize.height ?? 0));

  @override
  Widget build(BuildContext context) {
    final style = AppStyles.body01Medium();
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: leading,
      title: Text(title, style: style),
      actions: actions,
      bottom: bottom,
      backgroundColor: context.appColors.surface,
      centerTitle: true,
      toolbarHeight: preferredSize.height,
    );
  }
}
