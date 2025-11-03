import 'package:json_annotation/json_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'introduced_profile_dto.g.dart';

@JsonSerializable()
@HiveType(typeId: 6, adapterName: 'IntroducedProfileDtoAdapter')
class IntroducedProfileDto {
  @HiveField(0)
  final int memberId;
  @HiveField(1)
  final String profileImageUrl;
  @HiveField(2)
  final List<String> hobbies;
  @HiveField(3)
  final String mbti;
  @HiveField(4)
  final String? religion;
  @HiveField(5)
  final String interviewAnswerContent;
  @HiveField(6)
  final String? likeLevel;
  @HiveField(7)
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

  static String get boxName => 'IntroducedProfileDto';
}
