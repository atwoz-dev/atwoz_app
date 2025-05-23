import 'package:atwoz_app/features/home/data/dto/ideal_type_dto.dart';
import 'package:atwoz_app/features/home/domain/enum/extended_enum.dart';
import 'package:atwoz_app/features/home/domain/model/ideal_type.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';

extension IdealTypeMapper on IdealTypeDto {
  IdealType toIdealType() {
    return IdealType(
      minAge: minAge,
      maxAge: maxAge,
      hobbies: hobbies,
      cities: cities,
      religion: ExtendedReligionStatus.parseUpper(
        religion,
        Religion.values,
        (r) => r.label,
      ),
      smokingStatus: ExtendedSmokingStatus.parseUpper(
        smokingStatus,
        SmokingStatus.values,
        (r) => r.label,
      ),
      drinkingStatus: ExtendedDrinkingStatus.parseUpper(
        drinkingStatus,
        DrinkingStatus.values,
        (r) => r.label,
      ),
    );
  }
}
