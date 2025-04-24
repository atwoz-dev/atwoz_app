enum MySettingType {
  pushNotification('푸쉬알림 설정'),
  accountSetting('계정 설정'),
  versionInfo('버전정보'),
  contactSetting('연락처 설정'),
  privacyPolicy('개인정보 취급방침'),
  useTerms('이용약관'),
  faq('FAQ');

  final String label;
  const MySettingType(this.label);

  static final Map<String, MySettingType> _byValue = {
    for (final category in MySettingType.values)
      category.label.toUpperCase(): category,
  };

  static MySettingType parse(String? value) =>
      _byValue[value?.toUpperCase()] ?? MySettingType.pushNotification;
}
