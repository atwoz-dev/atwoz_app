enum ReportReason {
  stolenImage('허위프로필 (사진도용 등)'),
  inappropriateImage('부적절한 사진'),
  explicitContent('과도한 성적 표현'),
  offensiveLanguage('욕설 및 불쾌감을 주는 표현'),
  contactInProfile('프로필 내 연락처 기재'),
  etc('기타');

  final String label;
  const ReportReason(this.label);

  static final Map<String, ReportReason> _byLabel = {
    for (final value in ReportReason.values) value.label: value,
  };

  // label을 enum으로 변환
  static ReportReason fromLabel(String? value) =>
      _byLabel[value] ?? ReportReason.etc;
}
