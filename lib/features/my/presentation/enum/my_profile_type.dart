enum MyProfileInfoType {
  job('직업'),
  region('지역'),
  education('학력'),
  smokingStatus('흡연여부'),
  drinkingStatus('음주빈도'),
  religion('종교'),
  mbti('MBTI'),
  hobbies('취미');

  final String label;
  const MyProfileInfoType(this.label);

  static final Map<String, MyProfileInfoType> _byValue = {
    for (final type in MyProfileInfoType.values) type.name.toUpperCase(): type,
  };

  static MyProfileInfoType parse(String? value) =>
      _byValue[value?.toUpperCase()] ?? MyProfileInfoType.job;
}

enum MyBasicInfoType {
  nickname('닉네임'),
  age('나이'),
  height('키'),
  gender('성별'),
  phoneNum('연락처');

  final String label;
  const MyBasicInfoType(this.label);

  static final Map<String, MyBasicInfoType> _byValue = {
    for (final type in MyBasicInfoType.values) type.name.toUpperCase(): type,
  };

  static MyBasicInfoType parse(String? value) =>
      _byValue[value?.toUpperCase()] ?? MyBasicInfoType.nickname;
}
