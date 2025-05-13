import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'global_user_profile.freezed.dart';
part 'global_user_profile.g.dart';

@freezed
@HiveType(typeId: 3, adapterName: 'GlobalUserProfileAdapter')
class GlobalUserProfile with _$GlobalUserProfile {
  const GlobalUserProfile._(); // for custom getters

  const factory GlobalUserProfile({
    // statusInfo
    @HiveField(0) required String activityStatus,
    @HiveField(1) required bool isVip,
    @HiveField(2) String? primaryContactType, // 회원가입 후 연락수단 NULL

    // basicInfo
    @HiveField(3) required String nickname,
    @HiveField(4) required String gender,
    @HiveField(5) String? kakaoId,
    @HiveField(6) required int yearOfBirth,
    @HiveField(7) required int height,
    @HiveField(8) required String phoneNumber,

    // profileInfo
    @HiveField(9) required String job,
    @HiveField(10) required String highestEducation,
    @HiveField(11) required String city,
    @HiveField(12) required String district,
    @HiveField(13) required String mbti,
    @HiveField(14) required String smokingStatus,
    @HiveField(15) required String drinkingStatus,
    @HiveField(16) required String religion,
    @HiveField(17) required List<String> hobbies,

    // interviewInfo
    @HiveField(18) required List<InterviewInfo> interviewInfoView,
  }) = $GlobalUserProfile;

  factory GlobalUserProfile.fromJson(Map<String, dynamic> json) =>
      _$GlobalUserProfileFromJson(json);

  @HiveField(19)
  bool get hasInterview =>
      interviewInfoView.isNotEmpty &&
      interviewInfoView.any((i) => i.title != null || i.content != null);
}

@freezed
@HiveType(typeId: 4, adapterName: 'InterviewInfoAdapter')
class InterviewInfo with _$InterviewInfo {
  const factory InterviewInfo({
    @HiveField(0) String? title,
    @HiveField(1) String? content,
  }) = _InterviewInfo;

  factory InterviewInfo.fromJson(Map<String, dynamic> json) =>
      _$InterviewInfoFromJson(json);
}
