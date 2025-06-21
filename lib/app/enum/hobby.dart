import 'package:atwoz_app/app/constants/enum.dart';

enum Hobby {
  travel('국내여행/해외여행'),
  performanceAndExhibition('공연/전시회관람'),
  webtoonAndComics('웹툰/만화'),
  dramaAndEntertainment('드라마/예능보기'),
  pcAndMobileGames('PC/모바일게임'),
  animation('애니메이션'),
  golf('골프'),
  theaterAndMovies('연극/영화'),
  writing('글쓰기'),
  boardGames('보드게임'),
  photography('사진촬영'),
  singing('노래'),
  badmintonAndTennis('배드민턴/테니스'),
  dance('댄스'),
  driving('드라이브'),
  hikingAndClimbing('등산/클라이밍'),
  walking('산책'),
  foodHunt('맛집탐방'),
  shopping('쇼핑'),
  skiAndSnowboard('스키/스노우보드'),
  playingInstruments('악기연주'),
  wine('와인'),
  workout('운동/헬스'),
  yogaAndPilates('요가/필라테스'),
  cooking('요리'),
  interiorDesign('인테리어'),
  cycling('자전거'),
  camping('캠핑'),
  others('기타');

  final String label;
  const Hobby(this.label);

  static final Map<String, Hobby> _byValue = {
    for (final value in Hobby.values) value.label: value,
  };

  // label을 enum으로 변환
  static Hobby fromLabel(String? value) => _byValue[value] ?? Hobby.others;

  // 서버 데이터를 enum으로 변환
  static final Map<String, Hobby> _byServerData = {
    for (final value in Hobby.values) value.toJson(): value,
  };

  static Hobby parse(String? value) => _byServerData[value] ?? Hobby.others;
}
