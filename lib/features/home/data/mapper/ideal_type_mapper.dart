import 'package:atwoz_app/app/constants/region_data.dart';
import 'package:atwoz_app/app/enum/enum.dart';
import 'package:atwoz_app/features/home/data/dto/ideal_type_dto.dart';
import 'package:atwoz_app/features/home/domain/enum/extended_enum.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';

extension IdealTypeMapper on IdealTypeDto {
  IdealType toIdealType() {
    return IdealType(
      minAge: minAge,
      maxAge: maxAge,
      hobbies: hobbies.map((e) => Hobby.parseFromData(e)).toList(),
      cities: cities.map((e) => addressData.getCityByValue(e)).toList(),
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

extension IdealTypeDtoMapper on IdealType {
  IdealTypeDto toIdealTypeDto() {
    return IdealTypeDto(
      minAge: minAge,
      maxAge: maxAge,
      hobbies: hobbies.map((e) => e.toServerString()).toList(),
      cities: cities.map((e) => e.value).toList(),
      smokingStatus: ExtendedEnum.toUpper(smokingStatus.status),
      drinkingStatus: ExtendedEnum.toUpper(drinkingStatus.status),
      religion: ExtendedEnum.toUpper(religion.status),
    );
  }
}
