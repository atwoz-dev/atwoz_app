import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

const List<String> _featureNames = [
  '푸쉬알림 설정',
  '계정 설정',
  '버전정보',
  '연락처 설정',
  '개인정보 취급방침',
  '이용약관',
  'FAQ',
];

Future<String> _getAppVersion() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  return packageInfo.version;
}

class MySettingPage extends StatelessWidget {
  const MySettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "설정",
      ),
      body: ListView.builder(
        itemCount: _featureNames.length,
        itemBuilder: (context, index) {
          return _MySettingListItem(title: _featureNames[index]);
        },
      ),
    );
  }
}

class _MySettingListItem extends StatelessWidget {
  final String title;
  const _MySettingListItem({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xffE1E1E1), width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Fonts.body02Medium().copyWith(
              fontWeight: FontWeight.w500,
              color: Palette.colorBlack,
            ),
          ),
          _ListIcon(
            title: title,
          )
        ],
      ),
    );
  }
}

class _ListIcon extends StatelessWidget {
  final String title;
  const _ListIcon({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    if (title != _featureNames[2]) {
      return DefaultIcon(
        IconPath.chevronRight2,
        size: 24,
      );
    } else {
      return FutureBuilder(
        //TODO: 추후 riverpod 사용 시 수정
        future: _getAppVersion(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (!snapshot.hasData || snapshot.data == null) {
            return Text("버전 정보 없음");
          }
          return Text("V${snapshot.data!}");
        },
      );
    }
  }
}
