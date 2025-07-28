import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
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
    @HiveField(4) required Gender gender,
    @HiveField(5) String? kakaoId,
    @HiveField(6) required int age,
    @HiveField(7) required int height,
    @HiveField(8) required String phoneNumber,

    // profileInfo
    @HiveField(9) required Job job,
    @HiveField(10) required Education education,
    @HiveField(11) required String city,
    @HiveField(12) required String district,
    @HiveField(13) required String mbti,
    @HiveField(14) required SmokingStatus smokingStatus,
    @HiveField(15) required DrinkingStatus drinkingStatus,
    @HiveField(16) required Religion religion,
    @HiveField(17) required List<Hobby> hobbies,

    // interviewInfo
    @HiveField(18) required List<InterviewInfo> interviewInfoView,
  }) = _GlobalUserProfile;

  factory GlobalUserProfile.fromJson(Map<String, dynamic> json) =>
      _$GlobalUserProfileFromJson(json);

  bool get hasInterview =>
      interviewInfoView.isNotEmpty &&
      interviewInfoView.any((i) => i.title.isNotEmpty || i.content.isNotEmpty);

  static String get boxName => 'GlobalUserProfile';

  factory GlobalUserProfile.init() => _default;

  static const _default = GlobalUserProfile(
    activityStatus: '',
    isVip: false,
    nickname: '',
    gender: Gender.male,
    age: 0,
    height: 0,
    phoneNumber: '',
    job: Job.others,
    education: Education.other,
    city: '',
    district: '',
    mbti: '',
    smokingStatus: SmokingStatus.none,
    drinkingStatus: DrinkingStatus.none,
    religion: Religion.none,
    hobbies: [],
    interviewInfoView: [],
  );

  bool get isDefault => this == _default;

  bool get isMale => gender == Gender.male;
}

@freezed
@HiveType(typeId: 4, adapterName: 'InterviewInfoAdapter')
class InterviewInfo with _$InterviewInfo {
  const factory InterviewInfo({
    @HiveField(0) required String title,
    @HiveField(1) required String content,
  }) = _InterviewInfo;

  factory InterviewInfo.fromJson(Map<String, dynamic> json) =>
      _$InterviewInfoFromJson(json);
}
