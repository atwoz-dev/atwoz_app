import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/constants/region_data.dart';
import 'package:atwoz_app/app/enum/enum.dart';
import 'package:atwoz_app/features/home/data/dto/ideal_type_dto.dart';
import 'package:atwoz_app/features/home/domain/enum/extended_home_enum.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';

extension IdealTypeMapper on IdealTypeDto {
  IdealType toIdealType() {
    return IdealType(
      minAge: minAge,
      maxAge: maxAge,
      hobbies: hobbies.map(Hobby.parse).toList(),
      cities: cities.map(addressData.getCityByValue).toList(),
      religion: ExtendedReligionStatus.fromServerString(
        value: religion,
        enumValues: Religion.values,
        valueToLabel: (value) => value.label,
      ),
      smokingStatus: ExtendedSmokingStatus.fromServerString(
        value: smokingStatus,
        enumValues: SmokingStatus.values,
        valueToLabel: (value) => value.label,
      ),
      drinkingStatus: ExtendedDrinkingStatus.fromServerString(
        value: drinkingStatus,
        enumValues: DrinkingStatus.values,
        valueToLabel: (value) => value.label,
      ),
    );
  }
}

extension IdealTypeDtoMapper on IdealType {
  IdealTypeDto toIdealTypeDto() {
    return IdealTypeDto(
      minAge: minAge,
      maxAge: maxAge,
      hobbies: hobbies.map((e) => e.toJson()).toList(),
      cities: cities.map((e) => e.value).toList(),
      smokingStatus: ExtendedHomeEnum.toUpper(smokingStatus.status),
      drinkingStatus: ExtendedHomeEnum.toUpper(drinkingStatus.status),
      religion: ExtendedHomeEnum.toUpper(religion.status),
    );
  }
}
