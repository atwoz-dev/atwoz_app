import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

const List<String> _featureNames = [
  '프로필 관리',
  '이상형 설정',
  '지인차단',
  '스토어',
  '고객센터',
  '설정'
];

const List<String> _iconPaths = [
  IconPath.myProfile,
  IconPath.idealSetting,
  IconPath.blockFriend,
  IconPath.store,
  IconPath.customerCenter,
  IconPath.setting
];

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "마이페이지",
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return _MyPageListItem(
              title: _featureNames[index],
              iconPath: _iconPaths[index],
            );
          },
          itemCount: _featureNames.length),
    );
  }
}

class _MyPageListItem extends StatelessWidget {
  final String title;
  final String iconPath;
  const _MyPageListItem({
    required this.title,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                DefaultIcon(
                  iconPath,
                  size: 24,
                ),
                Gap(8),
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
          DefaultIcon(
            IconPath.chevronRight,
            size: 24,
          )
        ],
      ),
    );
  }
}
