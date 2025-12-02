import 'package:deepple_app/app/constants/enum.dart';
import 'package:deepple_app/features/home/domain/model/cached_user_profile.dart';
import 'package:deepple_app/features/my/my.dart';
import 'package:deepple_app/features/profile/domain/common/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_profile.freezed.dart';

@freezed
abstract class MyProfile with _$MyProfile {
  const factory MyProfile({
    required List<MyProfileImage> profileImages,
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
    required List<InterviewInfo> interviews,
  }) = _MyProfile;
}
