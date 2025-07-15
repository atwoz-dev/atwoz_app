// Enum → 백엔드 대문자 스네이크_CASE 변환
extension EnumToJson on Enum {
  String toJson() {
    final converted = name
        .replaceAllMapped(
          RegExp(r'[A-Z]'),
          (match) => '_${match.group(0)}',
        )
        .toUpperCase();

    return converted.startsWith('_') ? converted.substring(1) : converted;
  }
}

// 백엔드 응답을 Enum으로 변환
extension StringToEnum on String {
  T toEnum<T extends Enum>(List<T> values
      //  ,{required T defaultValue}
      ) {
    return values.firstWhere(
      (e) => e.toJson() == this, // 백엔드 값과 매칭
      // orElse: () => defaultValue, // 기본값 설정
    );
  }
}

// 성별
enum Gender {
  male('남자'),
  female('여자');

  final String label;
  const Gender(this.label);

  static final Map<String, Gender> _byValue = {
    for (final value in Gender.values) value.name.toUpperCase(): value,
  };

  static Gender parse(String value) =>
      _byValue[value.toUpperCase()] ?? Gender.male;
}

const Map<Gender, String> genderMap = {
  Gender.female: "여자",
  Gender.male: "남자",
};

// 학력
enum HighestEducationEnum {
  highSchool,
  associate,
  bachelorsLocal,
  bachelorsSeoul,
  bachelorsOverseas,
  lawSchool,
  masters,
  doctorate,
  other
}

const Map<HighestEducationEnum, String> educationMap = {
  HighestEducationEnum.highSchool: "고등학교 졸업",
  HighestEducationEnum.associate: "전문대",
  HighestEducationEnum.bachelorsLocal: "지방 4년제",
  HighestEducationEnum.bachelorsSeoul: "서울 4년제",
  HighestEducationEnum.bachelorsOverseas: "해외대",
  HighestEducationEnum.lawSchool: "로스쿨",
  HighestEducationEnum.masters: "석사",
  HighestEducationEnum.doctorate: "박사",
  HighestEducationEnum.other: "기타",
};

// 흡연
enum SmokingStatusEnum { none, quit, occasional, daily, vape }

const Map<SmokingStatusEnum, String> smokingMap = {
  SmokingStatusEnum.none: "비흡연",
  SmokingStatusEnum.quit: "금연 중",
  SmokingStatusEnum.occasional: "가끔 피움",
  SmokingStatusEnum.daily: "매일 피움",
  SmokingStatusEnum.vape: "전자담배",
};

// 음주
enum DrinkingStatusEnum { none, quit, social, occasional, frequent }

const Map<DrinkingStatusEnum, String> drinkingMap = {
  DrinkingStatusEnum.none: "전혀 마시지 않음",
  DrinkingStatusEnum.quit: "금주 중",
  DrinkingStatusEnum.social: "사회적 음주",
  DrinkingStatusEnum.occasional: "가끔 마심",
  DrinkingStatusEnum.frequent: "술자리를 즐김",
};

// 종교
enum ReligionEnum { none, christian, catholic, buddhist, other }

const Map<ReligionEnum, String> religionMap = {
  ReligionEnum.none: "무교",
  ReligionEnum.christian: "기독교",
  ReligionEnum.catholic: "천주교",
  ReligionEnum.buddhist: "불교",
  ReligionEnum.other: "기타",
};

enum IntroducedCategory {
  grade('상위 5%'),
  recent('새로 가입했어요'),
  city('지금 근처인 사람!'),
  religion('종교가 같아요'),
  hobby('취미가 같아요');

  final String label;
  const IntroducedCategory(this.label);

  static final Map<String, IntroducedCategory> _byValue = {
    for (final category in IntroducedCategory.values)
      category.label.toUpperCase(): category,
  };

  static IntroducedCategory parse(String? value) =>
      _byValue[value?.toUpperCase()] ?? IntroducedCategory.grade;
}
