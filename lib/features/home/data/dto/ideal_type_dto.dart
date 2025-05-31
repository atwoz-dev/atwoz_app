import 'package:json_annotation/json_annotation.dart';

part 'ideal_type_dto.g.dart';

@JsonSerializable()
class IdealTypeDto {
  final int minAge;
  final int maxAge;
  final List<String> hobbies;
  final List<String> cities;
  final String? religion;
  final String? smokingStatus;
  final String? drinkingStatus;

  IdealTypeDto({
    required this.minAge,
    required this.maxAge,
    required this.hobbies,
    required this.cities,
    this.religion,
    this.smokingStatus,
    this.drinkingStatus,
  });

  factory IdealTypeDto.fromJson(Map<String, dynamic> json) =>
      _$IdealTypeDtoFromJson(json);
  Map<String, dynamic> toJson() => _$IdealTypeDtoToJson(this);
}
