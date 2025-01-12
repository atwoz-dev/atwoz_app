import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/overlay/menu_float.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/root/presentation/widget/root_default_app_bar_widget.dart';
import 'package:atwoz_app/features/root/presentation/widget/root_profile_menu_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../app/constants/constants.dart';

class RootAppBarWidget extends ConsumerWidget implements PreferredSizeWidget {
  const RootAppBarWidget({super.key, required this.title});
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(Dimens.appbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RootDefaultAppBarWidget(title: title, actions: <Widget>[
      //_buildNotification(context),
      const Gap(20),
      MenuFloat(
        width: context.screenWidth * 0.6,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: context.palette.surface,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 3,
            ),
          ],
        ),
        menuView: const RootProfileMenuWidget(),
        child: DefaultIcon(
            // 테마 모드에 따라 아이콘 변경
            context.isDarkTheme
                ? IconPath.person
                : IconPath.person, // TODO: 다크모드일 때 아이콘 바꿔야 함
            size: 30),
      ),
      const Gap(10),
    ]);
  }
}
