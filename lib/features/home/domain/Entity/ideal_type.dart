import 'package:freezed_annotation/freezed_annotation.dart';

part 'ideal_type.freezed.dart';
part 'ideal_type.g.dart';

@freezed
class IdealType with _$IdealType {
  const factory IdealType({
    required int minAge,
    required int maxAge,
    required List<String> hobbies,
    required String region,
    required String religion,
    required String smokingStatus,
    required String drinkingStatus,
  }) = _IdealType;

  factory IdealType.fromJson(Map<String, dynamic> json) =>
      _$IdealTypeFromJson(json);
}
