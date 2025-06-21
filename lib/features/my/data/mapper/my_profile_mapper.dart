import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/constants/region_data.dart';
import 'package:atwoz_app/app/enum/education.dart';
import 'package:atwoz_app/app/enum/enum.dart';
import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/my/data/dto/profile_update_request_dto.dart';
import 'package:atwoz_app/features/my/domain/domain.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';

extension MyProfileMapper on GlobalUserProfile {
  MyProfile toMyProfile() {
    return MyProfile(
      profileImages: [],
      job: Job.parse(job),
      region: addressData.getLocationString(city, district),
      education: Education.parse(highestEducation),
      smokingStatus: SmokingStatus.parse(smokingStatus),
      drinkingStatus: DrinkingStatus.parse(drinkingStatus),
      religion: Religion.parse(religion),
      mbti: mbti,
      hobbies: hobbies.map((e) => Hobby.parse(e)).toList(),
      nickname: nickname,
      age: DateTime.now().year - yearOfBirth + 1,
      height: height,
      gender: switch (gender) {
        'male' => GenderEnum.male,
        'female' => GenderEnum.female,
        _ => GenderEnum.male,
      },
      phoneNum: const PhoneNumberTextFormatter().formatPhoneNumber(phoneNumber),
    );
  }
}

extension ProfileUpdateRequestDtoMapper on MyProfile {
  ProfileUpdateRequestDto toProfileUpdateRequestDto() {
    return ProfileUpdateRequestDto(
      nickName: nickname,
      gender: gender.name.toUpperCase(),
      yearOfBirth: DateTime.now().year - age + 1,
      height: height,
      district: addressData.getDistrictValue(region),
      highestEducation: education.toJson(),
      mbti: mbti,
      smokingStatus: smokingStatus.name.toUpperCase(),
      drinkingStatus: drinkingStatus.name.toUpperCase(),
      religion: religion.name.toUpperCase(),
      hobbies: hobbies.map((e) => e.toJson()).toList(),
      job: job.toJson(),
    );
  }
}
