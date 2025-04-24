import 'package:atwoz_app/app/constants/constants.dart';

enum MyPageType {
  profileManage('프로필 관리'),
  idealSetting('이상형 설정'),
  friendBlock('지인차단'),
  store('스토어'),
  serviceCenter('고객센터'),
  setting('설정');

  final String label;
  const MyPageType(this.label);

  static final Map<String, MyPageType> _byValue = {
    for (final category in MyPageType.values)
      category.label.toUpperCase(): category,
  };

  static MyPageType parse(String? value) =>
      _byValue[value?.toUpperCase()] ?? MyPageType.profileManage;

  static final Map<MyPageType, String> iconPath = {
    MyPageType.profileManage: IconPath.myProfile,
    MyPageType.idealSetting: IconPath.idealSetting,
    MyPageType.friendBlock: IconPath.blockFriend,
    MyPageType.store: IconPath.store,
    MyPageType.serviceCenter: IconPath.customerCenter,
    MyPageType.setting: IconPath.setting
  };
}
