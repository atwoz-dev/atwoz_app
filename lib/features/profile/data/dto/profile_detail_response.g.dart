// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileDetailResponse _$ProfileDetailResponseFromJson(
  Map<String, dynamic> json,
) => _ProfileDetailResponse(
  memberInfo: BasicMemberInformation.fromJson(
    json['memberInfo'] as Map<String, dynamic>,
  ),
  matchInfo: json['matchInfo'] == null
      ? null
      : MatchInformation.fromJson(json['matchInfo'] as Map<String, dynamic>),
  profileExchangeInfo: json['profileExchangeInfo'] == null
      ? null
      : ProfileExchangeInfo.fromJson(
          json['profileExchangeInfo'] as Map<String, dynamic>,
        ),
  interviews:
      (json['interviews'] as List<dynamic>?)
          ?.map((e) => ProfileInterview.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ProfileDetailResponseToJson(
  _ProfileDetailResponse instance,
) => <String, dynamic>{
  'memberInfo': instance.memberInfo,
  'matchInfo': instance.matchInfo,
  'profileExchangeInfo': instance.profileExchangeInfo,
  'interviews': instance.interviews,
};

_BasicMemberInformation _$BasicMemberInformationFromJson(
  Map<String, dynamic> json,
) => _BasicMemberInformation(
  id: (json['id'] as num).toInt(),
  nickname: json['nickname'] as String,
  profileImageUrl: json['profileImageUrl'] as String,
  age: (json['age'] as num?)?.toInt(),
  gender: json['gender'] as String,
  height: (json['height'] as num).toInt(),
  job: json['job'] as String?,
  hobbies: (json['hobbies'] as List<dynamic>).map((e) => e as String).toList(),
  mbti: json['mbti'] as String,
  region: json['region'] as String?,
  smokingStatus: json['smokingStatus'] as String,
  drinkingStatus: json['drinkingStatus'] as String,
  highestEducation: json['highestEducation'] as String,
  religion: json['religion'] as String?,
  likeLevel: json['likeLevel'] as String?,
);

Map<String, dynamic> _$BasicMemberInformationToJson(
  _BasicMemberInformation instance,
) => <String, dynamic>{
  'id': instance.id,
  'nickname': instance.nickname,
  'profileImageUrl': instance.profileImageUrl,
  'age': instance.age,
  'gender': instance.gender,
  'height': instance.height,
  'job': instance.job,
  'hobbies': instance.hobbies,
  'mbti': instance.mbti,
  'region': instance.region,
  'smokingStatus': instance.smokingStatus,
  'drinkingStatus': instance.drinkingStatus,
  'highestEducation': instance.highestEducation,
  'religion': instance.religion,
  'likeLevel': instance.likeLevel,
};

_MatchInformation _$MatchInformationFromJson(Map<String, dynamic> json) =>
    _MatchInformation(
      matchId: (json['matchId'] as num).toInt(),
      requesterId: (json['requesterId'] as num).toInt(),
      responderId: (json['responderId'] as num).toInt(),
      requestMessage: json['requestMessage'] as String?,
      responseMessage: json['responseMessage'] as String?,
      matchStatus: json['matchStatus'] as String,
      contactType: json['contactType'] as String?,
      contact: json['contact'] as String?,
    );

Map<String, dynamic> _$MatchInformationToJson(_MatchInformation instance) =>
    <String, dynamic>{
      'matchId': instance.matchId,
      'requesterId': instance.requesterId,
      'responderId': instance.responderId,
      'requestMessage': instance.requestMessage,
      'responseMessage': instance.responseMessage,
      'matchStatus': instance.matchStatus,
      'contactType': instance.contactType,
      'contact': instance.contact,
    };

_ProfileExchangeInfo _$ProfileExchangeInfoFromJson(Map<String, dynamic> json) =>
    _ProfileExchangeInfo(
      profileExchangeId: (json['profileExchangeId'] as num).toInt(),
      requesterId: (json['requesterId'] as num).toInt(),
      responderId: (json['responderId'] as num).toInt(),
      profileExchangeStatus: $enumDecode(
        _$ProfileExchangeStatusEnumMap,
        json['profileExchangeStatus'],
      ),
    );

Map<String, dynamic> _$ProfileExchangeInfoToJson(
  _ProfileExchangeInfo instance,
) => <String, dynamic>{
  'profileExchangeId': instance.profileExchangeId,
  'requesterId': instance.requesterId,
  'responderId': instance.responderId,
  'profileExchangeStatus':
      _$ProfileExchangeStatusEnumMap[instance.profileExchangeStatus]!,
};

const _$ProfileExchangeStatusEnumMap = {
  ProfileExchangeStatus.none: '',
  ProfileExchangeStatus.waiting: 'WAITING',
  ProfileExchangeStatus.approve: 'APPROVE',
  ProfileExchangeStatus.rejected: 'REJECTED',
};

_ProfileInterview _$ProfileInterviewFromJson(Map<String, dynamic> json) =>
    _ProfileInterview(
      content: json['content'] as String,
      category: json['category'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$ProfileInterviewToJson(_ProfileInterview instance) =>
    <String, dynamic>{
      'content': instance.content,
      'category': instance.category,
      'answer': instance.answer,
    };
