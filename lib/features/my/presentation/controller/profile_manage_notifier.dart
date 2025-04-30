import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_manage_notifier.g.dart';

@riverpod
class ProfileManageNotifier extends _$ProfileManageNotifier {
  @override
  ProfileManageState build() {
    // TODO: Hive에서 프로필 정보 가져오기
    return const ProfileManageState(
        profile: MyProfile(
      profileImages: [
        MyProfileImage(
            id: 0,
            imageUrl:
                'https://cdn.rnx.kr/news/photo/202206/296912_304213_2613.jpg'),
        MyProfileImage(
            id: 1,
            imageUrl:
                'https://img4.yna.co.kr/etc/inner/KR/2021/02/19/AKR20210219023200005_01_i_P4.jpg'),
        MyProfileImage(
            id: 3,
            imageUrl:
                'https://img.vogue.co.kr/vogue/2024/08/style_66b97644144f2.jpg'),
      ],
      job: '연구개발/엔지니어',
      region: '서울시 강남구',
      education: HighestEducationEnum.bachelorsSeoul,
      smokingStatus: SmokingStatus.none,
      drinkingStatus: DrinkingStatus.none,
      religion: Religion.none,
      mbti: 'ENFJ',
      hobbies: ['국내여행/해외여행', '맛집탐방'],
      nickname: '진저',
      age: 34,
      height: 172,
      gender: GenderEnum.male,
      phoneNum: '010-1234-5678',
    ));
  }

  Future<void> updateProfile(MyProfile profile) async {
    state = state.copyWith(profile: profile);
  }
}
