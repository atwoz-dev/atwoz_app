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

  // label을 enum으로 반환
  static Hobby? fromLabel(String? label) {
    if (label == null) return null;
    try {
      return Hobby.values.firstWhere(
        (hobby) => hobby.label == label,
      );
    } catch (e) {
      return null;
    }
  }

  // 서버 형식으로 변환
  String toServerString() {
    final serverFormat = name
        .replaceAllMapped(
          RegExp(r'[A-Z]'),
          (match) => '_${match.group(0)}',
        )
        .toUpperCase();

    return serverFormat.startsWith('_')
        ? serverFormat.substring(1)
        : serverFormat;
  }

  // 서버 데이터를 enum으로 변환
  static Hobby? fromServerData(String? value) {
    if (value == null) return null;
    try {
      final parts = value.split('_');
      if (parts.isEmpty) return null;

      final firstWord = parts[0].toLowerCase();
      final remainingWords = parts.skip(1).map((part) {
        if (part.isEmpty) return '';
        return part[0].toUpperCase() + part.substring(1).toLowerCase();
      });

      final camelCase = firstWord + remainingWords.join();

      return Hobby.values.firstWhere(
        (hobby) => hobby.name == camelCase,
      );
    } catch (e) {
      return null;
    }
  }
}
