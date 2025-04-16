import 'package:atwoz_app/app/constants/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ideal_type.freezed.dart';
part 'ideal_type.g.dart';

@freezed
class IdealType with _$IdealType {
  const factory IdealType({
    required int minAge,
    required int maxAge,
    required List<String> hobbies,
    required List<String> regions,
    required ReligionEnum religion,
    required SmokingStatusEnum smokingStatus,
    required DrinkingStatusEnum drinkingStatus,
  }) = _IdealType;

  factory IdealType.fromJson(
          Map<String, dynamic> json) => // TODO: DTO 파일 생성 시 제거
      _$IdealTypeFromJson(json);
}
