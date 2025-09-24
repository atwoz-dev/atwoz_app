// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_upload_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileUploadRequestImpl _$$ProfileUploadRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileUploadRequestImpl(
      nickname: json['nickname'] as String,
      gender: json['gender'] as String,
      yearOfBirth: (json['yearOfBirth'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      job: json['job'] as String,
      district: json['district'] as String,
      highestEducation: json['highestEducation'] as String,
      mbti: json['mbti'] as String,
      smokingStatus: json['smokingStatus'] as String,
      drinkingStatus: json['drinkingStatus'] as String,
      religion: json['religion'] as String,
      hobbies:
          (json['hobbies'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProfileUploadRequestImplToJson(
        _$ProfileUploadRequestImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'gender': instance.gender,
      'yearOfBirth': instance.yearOfBirth,
      'height': instance.height,
      'job': instance.job,
      'district': instance.district,
      'highestEducation': instance.highestEducation,
      'mbti': instance.mbti,
      'smokingStatus': instance.smokingStatus,
      'drinkingStatus': instance.drinkingStatus,
      'religion': instance.religion,
      'hobbies': instance.hobbies,
    };
