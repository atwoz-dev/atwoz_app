import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

typedef MenuItem = ({
  String title,
  String iconPath,
  AppRoute? route,
});

// Record를 사용한 menuItems 정의
const List<MenuItem> _menuItems = [
  (
    title: '프로필 관리',
    iconPath: IconPath.myProfile,
    route: AppRoute.profileManage,
  ),
  (
    title: '이상형 설정',
    iconPath: IconPath.idealSetting,
    route: AppRoute.idealSetting,
  ),
  (
    title: '차단친구 관리',
    iconPath: IconPath.blockFriend,
    route: AppRoute.blockFriend,
  ),
  (
    title: '스토어',
    iconPath: IconPath.store,
    route: AppRoute.store,
  ),
  (
    title: '고객센터',
    iconPath: IconPath.customerCenter,
    route: null,
  ),
  (
    title: '설정',
    iconPath: IconPath.setting,
    route: AppRoute.setting,
  ),
];

class MyPage extends ConsumerStatefulWidget {
  const MyPage({super.key});

  @override
  MyPageState createState() => MyPageState();
}

class MyPageState extends BaseConsumerStatefulPageState<MyPage> {
  MyPageState()
      : super(
          isAppBar: false,
          isHorizontalMargin: false,
          isDefaultBottomNavigationBar: true,
          defaultBottomNavigationBarIndex: 4,
        );

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "마이페이지",
      ),
      body: Column(
        children: _menuItems
            .map(
              (item) => _MyPageListItem(
                title: item.title,
                iconPath: item.iconPath,
                onTapMove: () {
                  if (item.route != null) {
                    navigate(context, route: item.route!);
                  }
                },
              ),
            )
            .toList(),
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
