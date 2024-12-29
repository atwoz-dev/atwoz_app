import 'package:atwoz_app/core/widgets/image/app_icon.dart';
import 'package:atwoz_app/core/widgets/overlay/app_menu_float.dart';
import 'package:atwoz_app/core/widgets/view/default_appbar.dart';
import 'package:atwoz_app/features/root/presentation/widgets/root_profile_menu.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/theme/theme.dart';

class RootAppbar extends ConsumerWidget implements PreferredSizeWidget {
  const RootAppbar({super.key, this.title});
  final String? title;

  @override
  Size get preferredSize => const Size.fromHeight(AppDimens.appbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultAppBar(title: title, actions: <Widget>[
      //_buildNotification(context),
      const Gap(20),
      AppMenuFloat(
        width: context.screenWidth * 0.6,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: context.appColors.surface,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 3,
            ),
          ],
        ),
        menuView: const RootProfileMenu(),
        child: AppIcon(
            // 테마 모드에 따라 아이콘 변경
            context.isDarkTheme
                ? AppIcons.person
                : AppIcons.person, // TODO: 다크모드일 때 아이콘 바꿔야 함
            size: 30),
      ),
      const Gap(10),
    ]);
  }
}
