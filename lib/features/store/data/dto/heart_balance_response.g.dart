// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heart_balance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HeartBalanceResponse _$HeartBalanceResponseFromJson(
  Map<String, dynamic> json,
) => _HeartBalanceResponse(
  status: (json['status'] as num).toInt(),
  code: json['code'] as String,
  message: json['message'] as String,
  data: HeartBalanceItem.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$HeartBalanceResponseToJson(
  _HeartBalanceResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

_HeartBalanceItem _$HeartBalanceItemFromJson(Map<String, dynamic> json) =>
    _HeartBalanceItem(
      purchaseHeartBalance: (json['purchaseHeartBalance'] as num).toInt(),
      missionHeartBalance: (json['missionHeartBalance'] as num).toInt(),
      totalHeartBalance: (json['totalHeartBalance'] as num).toInt(),
    );

Map<String, dynamic> _$HeartBalanceItemToJson(_HeartBalanceItem instance) =>
    <String, dynamic>{
      'purchaseHeartBalance': instance.purchaseHeartBalance,
      'missionHeartBalance': instance.missionHeartBalance,
      'totalHeartBalance': instance.totalHeartBalance,
    };
