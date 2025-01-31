import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';

class ProfileAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppbar({super.key}) : matched = false;

  const ProfileAppbar.matched({super.key}) : matched = true;

  final bool matched;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: matched
          ? Text(
              '매칭 확인',
              style: Fonts.body01Medium(),
            )
          : null,
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.info_outline,
            size: 24.0,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
