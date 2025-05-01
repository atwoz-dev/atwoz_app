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

  // label을 enum으로 반환
  static Job? fromLabel(String? label) {
    if (label == null) return null;
    try {
      return Job.values.firstWhere(
        (job) => job.label == label,
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
  static Job? fromServerData(String? value) {
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

      return Job.values.firstWhere(
        (job) => job.name == camelCase,
      );
    } catch (e) {
      return null;
    }
  }
}
