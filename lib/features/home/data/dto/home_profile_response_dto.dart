import 'package:json_annotation/json_annotation.dart';

part 'home_profile_response_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class HomeProfileResponseDto {
  //
  final StatusInfoDto statusInfo;
  final BasicInfoDto basicInfo;
  final ProfileInfoDto profileInfo;
  final List<InterviewInfoDto> interviewInfoView;

  HomeProfileResponseDto({
    required this.statusInfo,
    required this.basicInfo,
    required this.profileInfo,
    required this.interviewInfoView,
  });

  factory HomeProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$HomeProfileResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HomeProfileResponseDtoToJson(this);
}

@JsonSerializable()
class StatusInfoDto {
  final String? activityStatus;
  final bool? isVip;
  final String? primaryContactType;

  StatusInfoDto({
    this.activityStatus,
    this.isVip,
    this.primaryContactType,
  });

  factory StatusInfoDto.fromJson(Map<String, dynamic> json) =>
      _$StatusInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StatusInfoDtoToJson(this);
}

@JsonSerializable()
class BasicInfoDto {
  final String? nickname;
  final String? gender;
  final String? kakaoId;
  final int? yearOfBirth;
  final int? height;
  final String phoneNumber;

  BasicInfoDto({
    this.nickname,
    this.gender,
    this.kakaoId,
    this.yearOfBirth,
    this.height,
    required this.phoneNumber,
  });

  factory BasicInfoDto.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BasicInfoDtoToJson(this);
}

@JsonSerializable()
class ProfileInfoDto {
  final String? job;
  final String? highestEducation;
  final String? city;
  final String? district;
  final String? mbti;
  final String? smokingStatus;
  final String? drinkingStatus;
  final String? religion;
  final List<String>? hobbies;

  ProfileInfoDto({
    this.job,
    this.highestEducation,
    this.city,
    this.district,
    this.mbti,
    this.smokingStatus,
    this.drinkingStatus,
    this.religion,
    this.hobbies,
  });

  factory ProfileInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileInfoDtoToJson(this);
}

@JsonSerializable()
class InterviewInfoDto {
  final String? title;
  final String? content;

  InterviewInfoDto({
    this.title,
    this.content,
  });

  factory InterviewInfoDto.fromJson(Map<String, dynamic> json) =>
      _$InterviewInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InterviewInfoDtoToJson(this);
}
