import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> featureNames = [
      '프로필 관리',
      '이상형 설정',
      '지인차단',
      '스토어',
      '고객센터',
      '설정'
    ];

    final List<String> iconPaths = [
      IconPath.myProfile,
      IconPath.idealSetting,
      IconPath.blockFriend,
      IconPath.store,
      IconPath.customerCenter,
      IconPath.setting
    ];

    return Scaffold(
      appBar: DefaultAppBar(
        title: "마이페이지",
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return MyPageListItem(
              title: featureNames[index],
              iconPath: iconPaths[index],
            );
          },
          itemCount: featureNames.length),
    );
  }
}

class MyPageListItem extends StatelessWidget {
  final String title;
  final String iconPath;
  const MyPageListItem({
    super.key,
    required this.title,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
              ),
            ],
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
