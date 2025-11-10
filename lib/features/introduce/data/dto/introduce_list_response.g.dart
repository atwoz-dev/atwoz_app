// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'introduce_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IntroduceListResponse _$IntroduceListResponseFromJson(
  Map<String, dynamic> json,
) => _IntroduceListResponse(
  status: (json['status'] as num).toInt(),
  code: json['code'] as String,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => IntroduceItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$IntroduceListResponseToJson(
  _IntroduceListResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

_IntroduceItem _$IntroduceItemFromJson(Map<String, dynamic> json) =>
    _IntroduceItem(
      preferredCities: (json['preferredCities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      fromAge: (json['fromAge'] as num).toInt(),
      toAge: (json['toAge'] as num).toInt(),
      gender: json['gender'] as String,
      lastId: (json['lastId'] as num).toInt(),
    );

Map<String, dynamic> _$IntroduceItemToJson(_IntroduceItem instance) =>
    <String, dynamic>{
      'preferredCities': instance.preferredCities,
      'fromAge': instance.fromAge,
      'toAge': instance.toAge,
      'gender': instance.gender,
      'lastId': instance.lastId,
    };
