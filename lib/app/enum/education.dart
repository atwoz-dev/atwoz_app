enum Education {
  highSchool("고등학교 졸업"),
  associate("전문대"),
  bachelorsLocal("지방 4년제 대학"),
  bachelorsSeoul("서울 4년제 대학"),
  bachelorsOverseas("해외 4년제 대학"),
  lawSchool("로스쿨"),
  masters("석사"),
  doctorate("박사"),
  other("기타");

  final String label;
  const Education(this.label);

  static final Map<String, Education> _byValue = {
    for (final level in Education.values) level.label: level,
  };

  // label을 enum으로 변환
  static Education parse(String? value) => _byValue[value] ?? Education.other;

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
  static final Map<String, Education> _byServerData = {
    for (final education in Education.values)
      education.toServerString(): education,
  };

  static Education parseFromData(String? value) =>
      _byServerData[value] ?? Education.other;
}
