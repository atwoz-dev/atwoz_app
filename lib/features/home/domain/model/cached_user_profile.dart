import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'cached_user_profile.freezed.dart';
part 'cached_user_profile.g.dart';

@freezed
@HiveType(typeId: 3, adapterName: 'CachedUserProfileAdapter')
abstract class CachedUserProfile with _$CachedUserProfile {
  const CachedUserProfile._(); // for custom getters

  const factory CachedUserProfile({
    // statusInfo
    @HiveField(0) required String activityStatus,
    @HiveField(1) required bool isVip,
    @HiveField(2) required bool isDatingExamSubmitted,
    @HiveField(3) String? primaryContactType, // 회원가입 후 연락수단 NULL

    // basicInfo
    @HiveField(4) required String nickname,
    @HiveField(5) required Gender gender,
    @HiveField(6) String? kakaoId,
    @HiveField(7) required int age,
    @HiveField(8) required int height,
    @HiveField(9) required String phoneNumber,

    // profileInfo
    @HiveField(10) required Job job,
    @HiveField(11) required Education education,
    @HiveField(12) required String city,
    @HiveField(13) required String district,
    @HiveField(14) required String mbti,
    @HiveField(15) required SmokingStatus smokingStatus,
    @HiveField(16) required DrinkingStatus drinkingStatus,
    @HiveField(17) required Religion religion,
    @HiveField(18) required List<Hobby> hobbies,

    // interviewInfo
    @HiveField(19) required List<InterviewInfo> interviewInfoView,
    @HiveField(20) @Default(0) int myUserId,
  }) = _CachedUserProfile;

  factory CachedUserProfile.fromJson(Map<String, dynamic> json) =>
      _$CachedUserProfileFromJson(json);

  bool get hasInterview =>
      interviewInfoView.isNotEmpty &&
      interviewInfoView.any((i) => i.title.isNotEmpty || i.content.isNotEmpty);

  static String get boxName => 'CachedUserProfile';

  factory CachedUserProfile.init() => _default;

  static const _default = CachedUserProfile(
    activityStatus: '',
    isVip: false,
    isDatingExamSubmitted: false,
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
    myUserId: 0,
  );

  bool get isDefault => this == _default;

  bool get isMale => gender == Gender.male;
}

@freezed
@HiveType(typeId: 4, adapterName: 'InterviewInfoAdapter')
abstract class InterviewInfo with _$InterviewInfo {
  const factory InterviewInfo({
    @HiveField(0) required String title,
    @HiveField(1) required String content,
  }) = _InterviewInfo;

  factory InterviewInfo.fromJson(Map<String, dynamic> json) =>
      _$InterviewInfoFromJson(json);
}
