enum Job {
  researchAndEngineering('연구개발/엔지니어'),
  selfEmployment('개인사업/자영업'),
  sales('영업/판매'),
  managementAndPlanning('경영/기획'),
  studyingForFuture('미래를 위한 공부중'),
  jobSearching('취업 준비중'),
  education('교육'),
  artsAndSports('예술/체육'),
  foodService('요식업'),
  medicalAndHealth('의료/보건'),
  mechanicalAndConstruction('기계/건설'),
  design('디자인'),
  marketingAndAdvertising('마케팅/광고'),
  tradeAndDistribution('무역/유통'),
  mediaAndEntertainment('방송언론/연애'),
  legalAndPublic('법률/공공'),
  productionAndManufacturing('생산/제조'),
  customerService('서비스'),
  travelAndTransport('여행/운송'),
  others('기타');

  final String label;
  const Job(this.label);

  static final Map<String, Job> _byValue = {
    for (final level in Job.values) level.label: level,
  };

  // label을 enum으로 변환
  static Job parse(String? value) => _byValue[value] ?? Job.others;

  // enum을 서버데이터로 변환
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
  // 서버에서 오는 프로필 데이터는 id, 전화번호 제외 모두 nullable
  static final Map<String, Job> _byServerData = {
    for (final job in Job.values) job.toServerString(): job,
  };

  static Job parseFromData(String? value) => _byServerData[value] ?? Job.others;
}
