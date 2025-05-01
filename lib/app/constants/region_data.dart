List<Map<String, dynamic>> cityRegionMap = [
  {
    "city": "서울",
    "regions": [
      "강남구",
      "강동구",
      "강북구",
      "강서구",
      "관악구",
      "광진구",
      "구로구",
      "금천구",
      "노원구",
      "도봉구",
      "동대문구",
      "동작구",
      "마포구",
      "서대문구",
      "서초구",
      "성동구",
      "성북구",
      "송파구",
      "양천구",
      "영등포구",
      "용산구",
      "은평구",
      "종로구",
      "중구",
      "중랑구"
    ]
  },
  {
    "city": "인천",
    "regions": [
      "강화군",
      "계양구",
      "남동구",
      "동구",
      "미추홀구",
      "부평구",
      "서구",
      "연수구",
      "옹진군",
      "중구"
    ]
  },
  {
    "city": "부산",
    "regions": [
      "강서구",
      "금정구",
      "기장군",
      "남구",
      "동구",
      "동래구",
      "부산진구",
      "북구",
      "사상구",
      "사하구",
      "서구",
      "수영구",
      "연제구",
      "영도구",
      "중구",
      "해운대구"
    ]
  },
  {
    "city": "대전",
    "regions": ["대덕구", "동구", "서구", "유성구", "중구"]
  },
  {
    "city": "대구",
    "regions": ["남구", "달서구", "달성군", "동구", "북구", "서구", "수성구", "중구"]
  },
  {
    "city": "광주",
    "regions": ["광산구", "남구", "동구", "북구", "서구"]
  },
  {
    "city": "울산",
    "regions": ["남구", "동구", "북구", "울주군", "중구"]
  },
  {
    "city": "제주",
    "regions": ["서귀포시", "제주시"]
  },
  {
    "city": "세종",
    "regions": [""]
  },
  {
    "city": "강원도",
    "regions": [
      "강릉시",
      "고성군",
      "동해시",
      "삼척시",
      "속초시",
      "양구군",
      "양양군",
      "영월군",
      "원주시",
      "인제군",
      "정선군",
      "철원군",
      "춘천시",
      "평창군",
      "홍천군",
      "화천군",
      "횡성군"
    ]
  },
  {
    "city": "경기도",
    "regions": [
      "가평군",
      "고양시",
      "과천시",
      "광명시",
      "광주시",
      "구리시",
      "군포시",
      "김포시",
      "남양주시",
      "동두천시",
      "부천시",
      "성남시",
      "수원시",
      "시흥시",
      "안산시",
      "안성시",
      "안양시",
      "양주시",
      "양평군",
      "여주시",
      "연천군",
      "오산시",
      "용인시",
      "의왕시",
      "의정부시",
      "이천시",
      "파주시",
      "평택시",
      "포천시",
      "하남시",
      "화성시"
    ]
  },
  {
    "city": "경상남도",
    "regions": [
      "거제시",
      "거창군",
      "고성군",
      "김해시",
      "남해군",
      "밀양시",
      "사천시",
      "산청군",
      "양산시",
      "의령군",
      "진주시",
      "창녕군",
      "창원시",
      "통영시",
      "하동군",
      "함안군",
      "함양군",
      "합천군"
    ]
  },
  {
    "city": "경상북도",
    "regions": [
      "고령군",
      "경산시",
      "경주시",
      "김천시",
      "안동시",
      "구미시",
      "군위군",
      "문경시",
      "봉화군",
      "상주시",
      "성주군",
      "영주시",
      "영천시",
      "울진군",
      "울릉군",
      "의성군",
      "영양군",
      "영덕군",
      "청송군",
      "청도군",
      "칠곡군",
      "예천군",
      "포항시"
    ]
  },
  {
    "city": "충청남도",
    "regions": [
      "계룡시",
      "공주시",
      "금산군",
      "논산시",
      "당진시",
      "보령시",
      "부여군",
      "서산시",
      "서천군",
      "아산시",
      "예산군",
      "천안시",
      "청양군",
      "태안군",
      "홍성군"
    ]
  },
  {
    "city": "충청북도",
    "regions": [
      "괴산군",
      "단양군",
      "보은군",
      "영동군",
      "옥천군",
      "음성군",
      "제천시",
      "증평군",
      "진천군",
      "청주시",
      "충주시"
    ]
  },
  {
    "city": "전라남도",
    "regions": [
      "강진군",
      "고흥군",
      "곡성군",
      "광양시",
      "구례군",
      "나주시",
      "담양군",
      "목포시",
      "무안군",
      "보성군",
      "순천시",
      "신안군",
      "여수시",
      "영광군",
      "영암군",
      "완도군",
      "장성군",
      "장흥군",
      "진도군",
      "함평군",
      "해남군",
      "화순군"
    ]
  },
  {
    "city": "전라북도",
    "regions": [
      "고창군",
      "군산시",
      "김제시",
      "남원시",
      "무주군",
      "부안군",
      "순창군",
      "완주군",
      "익산시",
      "임실군",
      "장수군",
      "전주시",
      "정읍시",
      "진안군"
    ]
  },
];
// TODO: cityRegionMap 추후 삭제 예정

enum CityEnum {
  seoul('서울'),
  incheon('인천'),
  busan('부산'),
  daejeon('대전'),
  daegu('대구'),
  gwangju('광주'),
  ulsan('울산'),
  jeju("제주"),
  sejong('세종'),
  gangwon('강원도'),
  gyeonggi('경기도'),
  gyeongsangnam('경상남도'),
  gyeongsangbuk('경상북도'),
  chungcheongnam('충청남도'),
  chungcheongbuk('충청북도'),
  jeollanam('전라남도'),
  jeollabuk('전라북도');

  final String label;
  const CityEnum(this.label);

  static CityEnum? fromServerData(String? value) {
    if (value == null) return null;
    try {
      final camelCase = value.toLowerCase();
      return CityEnum.values.firstWhere(
        (city) => city.name == camelCase,
      );
    } catch (e) {
      return null;
    }
  }
}

enum DistrictEnum {
  // 서울
  gangnamGu(CityEnum.seoul, '강남구'),
  gangdongGu(CityEnum.seoul, '강동구'),
  gangbukGu(CityEnum.seoul, '강북구'),
  gangseoGu(CityEnum.seoul, '강서구'),
  gwanakGu(CityEnum.seoul, '관악구'),
  gwangjinGu(CityEnum.seoul, '광진구'),
  guroGu(CityEnum.seoul, '구로구'),
  geumcheonGu(CityEnum.seoul, '금천구'),
  nowonGu(CityEnum.seoul, '노원구'),
  dobongGu(CityEnum.seoul, '도봉구'),
  dongdaemunGu(CityEnum.seoul, '동대문구'),
  dongjakGu(CityEnum.seoul, '동작구'),
  mapoGu(CityEnum.seoul, '마포구'),
  seodaemunGu(CityEnum.seoul, '서대문구'),
  seochoGu(CityEnum.seoul, '서초구'),
  seongdongGu(CityEnum.seoul, '성동구'),
  seongbukGu(CityEnum.seoul, '성북구'),
  songpaGu(CityEnum.seoul, '송파구'),
  yangcheonGu(CityEnum.seoul, '양천구'),
  yeongdeungpoGu(CityEnum.seoul, '영등포구'),
  yongsanGu(CityEnum.seoul, '용산구'),
  eunpyeongGu(CityEnum.seoul, '은평구'),
  jongnoGu(CityEnum.seoul, '종로구'),
  jungGu(CityEnum.seoul, '중구'),
  jungnangGu(CityEnum.seoul, '중랑구'),

  // 인천
  ganghwaGun(CityEnum.incheon, "강화군"),
  gyeyangGu(CityEnum.incheon, "계양구"),
  namdongGu(CityEnum.incheon, "남동구"),
  dongGuIncheon(CityEnum.incheon, "동구"),
  michuholdGu(CityEnum.incheon, "미추홀구"),
  bupyeongGu(CityEnum.incheon, "부평구"),
  seoGuIncheon(CityEnum.incheon, "서구"),
  yeonsuGu(CityEnum.incheon, "연수구"),
  ongjinGun(CityEnum.incheon, "옹진군"),
  jungGuIncheon(CityEnum.incheon, "중구"),

  // 부산
  gangseoGuBusan(CityEnum.busan, "강서구"),
  geumjeongGu(CityEnum.busan, "금정구"),
  gijangGun(CityEnum.busan, "기장군"),
  namGuBusan(CityEnum.busan, "남구"),
  dongGuBusan(CityEnum.busan, "동구"),
  dongnaeGu(CityEnum.busan, "동래구"),
  busanjinGu(CityEnum.busan, "부산진구"),
  bukGuBusan(CityEnum.busan, "북구"),
  sasangGu(CityEnum.busan, "사상구"),
  sahaGu(CityEnum.busan, "사하구"),
  seoGuBusan(CityEnum.busan, "서구"),
  suyeongGu(CityEnum.busan, "수영구"),
  yeonjeGu(CityEnum.busan, "연제구"),
  yeongdoGu(CityEnum.busan, "영도구"),
  jungGuBusan(CityEnum.busan, "중구"),
  haeundaeGu(CityEnum.busan, "해운대구"),

  // 대전
  daedeokGu(CityEnum.daejeon, "대덕구"),
  dongGuDaejeon(CityEnum.daejeon, "동구"),
  seoGuDaejeon(CityEnum.daejeon, "서구"),
  yuseongGu(CityEnum.daejeon, "유성구"),
  jungGuDaejeon(CityEnum.daejeon, "중구"),

  // 대구
  namGuDaegu(CityEnum.daegu, "남구"),
  dalseoGu(CityEnum.daegu, "달서구"),
  dalseongGun(CityEnum.daegu, "달성군"),
  dongGuDaegu(CityEnum.daegu, "동구"),
  bukGuDaegu(CityEnum.daegu, "북구"),
  seoGuDaegu(CityEnum.daegu, "서구"),
  suseongGu(CityEnum.daegu, "수성구"),
  jungGuDaegu(CityEnum.daegu, "중구"),

  // 광주
  gwangsanGu(CityEnum.gwangju, "광산구"),
  namGuGwangju(CityEnum.gwangju, "남구"),
  dongGuGwangju(CityEnum.gwangju, "동구"),
  bukGuGwangju(CityEnum.gwangju, "북구"),
  seoGuGwangju(CityEnum.gwangju, "서구"),

  // 울산
  namGuUlsan(CityEnum.ulsan, "남구"),
  dongGuUlsan(CityEnum.ulsan, "동구"),
  bukGuUlsan(CityEnum.ulsan, "북구"),
  uljuGun(CityEnum.ulsan, "울주군"),
  jungGuUlsan(CityEnum.ulsan, "중구"),

  // 제주
  jejuSi(CityEnum.jeju, "제주시"),
  seogwipoSi(CityEnum.jeju, "서귀포시"),

  // 세종
  sejong(CityEnum.sejong, "세종특별자치시"),

  // 강원도
  gangneungSi(CityEnum.gangwon, "강릉시"),
  goseongGun(CityEnum.gangwon, "고성군"),
  donghaeSi(CityEnum.gangwon, "동해시"),
  samcheokSi(CityEnum.gangwon, "삼척시"),
  sokchoSi(CityEnum.gangwon, "속초시"),
  yangguGun(CityEnum.gangwon, "양구군"),
  yangyangGun(CityEnum.gangwon, "양양군"),
  yeongwolGun(CityEnum.gangwon, "영월군"),
  wonjuSi(CityEnum.gangwon, "원주시"),
  injeGun(CityEnum.gangwon, "인제군"),
  jeongseonGun(CityEnum.gangwon, "정선군"),
  cheorwonGun(CityEnum.gangwon, "철원군"),
  chuncheonSi(CityEnum.gangwon, "춘천시"),
  pyeongchangGun(CityEnum.gangwon, "평창군"),
  hongcheonGun(CityEnum.gangwon, "홍천군"),
  hwacheonGun(CityEnum.gangwon, "화천군"),
  hwangseongGun(CityEnum.gangwon, "횡성군"),

  // 경기도
  gapyeongGun(CityEnum.gyeonggi, "가평군"),
  goyangSi(CityEnum.gyeonggi, "고양시"),
  gwacheonSi(CityEnum.gyeonggi, "과천시"),
  gwangmyeongSi(CityEnum.gyeonggi, "광명시"),
  gwangjuSi(CityEnum.gyeonggi, "광주시"),
  guriSi(CityEnum.gyeonggi, "구리시"),
  gunpoSi(CityEnum.gyeonggi, "군포시"),
  gimpoSi(CityEnum.gyeonggi, "김포시"),
  namyangjuSi(CityEnum.gyeonggi, "남양주시"),
  dongducheonSi(CityEnum.gyeonggi, "동두천시"),
  bucheonSi(CityEnum.gyeonggi, "부천시"),
  seongnamSi(CityEnum.gyeonggi, "성남시"),
  suwonSi(CityEnum.gyeonggi, "수원시"),
  siheungSi(CityEnum.gyeonggi, "시흥시"),
  ansanSi(CityEnum.gyeonggi, "안산시"),
  anseongSi(CityEnum.gyeonggi, "안성시"),
  anyangSi(CityEnum.gyeonggi, "안양시"),
  yangjuSi(CityEnum.gyeonggi, "양주시"),
  yangpyeongGun(CityEnum.gyeonggi, "양평군"),
  yeojuSi(CityEnum.gyeonggi, "여주시"),
  yeoncheonGun(CityEnum.gyeonggi, "연천군"),
  osanSi(CityEnum.gyeonggi, "오산시"),
  yonginSi(CityEnum.gyeonggi, "용인시"),
  uiwangSi(CityEnum.gyeonggi, "의왕시"),
  uijeongbuSi(CityEnum.gyeonggi, "의정부시"),
  icheonSi(CityEnum.gyeonggi, "이천시"),
  pajuSi(CityEnum.gyeonggi, "파주시"),
  pyeongtaekSi(CityEnum.gyeonggi, "평택시"),
  pocheonSi(CityEnum.gyeonggi, "포천시"),
  hanamSi(CityEnum.gyeonggi, "하남시"),
  hwaseongSi(CityEnum.gyeonggi, "화성시"),

  // 경상남도
  geojeSi(CityEnum.gyeongsangnam, "거제시"),
  geochangGun(CityEnum.gyeongsangnam, "거창군"),
  goseongGunGyeongsangnam(CityEnum.gyeongsangnam, "고성군"),
  gimhaeSi(CityEnum.gyeongsangnam, "김해시"),
  namhaeGun(CityEnum.gyeongsangnam, "남해군"),
  milyangSi(CityEnum.gyeongsangnam, "밀양시"),
  sacheonSi(CityEnum.gyeongsangnam, "사천시"),
  sanchangGun(CityEnum.gyeongsangnam, "산청군"),
  yangsanSi(CityEnum.gyeongsangnam, "양산시"),
  uiryeongGun(CityEnum.gyeongsangnam, "의령군"),
  jinjuSi(CityEnum.gyeongsangnam, "진주시"),
  changnyeongGun(CityEnum.gyeongsangnam, "창녕군"),
  changwonSi(CityEnum.gyeongsangnam, "창원시"),
  tongyeongSi(CityEnum.gyeongsangnam, "통영시"),
  hadongGun(CityEnum.gyeongsangnam, "하동군"),
  hamanGun(CityEnum.gyeongsangnam, "함안군"),
  hamyangGun(CityEnum.gyeongsangnam, "함양군"),
  hapcheonGun(CityEnum.gyeongsangnam, "합천군"),

  // 경상북도
  goryeongGun(CityEnum.gyeongsangbuk, "고령군"),
  gyeongsanSi(CityEnum.gyeongsangbuk, "경산시"),
  gyeongjuSi(CityEnum.gyeongsangbuk, "경주시"),
  gimcheonSi(CityEnum.gyeongsangbuk, "김천시"),
  andongSi(CityEnum.gyeongsangbuk, "안동시"),
  gumiSi(CityEnum.gyeongsangbuk, "구미시"),
  gunwiGun(CityEnum.gyeongsangbuk, "군위군"),
  mungyeongSi(CityEnum.gyeongsangbuk, "문경시"),
  bonghwaGun(CityEnum.gyeongsangbuk, "봉화군"),
  sangjuSi(CityEnum.gyeongsangbuk, "상주시"),
  seongjuGun(CityEnum.gyeongsangbuk, "성주군"),
  yeongjuSi(CityEnum.gyeongsangbuk, "영주시"),
  yeongcheonSi(CityEnum.gyeongsangbuk, "영천시"),
  uljinGun(CityEnum.gyeongsangbuk, "울진군"),
  ullungGun(CityEnum.gyeongsangbuk, "울릉군"),
  uiseongGun(CityEnum.gyeongsangbuk, "의성군"),
  yeongyangGun(CityEnum.gyeongsangbuk, "영양군"),
  yeongdeokGun(CityEnum.gyeongsangbuk, "영덕군"),
  cheongsongGun(CityEnum.gyeongsangbuk, "청송군"),
  cheongdoGun(CityEnum.gyeongsangbuk, "청도군"),
  chilgokGun(CityEnum.gyeongsangbuk, "칠곡군"),
  yecheonGun(CityEnum.gyeongsangbuk, "예천군"),
  pohangSi(CityEnum.gyeongsangbuk, "포항시"),

  // 충청남도
  gyeryongSi(CityEnum.chungcheongnam, "계룡시"),
  gongjuSi(CityEnum.chungcheongnam, "공주시"),
  geumsanGun(CityEnum.chungcheongnam, "금산군"),
  nongsanSi(CityEnum.chungcheongnam, "논산시"),
  dangjinSi(CityEnum.chungcheongnam, "당진시"),
  boryeongSi(CityEnum.chungcheongnam, "보령시"),
  buyeoGun(CityEnum.chungcheongnam, "부여군"),
  seosanSi(CityEnum.chungcheongnam, "서산시"),
  secheonGun(CityEnum.chungcheongnam, "서천군"),
  asanSi(CityEnum.chungcheongnam, "아산시"),
  yesanGun(CityEnum.chungcheongnam, "예산군"),
  cheonanSi(CityEnum.chungcheongnam, "천안시"),
  cheongyangGun(CityEnum.chungcheongnam, "청양군"),
  taeanGun(CityEnum.chungcheongnam, "태안군"),
  hongseongGun(CityEnum.chungcheongnam, "홍성군"),

  // 충청북도
  goesanGun(CityEnum.chungcheongbuk, "괴산군"),
  danyangGun(CityEnum.chungcheongbuk, "단양군"),
  boeunGun(CityEnum.chungcheongbuk, "보은군"),
  yeongdongGun(CityEnum.chungcheongbuk, "영동군"),
  okcheonGun(CityEnum.chungcheongbuk, "옥천군"),
  eumseongGun(CityEnum.chungcheongbuk, "음성군"),
  jecheonSi(CityEnum.chungcheongbuk, "제천시"),
  jeungpyeongGun(CityEnum.chungcheongbuk, "증평군"),
  jincheonGun(CityEnum.chungcheongbuk, "진천군"),
  cheongjuSi(CityEnum.chungcheongbuk, "청주시"),
  chungjuSi(CityEnum.chungcheongbuk, "충주시"),

  // 전라남도
  gangjinGun(CityEnum.jeollanam, "강진군"),
  goheungGun(CityEnum.jeollanam, "고흥군"),
  gokseongGun(CityEnum.jeollanam, "곡성군"),
  gwangyangSi(CityEnum.jeollanam, "광양시"),
  guraeGun(CityEnum.jeollanam, "구례군"),
  najuSi(CityEnum.jeollanam, "나주시"),
  damyangGun(CityEnum.jeollanam, "담양군"),
  mokpoSi(CityEnum.jeollanam, "목포시"),
  muanGun(CityEnum.jeollanam, "무안군"),
  boseongGun(CityEnum.jeollanam, "보성군"),
  suncheonSi(CityEnum.jeollanam, "순천시"),
  shinanGun(CityEnum.jeollanam, "신안군"),
  yeosuSi(CityEnum.jeollanam, "여수시"),
  yeonggwangGun(CityEnum.jeollanam, "영광군"),
  yeongamGun(CityEnum.jeollanam, "영암군"),
  wandoGun(CityEnum.jeollanam, "완도군"),
  jangseongGun(CityEnum.jeollanam, "장성군"),
  jangheungGun(CityEnum.jeollanam, "장흥군"),
  jindoGun(CityEnum.jeollanam, "진도군"),
  hampyeongGun(CityEnum.jeollanam, "함평군"),
  haenamGun(CityEnum.jeollanam, "해남군"),
  hwasunGun(CityEnum.jeollanam, "화순군"),

  // 전라북도
  gochangGun(CityEnum.jeollabuk, "고창군"),
  gunsanSi(CityEnum.jeollabuk, "군산시"),
  gimjeSi(CityEnum.jeollabuk, "김제시"),
  namwonSi(CityEnum.jeollabuk, "남원시"),
  mujuGun(CityEnum.jeollabuk, "무주군"),
  buanGun(CityEnum.jeollabuk, "부안군"),
  sunchangGun(CityEnum.jeollabuk, "순창군"),
  wanjuGun(CityEnum.jeollabuk, "완주군"),
  iksanSi(CityEnum.jeollabuk, "익산시"),
  imsilGun(CityEnum.jeollabuk, "임실군"),
  jangsuGun(CityEnum.jeollabuk, "장수군"),
  jeonjuSi(CityEnum.jeollabuk, "전주시"),
  jeongeupSi(CityEnum.jeollabuk, "정읍시"),
  jinanGun(CityEnum.jeollabuk, "진안군");

  final CityEnum city;
  final String label;
  const DistrictEnum(this.city, this.label);

  static DistrictEnum? fromServerData(String? value) {
    if (value == null) return null;
    try {
      // 서버에서 받은 대문자 값을 camelCase로 변환
      final parts = value.split('_');
      if (parts.isEmpty) return null;

      // 첫 번째 단어는 모두 소문자로
      final firstWord = parts[0].toLowerCase();

      // 나머지 단어들은 첫 글자만 대문자로
      final remainingWords = parts.skip(1).map((part) {
        if (part.isEmpty) return '';
        return part[0].toUpperCase() + part.substring(1).toLowerCase();
      });

      final camelCase = firstWord + remainingWords.join();

      return DistrictEnum.values.firstWhere(
        (district) => district.name == camelCase,
      );
    } catch (e) {
      return null;
    }
  }

  // label을 enum으로 변환
  static DistrictEnum? fromLabel(String? label) {
    if (label == null) return null;
    try {
      return DistrictEnum.values.firstWhere(
        (district) => district.label == label,
      );
    } catch (e) {
      return null;
    }
  }

  // 서버 형식으로 변환하는 메서드
  String toServerString() {
    // camelCase를 UPPER_SNAKE_CASE로 변환
    final serverFormat = name
        .replaceAllMapped(
          RegExp(r'([A-Z])'),
          (match) => '_${match.group(0)}',
        )
        .toUpperCase();

    // 맨 앞의 언더스코어 제거
    return serverFormat.startsWith('_')
        ? serverFormat.substring(1)
        : serverFormat;
  }
}

// 서버 응답을 파싱하기 위한 확장 메서드
extension LocationParsingExtension on Map<String, dynamic> {
  String? getLocationString() {
    final city = this['city'] as String?; // 'CityEnum'에서 'city'로 변경
    final district = this['district'] as String?;

    if (city == null) return null;

    final CityEnum? cityEnum = CityEnum.fromServerData(city);
    final DistrictEnum? districtEnum = DistrictEnum.fromServerData(district);

    if (cityEnum == null) return null;

    if (districtEnum != null) {
      return '${cityEnum.label} ${districtEnum.label}';
    }

    return cityEnum.label;
  }
}
