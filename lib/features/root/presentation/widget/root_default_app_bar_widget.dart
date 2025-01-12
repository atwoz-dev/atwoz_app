import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import '../../../../app/constants/constants.dart';

class RootDefaultAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const RootDefaultAppBarWidget({
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
      Dimens.appbarHeight + (bottom?.preferredSize.height ?? 0));

  @override
  Widget build(BuildContext context) {
    final style = Fonts.body01Medium();
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: leading,
      title: Text(title, style: style),
      actions: actions,
      bottom: bottom,
      backgroundColor: context.palette.surface,
      centerTitle: true,
      toolbarHeight: preferredSize.height,
    );
  }
}
