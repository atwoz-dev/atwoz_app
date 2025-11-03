// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ideal_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdealTypeDto _$IdealTypeDtoFromJson(Map<String, dynamic> json) => IdealTypeDto(
  minAge: (json['minAge'] as num).toInt(),
  maxAge: (json['maxAge'] as num).toInt(),
  hobbies: (json['hobbies'] as List<dynamic>).map((e) => e as String).toList(),
  cities: (json['cities'] as List<dynamic>).map((e) => e as String).toList(),
  religion: json['religion'] as String?,
  smokingStatus: json['smokingStatus'] as String?,
  drinkingStatus: json['drinkingStatus'] as String?,
);

Map<String, dynamic> _$IdealTypeDtoToJson(IdealTypeDto instance) =>
    <String, dynamic>{
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
      'hobbies': instance.hobbies,
      'cities': instance.cities,
      'religion': instance.religion,
      'smokingStatus': instance.smokingStatus,
      'drinkingStatus': instance.drinkingStatus,
    };
