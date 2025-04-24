import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/my/presentation/enum/enum.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "마이페이지",
      ),
      body: Column(
        children: MyPageType.values.map(
          (type) {
            return _MyPageListItem(
              title: type.label,
              iconPath: MyPageType.iconPath[type] ?? '',
              onTapMove: () {
                switch (type) {
                  case MyPageType.profileManage:
                    navigate(context, route: AppRoute.profileManage);
                    break;
                  case MyPageType.idealSetting:
                    navigate(context, route: AppRoute.idealSetting);
                    break;
                  case MyPageType.friendBlock:
                    navigate(context, route: AppRoute.blockFriend);
                    break;
                  case MyPageType.store:
                    navigate(context, route: AppRoute.store);
                    break;
                  case MyPageType.serviceCenter:
                    break;
                  case MyPageType.setting:
                    navigate(context, route: AppRoute.setting);
                    break;
                }
              },
            );
          },
        ).toList(),
      ),
    );
  }
}

class _MyPageListItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final VoidCallback onTapMove;
  const _MyPageListItem({
    required this.title,
    required this.iconPath,
    required this.onTapMove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                DefaultIcon(
                  iconPath,
                  size: 24,
                ),
                const Gap(8),
                Text(
                  title,
                  style: Fonts.body02Medium().copyWith(
                    fontWeight: FontWeight.w400,
                    color: Palette.colorBlack,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onTapMove,
            child: const DefaultIcon(
              IconPath.chevronRight,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
