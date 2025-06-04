import 'package:json_annotation/json_annotation.dart';

part 'introduced_profile_dto.g.dart';

@JsonSerializable()
class IntroducedProfileDto {
  final int memberId;
  final String profileImageUrl;
  final List<String> hobbies;
  final String mbti;
  final String religion;
  final String interviewAnswerContent;
  final int? likeLevel;
  final bool isIntroduced;

  const IntroducedProfileDto({
    required this.memberId,
    required this.profileImageUrl,
    required this.hobbies,
    required this.mbti,
    required this.religion,
    required this.interviewAnswerContent,
    this.likeLevel,
    required this.isIntroduced,
  });

  factory IntroducedProfileDto.fromJson(Map<String, dynamic> json) =>
      _$IntroducedProfileDtoFromJson(json);

  Map<String, dynamic> toJson() => _$IntroducedProfileDtoToJson(this);
}
