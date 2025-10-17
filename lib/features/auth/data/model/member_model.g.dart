// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Member _$MemberFromJson(Map<String, dynamic> json) => _Member(
  id: (json['id'] as num).toInt(),
  phoneNumber: json['phoneNumber'] as String,
  memberProfile: MemberProfile.fromJson(
    json['memberProfile'] as Map<String, dynamic>,
  ),
  isVip: json['isVip'] as bool,
  activityStatus: $enumDecode(_$ActivityStatusEnumMap, json['activityStatus']),
  heartBalance: HeartBalance.fromJson(
    json['heartBalance'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$MemberToJson(_Member instance) => <String, dynamic>{
  'id': instance.id,
  'phoneNumber': instance.phoneNumber,
  'memberProfile': instance.memberProfile,
  'isVip': instance.isVip,
  'activityStatus': _$ActivityStatusEnumMap[instance.activityStatus]!,
  'heartBalance': instance.heartBalance,
};

const _$ActivityStatusEnumMap = {
  ActivityStatus.active: 'active',
  ActivityStatus.permanentStop: 'permanentStop',
  ActivityStatus.inactive: 'inactive',
};

_MemberProfile _$MemberProfileFromJson(Map<String, dynamic> json) =>
    _MemberProfile(
      gender: json['gender'] as String,
      isProfileSettingNeeded: json['isProfileSettingNeeded'] as bool,
      age: (json['age'] as num).toInt(),
      height: (json['height'] as num).toInt(),
    );

Map<String, dynamic> _$MemberProfileToJson(_MemberProfile instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'isProfileSettingNeeded': instance.isProfileSettingNeeded,
      'age': instance.age,
      'height': instance.height,
    };

_HeartBalance _$HeartBalanceFromJson(Map<String, dynamic> json) =>
    _HeartBalance(
      purchaseHeartBalance: (json['purchaseHeartBalance'] as num).toInt(),
      missionHeartBalance: (json['missionHeartBalance'] as num).toInt(),
      totalHeartBalance: (json['totalHeartBalance'] as num).toInt(),
    );

Map<String, dynamic> _$HeartBalanceToJson(_HeartBalance instance) =>
    <String, dynamic>{
      'purchaseHeartBalance': instance.purchaseHeartBalance,
      'missionHeartBalance': instance.missionHeartBalance,
      'totalHeartBalance': instance.totalHeartBalance,
    };
