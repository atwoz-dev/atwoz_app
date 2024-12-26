import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../theme/theme.dart';

class DefaultScaffold extends ConsumerWidget {
  const DefaultScaffold({
    super.key,
    this.appBar,
    this.drawer,
    this.body,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.hideKeyboardWhenTouchOutside = true,
    this.actionOnTapOutside,
    this.resizeToAvoidBottomInset,
  });

  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? body;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final bool hideKeyboardWhenTouchOutside;
  final VoidCallback? actionOnTapOutside;
  final bool? resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffold = Scaffold(
      backgroundColor: backgroundColor ?? context.appColors.surface,
      body: body,
      appBar: appBar,
      drawer: drawer,
      drawerScrimColor: Colors.transparent,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      resizeToAvoidBottomInset: false,
    );

    return hideKeyboardWhenTouchOutside
        ? GestureDetector(
            onTap: () {
              _hideKeyboard(context);
              if (actionOnTapOutside != null) {
                actionOnTapOutside!();
              }
            },
            child: scaffold,
          )
        : scaffold;
  }

  static void _hideKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
