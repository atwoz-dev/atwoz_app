import 'package:atwoz_app/features/home/domain/enum/extended_enum.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ideal_type.freezed.dart';

@freezed
class IdealType with _$IdealType {
  const factory IdealType({
    required int minAge,
    required int maxAge,
    required List<String> hobbies,
    required List<String> cities,
    required ExtendedSmokingStatus smokingStatus,
    required ExtendedDrinkingStatus drinkingStatus,
    required ExtendedReligionStatus religion,
  }) = _IdealType;
}
