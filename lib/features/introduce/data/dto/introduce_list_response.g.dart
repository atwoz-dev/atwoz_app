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
      id: (json['id'] as num).toInt(),
      yearOfBirth: (json['yearOfBirth'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileUrl: json['profileUrl'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$IntroduceItemToJson(_IntroduceItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'yearOfBirth': instance.yearOfBirth,
      'nickname': instance.nickname,
      'profileUrl': instance.profileUrl,
      'title': instance.title,
      'content': instance.content,
      'createdAt': instance.createdAt,
    };
