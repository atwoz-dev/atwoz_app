import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_model.freezed.dart';
part 'member_model.g.dart';

@freezed
class Member with _$Member {
  const factory Member({
    required int id,
    required String phoneNumber,
    required MemberProfile memberProfile,
    required bool isVip,
    required bool isDatingExamSubmitted,
    required ActivityStatus activityStatus,
    required HeartBalance heartBalance,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}

@freezed
class MemberProfile with _$MemberProfile {
  const factory MemberProfile({
    required String gender,
    required bool isProfileSettingNeeded,
    required int age,
    required int height,
  }) = _MemberProfile;

  factory MemberProfile.fromJson(Map<String, dynamic> json) =>
      _$MemberProfileFromJson(json);
}

@freezed
class HeartBalance with _$HeartBalance {
  const factory HeartBalance({
    required int purchaseHeartBalance,
    required int missionHeartBalance,
    required int totalHeartBalance,
  }) = _HeartBalance;

  factory HeartBalance.fromJson(Map<String, dynamic> json) =>
      _$HeartBalanceFromJson(json);
}

enum ActivityStatus {
  active,
  permanentStop,
  inactive,
}
