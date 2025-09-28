// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberImpl _$$MemberImplFromJson(Map<String, dynamic> json) => _$MemberImpl(
      id: (json['id'] as num).toInt(),
      phoneNumber: json['phoneNumber'] as String,
      memberProfile:
          MemberProfile.fromJson(json['memberProfile'] as Map<String, dynamic>),
      isVip: json['isVip'] as bool,
      activityStatus:
          $enumDecode(_$ActivityStatusEnumMap, json['activityStatus']),
      heartBalance:
          HeartBalance.fromJson(json['heartBalance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemberImplToJson(_$MemberImpl instance) =>
    <String, dynamic>{
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

_$MemberProfileImpl _$$MemberProfileImplFromJson(Map<String, dynamic> json) =>
    _$MemberProfileImpl(
      gender: json['gender'] as String,
      isProfileSettingNeeded: json['isProfileSettingNeeded'] as bool,
      age: (json['age'] as num).toInt(),
      height: (json['height'] as num).toInt(),
    );

Map<String, dynamic> _$$MemberProfileImplToJson(_$MemberProfileImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'isProfileSettingNeeded': instance.isProfileSettingNeeded,
      'age': instance.age,
      'height': instance.height,
    };

_$HeartBalanceImpl _$$HeartBalanceImplFromJson(Map<String, dynamic> json) =>
    _$HeartBalanceImpl(
      purchaseHeartBalance: (json['purchaseHeartBalance'] as num).toInt(),
      missionHeartBalance: (json['missionHeartBalance'] as num).toInt(),
      totalHeartBalance: (json['totalHeartBalance'] as num).toInt(),
    );

Map<String, dynamic> _$$HeartBalanceImplToJson(_$HeartBalanceImpl instance) =>
    <String, dynamic>{
      'purchaseHeartBalance': instance.purchaseHeartBalance,
      'missionHeartBalance': instance.missionHeartBalance,
      'totalHeartBalance': instance.totalHeartBalance,
    };
