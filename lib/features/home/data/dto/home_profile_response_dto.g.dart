// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_profile_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeProfileResponseDto _$HomeProfileResponseDtoFromJson(
  Map<String, dynamic> json,
) => HomeProfileResponseDto(
  statusInfo: StatusInfoDto.fromJson(
    json['statusInfo'] as Map<String, dynamic>,
  ),
  basicInfo: BasicInfoDto.fromJson(json['basicInfo'] as Map<String, dynamic>),
  profileInfo: ProfileInfoDto.fromJson(
    json['profileInfo'] as Map<String, dynamic>,
  ),
  interviewInfoView: (json['interviewInfoView'] as List<dynamic>)
      .map((e) => InterviewInfoDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeProfileResponseDtoToJson(
  HomeProfileResponseDto instance,
) => <String, dynamic>{
  'statusInfo': instance.statusInfo.toJson(),
  'basicInfo': instance.basicInfo.toJson(),
  'profileInfo': instance.profileInfo.toJson(),
  'interviewInfoView': instance.interviewInfoView
      .map((e) => e.toJson())
      .toList(),
};

StatusInfoDto _$StatusInfoDtoFromJson(Map<String, dynamic> json) =>
    StatusInfoDto(
      memberId: (json['memberId'] as num).toInt(),
      activityStatus: json['activityStatus'] as String,
      isVip: json['isVip'] as bool,
      isDatingExamSubmitted: json['isDatingExamSubmitted'] as bool,
      primaryContactType: json['primaryContactType'] as String?,
    );

Map<String, dynamic> _$StatusInfoDtoToJson(StatusInfoDto instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'activityStatus': instance.activityStatus,
      'isVip': instance.isVip,
      'isDatingExamSubmitted': instance.isDatingExamSubmitted,
      'primaryContactType': instance.primaryContactType,
    };

BasicInfoDto _$BasicInfoDtoFromJson(Map<String, dynamic> json) => BasicInfoDto(
  nickname: json['nickname'] as String,
  gender: json['gender'] as String,
  kakaoId: json['kakaoId'] as String?,
  age: (json['age'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  phoneNumber: json['phoneNumber'] as String,
);

Map<String, dynamic> _$BasicInfoDtoToJson(BasicInfoDto instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'gender': instance.gender,
      'kakaoId': instance.kakaoId,
      'age': instance.age,
      'height': instance.height,
      'phoneNumber': instance.phoneNumber,
    };

ProfileInfoDto _$ProfileInfoDtoFromJson(Map<String, dynamic> json) =>
    ProfileInfoDto(
      job: json['job'] as String,
      highestEducation: json['highestEducation'] as String,
      city: json['city'] as String,
      district: json['district'] as String,
      mbti: json['mbti'] as String,
      smokingStatus: json['smokingStatus'] as String,
      drinkingStatus: json['drinkingStatus'] as String,
      religion: json['religion'] as String,
      hobbies: (json['hobbies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProfileInfoDtoToJson(ProfileInfoDto instance) =>
    <String, dynamic>{
      'job': instance.job,
      'highestEducation': instance.highestEducation,
      'city': instance.city,
      'district': instance.district,
      'mbti': instance.mbti,
      'smokingStatus': instance.smokingStatus,
      'drinkingStatus': instance.drinkingStatus,
      'religion': instance.religion,
      'hobbies': instance.hobbies,
    };

InterviewInfoDto _$InterviewInfoDtoFromJson(Map<String, dynamic> json) =>
    InterviewInfoDto(
      questionId: (json['questionId'] as num?)?.toInt(),
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$InterviewInfoDtoToJson(InterviewInfoDto instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'title': instance.title,
      'content': instance.content,
    };
