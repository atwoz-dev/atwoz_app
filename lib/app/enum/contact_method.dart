enum ContactMethod {
  phone('휴대폰 번호', 'PHONE_NUMBER'),
  kakao('카카오톡 ID', 'KAKAO');

  final String label;
  final String value;

  const ContactMethod(this.label, this.value);

  // 서버 데이터를 enum으로 변환
  static final _byValue = {
    for (final value in ContactMethod.values) value.name: value,
  };

  static ContactMethod? parse(String? value) => _byValue[value];
}
