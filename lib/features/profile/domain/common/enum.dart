import 'package:atwoz_app/app/constants/icon_path.dart';

enum SmokingStatus {
  none("비흡연"),
  quit("금연"),
  occasional("가끔 피움"),
  daily("매일 피움"),
  vape("전자담배");

  final String label;
  const SmokingStatus(this.label);

  static final Map<String, SmokingStatus> _byValue = {
    for (final status in SmokingStatus.values)
      status.name.toUpperCase(): status,
  };

  static SmokingStatus parse(String? value) =>
      _byValue[value?.toUpperCase()] ?? SmokingStatus.none;
}

enum DrinkingStatus {
  none("전혀 마시지 않음"),
  quit("금주"),
  social("사회적 음주"),
  occasional("가끔 마심"),
  frequent("술자리를 즐김");

  final String label;
  const DrinkingStatus(this.label);

  static final Map<String, DrinkingStatus> _byValue = {
    for (final status in DrinkingStatus.values)
      status.name.toUpperCase(): status,
  };

  static DrinkingStatus parse(String? value) =>
      _byValue[value?.toUpperCase()] ?? DrinkingStatus.none;
}

enum EducationLevel {
  highSchool("고등학교 졸업"),
  associate("전문대 졸업"),
  bachelorsLocal("지방 4년제 대학 졸업"),
  bachelorsSeoul("서울 4년제 대학 졸업"),
  bachelorsOverseas("해외 4년제 대학 졸업"),
  lawSchool("로스쿨 졸업"),
  masters("석사 졸업"),
  doctorate("박사 졸업"),
  other("기타");

  final String label;
  const EducationLevel(this.label);

  static final Map<String, EducationLevel> _byValue = {
    for (final level in EducationLevel.values)
      level.name.toUpperCase().replaceAll('_', ''): level,
  };

  static EducationLevel parse(String? value) =>
      _byValue[value?.toUpperCase()] ?? EducationLevel.other;
}

enum Religion {
  none("무교"),
  christian("기독교"),
  catholic("천주교"),
  buddhist("불교"),
  other("기타");

  final String label;
  const Religion(this.label);

  static final Map<String, Religion> _byValue = {
    for (final religion in Religion.values)
      religion.name.toUpperCase(): religion,
  };

  static Religion parse(String? value) =>
      _byValue[value?.toUpperCase()] ?? Religion.none;
}

enum Region {
  seoul("서울"),
  daejeon("대전");

  final String label;
  const Region(this.label);

  static final Map<String, Region> _byValue = {
    for (final region in Region.values) region.name.toUpperCase(): region,
  };

  static Region parse(String? value) =>
      _byValue[value?.toUpperCase()] ?? Region.seoul;
}

enum FavoriteType {
  interest(IconPath.generalFavorite, '관심있어요'),
  highlyInterested(IconPath.strongFavorite, '매우 관심있어요');

  final String iconPath;
  final String label;
  const FavoriteType([this.iconPath = '', this.label = '']);

  static final Map<String, FavoriteType> _byValue = {
    for (final type in FavoriteType.values)
      type.name.toUpperCase().replaceAll('_', ''): type,
  };

  static FavoriteType? tryParse(String? value) =>
      _byValue[value?.toUpperCase()];
}
