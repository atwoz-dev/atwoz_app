// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_process_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpProcessStateImpl _$$SignUpProcessStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpProcessStateImpl(
      currentStep: (json['currentStep'] as num?)?.toInt() ?? 1,
      nickname: json['nickname'] as String? ?? null,
      selectedGender:
          $enumDecodeNullable(_$GenderEnumMap, json['selectedGender']) ??
              Gender.male,
      isLoading: json['isLoading'] as bool? ?? false,
      error: json['error'] as String? ?? null,
      selectedYear: (json['selectedYear'] as num?)?.toInt() ?? null,
      selectedHeight: (json['selectedHeight'] as num?)?.toInt() ?? null,
      selectedJob:
          $enumDecodeNullable(_$JobEnumMap, json['selectedJob']) ?? null,
      selectedLocation: json['selectedLocation'] as String? ?? null,
      selectedEducation:
          $enumDecodeNullable(_$EducationEnumMap, json['selectedEducation']) ??
              null,
      selectedFirstMbtiLetter:
          json['selectedFirstMbtiLetter'] as String? ?? null,
      selectedSecondMbtiLetter:
          json['selectedSecondMbtiLetter'] as String? ?? null,
      selectedThirdMbtiLetter:
          json['selectedThirdMbtiLetter'] as String? ?? null,
      selectedFourthMbtiLetter:
          json['selectedFourthMbtiLetter'] as String? ?? null,
      selectedSmoking: $enumDecodeNullable(
              _$SmokingStatusEnumMap, json['selectedSmoking']) ??
          null,
      selectedDrinking: $enumDecodeNullable(
              _$DrinkingStatusEnumMap, json['selectedDrinking']) ??
          null,
      selectedReligion:
          $enumDecodeNullable(_$ReligionEnumMap, json['selectedReligion']) ??
              null,
      selectedHobbies: (json['selectedHobbies'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$HobbyEnumMap, e))
              .toList() ??
          const <Hobby>[],
    );

Map<String, dynamic> _$$SignUpProcessStateImplToJson(
        _$SignUpProcessStateImpl instance) =>
    <String, dynamic>{
      'currentStep': instance.currentStep,
      'nickname': instance.nickname,
      'selectedGender': _$GenderEnumMap[instance.selectedGender]!,
      'isLoading': instance.isLoading,
      'error': instance.error,
      'selectedYear': instance.selectedYear,
      'selectedHeight': instance.selectedHeight,
      'selectedJob': _$JobEnumMap[instance.selectedJob],
      'selectedLocation': instance.selectedLocation,
      'selectedEducation': _$EducationEnumMap[instance.selectedEducation],
      'selectedFirstMbtiLetter': instance.selectedFirstMbtiLetter,
      'selectedSecondMbtiLetter': instance.selectedSecondMbtiLetter,
      'selectedThirdMbtiLetter': instance.selectedThirdMbtiLetter,
      'selectedFourthMbtiLetter': instance.selectedFourthMbtiLetter,
      'selectedSmoking': _$SmokingStatusEnumMap[instance.selectedSmoking],
      'selectedDrinking': _$DrinkingStatusEnumMap[instance.selectedDrinking],
      'selectedReligion': _$ReligionEnumMap[instance.selectedReligion],
      'selectedHobbies':
          instance.selectedHobbies.map((e) => _$HobbyEnumMap[e]!).toList(),
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

const _$JobEnumMap = {
  Job.researchAndEngineering: 'researchAndEngineering',
  Job.selfEmployment: 'selfEmployment',
  Job.sales: 'sales',
  Job.managementAndPlanning: 'managementAndPlanning',
  Job.studyingForFuture: 'studyingForFuture',
  Job.jobSearching: 'jobSearching',
  Job.education: 'education',
  Job.artsAndSports: 'artsAndSports',
  Job.foodService: 'foodService',
  Job.medicalAndHealth: 'medicalAndHealth',
  Job.mechanicalAndConstruction: 'mechanicalAndConstruction',
  Job.design: 'design',
  Job.marketingAndAdvertising: 'marketingAndAdvertising',
  Job.tradeAndDistribution: 'tradeAndDistribution',
  Job.mediaAndEntertainment: 'mediaAndEntertainment',
  Job.legalAndPublic: 'legalAndPublic',
  Job.productionAndManufacturing: 'productionAndManufacturing',
  Job.customerService: 'customerService',
  Job.travelAndTransport: 'travelAndTransport',
  Job.others: 'others',
};

const _$EducationEnumMap = {
  Education.highSchool: 'highSchool',
  Education.associate: 'associate',
  Education.bachelorsLocal: 'bachelorsLocal',
  Education.bachelorsSeoul: 'bachelorsSeoul',
  Education.bachelorsOverseas: 'bachelorsOverseas',
  Education.lawSchool: 'lawSchool',
  Education.masters: 'masters',
  Education.doctorate: 'doctorate',
  Education.other: 'other',
};

const _$SmokingStatusEnumMap = {
  SmokingStatus.none: 'none',
  SmokingStatus.quit: 'quit',
  SmokingStatus.occasional: 'occasional',
  SmokingStatus.daily: 'daily',
  SmokingStatus.vape: 'vape',
};

const _$DrinkingStatusEnumMap = {
  DrinkingStatus.none: 'none',
  DrinkingStatus.quit: 'quit',
  DrinkingStatus.social: 'social',
  DrinkingStatus.occasional: 'occasional',
  DrinkingStatus.frequent: 'frequent',
};

const _$ReligionEnumMap = {
  Religion.none: 'none',
  Religion.christian: 'christian',
  Religion.catholic: 'catholic',
  Religion.buddhist: 'buddhist',
  Religion.other: 'other',
};

const _$HobbyEnumMap = {
  Hobby.travel: 'travel',
  Hobby.performanceAndExhibition: 'performanceAndExhibition',
  Hobby.webtoonAndComics: 'webtoonAndComics',
  Hobby.dramaAndEntertainment: 'dramaAndEntertainment',
  Hobby.pcAndMobileGames: 'pcAndMobileGames',
  Hobby.animation: 'animation',
  Hobby.golf: 'golf',
  Hobby.theaterAndMovies: 'theaterAndMovies',
  Hobby.writing: 'writing',
  Hobby.boardGames: 'boardGames',
  Hobby.photography: 'photography',
  Hobby.singing: 'singing',
  Hobby.badmintonAndTennis: 'badmintonAndTennis',
  Hobby.dance: 'dance',
  Hobby.driving: 'driving',
  Hobby.hikingAndClimbing: 'hikingAndClimbing',
  Hobby.walking: 'walking',
  Hobby.foodHunt: 'foodHunt',
  Hobby.shopping: 'shopping',
  Hobby.skiAndSnowboard: 'skiAndSnowboard',
  Hobby.playingInstruments: 'playingInstruments',
  Hobby.wine: 'wine',
  Hobby.workout: 'workout',
  Hobby.yogaAndPilates: 'yogaAndPilates',
  Hobby.cooking: 'cooking',
  Hobby.interiorDesign: 'interiorDesign',
  Hobby.cycling: 'cycling',
  Hobby.camping: 'camping',
  Hobby.others: 'others',
};
