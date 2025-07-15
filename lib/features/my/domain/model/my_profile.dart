import 'package:atwoz_app/app/enum/education.dart';
import 'package:atwoz_app/app/enum/enum.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/constants/enum.dart';

part 'my_profile.freezed.dart';

@freezed
class MyProfile with _$MyProfile {
  const factory MyProfile({
    required List<MyProfileImage?> profileImages,
    required Job job,
    required String region,
    required Education education, // constants/enum 재사용
    required SmokingStatus smokingStatus, // profile/domain/enum 재사용
    required DrinkingStatus drinkingStatus, // profile/domain/enum 재사용
    required Religion religion, // profile/domain/enum 재사용
    required String mbti,
    required List<Hobby> hobbies,
    required String nickname,
    required int age,
    required int height,
    required Gender gender, // constants/enum 재사용
    required String phoneNum,
  }) = _MyProfile;
}
