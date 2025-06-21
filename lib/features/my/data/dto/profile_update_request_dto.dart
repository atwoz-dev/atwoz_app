import 'package:json_annotation/json_annotation.dart';

part 'profile_update_request_dto.g.dart';

@JsonSerializable()
class ProfileUpdateRequestDto {
  final String nickName;
  final String gender;
  final int yearOfBirth;
  final int height;
  final String district;
  final String highestEducation;
  final String mbti;
  final String smokingStatus;
  final String drinkingStatus;
  final String religion;
  final List<String> hobbies;
  final String job;

  const ProfileUpdateRequestDto({
    required this.nickName,
    required this.gender,
    required this.yearOfBirth,
    required this.height,
    required this.district,
    required this.highestEducation,
    required this.mbti,
    required this.smokingStatus,
    required this.drinkingStatus,
    required this.religion,
    required this.hobbies,
    required this.job,
  });

  factory ProfileUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileUpdateRequestDtoToJson(this);
}
