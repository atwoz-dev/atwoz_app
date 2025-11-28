import 'package:json_annotation/json_annotation.dart';

part 'home_profile_response_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class HomeProfileResponseDto {
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

  factory HomeProfileResponseDto.fromJson(Map<String, dynamic> json) {
    final rawInterviewList = json['interviewInfoView'] as List<dynamic>;

    final filteredList = rawInterviewList
        .where(
          (e) =>
              e is Map<String, dynamic> &&
              e.isNotEmpty &&
              e['questionId'] != null,
        )
        .toList();

    return HomeProfileResponseDto(
      statusInfo: StatusInfoDto.fromJson(json['statusInfo']),
      basicInfo: BasicInfoDto.fromJson(json['basicInfo']),
      profileInfo: ProfileInfoDto.fromJson(json['profileInfo']),
      interviewInfoView: filteredList
          .map((e) => InterviewInfoDto.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => _$HomeProfileResponseDtoToJson(this);
}

@JsonSerializable()
class StatusInfoDto {
  final int memberId;
  final String activityStatus;
  final bool isVip;
  final bool isDatingExamSubmitted;
  final String? primaryContactType;

  StatusInfoDto({
    required this.memberId,
    required this.activityStatus,
    required this.isVip,
    required this.isDatingExamSubmitted,
    required this.primaryContactType,
  });

  factory StatusInfoDto.fromJson(Map<String, dynamic> json) =>
      _$StatusInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StatusInfoDtoToJson(this);
}

@JsonSerializable()
class BasicInfoDto {
  final String nickname;
  final String gender;
  final String? kakaoId;
  final int age;
  final int height;
  final String phoneNumber;

  BasicInfoDto({
    required this.nickname,
    required this.gender,
    this.kakaoId,
    required this.age,
    required this.height,
    required this.phoneNumber,
  });

  factory BasicInfoDto.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BasicInfoDtoToJson(this);
}

@JsonSerializable()
class ProfileInfoDto {
  final String job;
  final String highestEducation;
  final String city;
  final String district;
  final String mbti;
  final String smokingStatus;
  final String drinkingStatus;
  final String religion;
  final List<String> hobbies;

  ProfileInfoDto({
    required this.job,
    required this.highestEducation,
    required this.city,
    required this.district,
    required this.mbti,
    required this.smokingStatus,
    required this.drinkingStatus,
    required this.religion,
    required this.hobbies,
  });

  factory ProfileInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileInfoDtoToJson(this);
}

@JsonSerializable()
class InterviewInfoDto {
  final int questionId;
  final String title;
  final String content;

  InterviewInfoDto({
    required this.questionId,
    required this.title,
    required this.content,
  });

  factory InterviewInfoDto.fromJson(Map<String, dynamic> json) =>
      _$InterviewInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InterviewInfoDtoToJson(this);
}
