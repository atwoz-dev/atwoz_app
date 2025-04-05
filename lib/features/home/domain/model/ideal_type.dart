import 'package:freezed_annotation/freezed_annotation.dart';

part 'ideal_type.freezed.dart';
part 'ideal_type.g.dart';

@freezed
class IdealType with _$IdealType {
  const factory IdealType({
    @Default(20) int minAge,
    @Default(46) int maxAge,
    @Default([]) List<String> hobbies,
    @Default([]) List<String> regions,
    @Default('') String religion,
    @Default('') String smokingStatus,
    @Default('') String drinkingStatus,
  }) = _IdealType;

  factory IdealType.fromJson(
          Map<String, dynamic> json) => // TODO: DTO 파일 생성 시 제거
      _$IdealTypeFromJson(json);
}
