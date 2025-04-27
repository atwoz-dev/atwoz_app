import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/my/domain/model/my_profile.dart';
import 'package:atwoz_app/features/my/presentation/controller/profile_manage_state.dart';
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
      profileImages: [],
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
