import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/constants/enum.dart';

part 'my_profile.freezed.dart';
part 'my_profile.g.dart';

@freezed
class MyProfile with _$MyProfile {
  const factory MyProfile({
    required List<String> profileImages,
    required String job,
    required String region,
    required String education,
    required SmokingStatusEnum smokingStatus,
    required DrinkingStatusEnum drinkingStatus,
    required ReligionEnum religion,
    required String mbti,
    required List<String> hobbies,
    required String nickname,
    required int age,
    required int height,
    required GenderEnum gender,
    required String phoneNum,
  }) = _MyProfile;

  factory MyProfile.fromJson(Map<String, dynamic> json) =>
      _$MyProfileFromJson(json);
}
