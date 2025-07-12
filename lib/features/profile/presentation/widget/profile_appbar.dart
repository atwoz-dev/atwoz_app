import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';

class ProfileAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppbar({super.key, this.onBackButtonPressed}) : matched = false;

  const ProfileAppbar.matched({super.key, this.onBackButtonPressed})
      : matched = true;

  final bool matched;
  final VoidCallback? onBackButtonPressed;

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
      leading: GestureDetector(
        onTap: onBackButtonPressed,
        child: const Icon(Icons.arrow_back_ios),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.info_outline, size: 24.0),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
