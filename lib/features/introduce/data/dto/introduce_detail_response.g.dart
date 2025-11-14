// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'introduce_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IntroduceDetailResponse _$IntroduceDetailResponseFromJson(
  Map<String, dynamic> json,
) => _IntroduceDetailResponse(
  status: (json['status'] as num).toInt(),
  code: json['code'] as String,
  message: json['message'] as String,
  data: IntroduceDetailData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$IntroduceDetailResponseToJson(
  _IntroduceDetailResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

_IntroduceDetailData _$IntroduceDetailDataFromJson(Map<String, dynamic> json) =>
    _IntroduceDetailData(
      title: json['title'] as String,
      content: json['content'] as String,
      like: json['like'] as String?,
      profileExchangeStatus: json['profileExchangeStatus'] as String?,
      memberBasicInfo: MemberBasicInfo.fromJson(
        json['memberBasicInfo'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$IntroduceDetailDataToJson(
  _IntroduceDetailData instance,
) => <String, dynamic>{
  'title': instance.title,
  'content': instance.content,
  'like': instance.like,
  'profileExchangeStatus': instance.profileExchangeStatus,
  'memberBasicInfo': instance.memberBasicInfo,
};

_MemberBasicInfo _$MemberBasicInfoFromJson(Map<String, dynamic> json) =>
    _MemberBasicInfo(
      memberId: (json['memberId'] as num).toInt(),
      age: (json['age'] as num).toInt(),
      nickname: json['nickname'] as String,
      city: json['city'] as String,
      district: json['district'] as String,
      mbti: json['mbti'] as String,
      hobbies: (json['hobbies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MemberBasicInfoToJson(_MemberBasicInfo instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'age': instance.age,
      'nickname': instance.nickname,
      'city': instance.city,
      'district': instance.district,
      'mbti': instance.mbti,
      'hobbies': instance.hobbies,
    };
