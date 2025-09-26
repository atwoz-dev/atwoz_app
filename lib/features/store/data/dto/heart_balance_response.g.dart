// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heart_balance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeartBalanceResponseImpl _$$HeartBalanceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HeartBalanceResponseImpl(
      status: (json['status'] as num).toInt(),
      code: json['code'] as String,
      message: json['message'] as String,
      data: HeartBalanceItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HeartBalanceResponseImplToJson(
        _$HeartBalanceResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$HeartBalanceItemImpl _$$HeartBalanceItemImplFromJson(
        Map<String, dynamic> json) =>
    _$HeartBalanceItemImpl(
      purchaseHeartBalance: (json['purchaseHeartBalance'] as num).toInt(),
      missionHeartBalance: (json['missionHeartBalance'] as num).toInt(),
      totalHeartBalance: (json['totalHeartBalance'] as num).toInt(),
    );

Map<String, dynamic> _$$HeartBalanceItemImplToJson(
        _$HeartBalanceItemImpl instance) =>
    <String, dynamic>{
      'purchaseHeartBalance': instance.purchaseHeartBalance,
      'missionHeartBalance': instance.missionHeartBalance,
      'totalHeartBalance': instance.totalHeartBalance,
    };
