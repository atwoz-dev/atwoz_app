import 'package:atwoz_app/app/constants/constants.dart';

enum MyPageTypeEnum {
  profileManage,
  idealSetting,
  friendBlock,
  store,
  serviceCenter,
  setting
}

const Map<MyPageTypeEnum, String> myPageTypeMap = {
  MyPageTypeEnum.profileManage: '프로필 관리',
  MyPageTypeEnum.idealSetting: '이상형 설정',
  MyPageTypeEnum.friendBlock: '지인차단',
  MyPageTypeEnum.store: '스토어',
  MyPageTypeEnum.serviceCenter: '고객센터',
  MyPageTypeEnum.setting: '설정'
};

const Map<MyPageTypeEnum, String> myPageIconMap = {
  MyPageTypeEnum.profileManage: IconPath.myProfile,
  MyPageTypeEnum.idealSetting: IconPath.idealSetting,
  MyPageTypeEnum.friendBlock: IconPath.blockFriend,
  MyPageTypeEnum.store: IconPath.store,
  MyPageTypeEnum.serviceCenter: IconPath.customerCenter,
  MyPageTypeEnum.setting: IconPath.setting
};
