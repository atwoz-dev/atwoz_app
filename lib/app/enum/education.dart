import 'package:atwoz_app/app/constants/enum.dart';

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
    for (final value in Education.values) value.label: value,
  };

  // label을 enum으로 변환
  static Education fromLabel(String? value) =>
      _byValue[value] ?? Education.other;

  // 서버 데이터를 enum으로 변환
  static final Map<String, Education> _byServerData = {
    for (final value in Education.values) value.toJson(): value,
  };

  static Education parse(String? value) =>
      _byServerData[value] ?? Education.other;
}
