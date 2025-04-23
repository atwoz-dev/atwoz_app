import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/my/domain/model/my_profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_manage_notifier.g.dart';

@riverpod
class ProfileManageNotifier extends _$ProfileManageNotifier {
  @override
  MyProfile build() {
    return const MyProfile(
      profileImages: [],
      job: '벡엔드 개발자',
      region: '서울시 강남구',
      education: '서울 4년제',
      smokingStatus: SmokingStatusEnum.none,
      drinkingStatus: DrinkingStatusEnum.none,
      religion: ReligionEnum.none,
      mbti: 'ENFJ',
      hobbies: ['국내여행/해외여행', '맛집탐방'],
      nickname: '진저',
      age: 34,
      height: 172,
      gender: GenderEnum.male,
      phoneNum: '010-1234-5678',
    );
  }
}
