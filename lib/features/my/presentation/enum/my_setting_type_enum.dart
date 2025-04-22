enum MySettingTypeEnum {
  pushNotification,
  accountSetting,
  versionInfo,
  contactSetting,
  privacyPolicy,
  useTerms,
  faq,
}

const Map<MySettingTypeEnum, String> mySettingTypeMap = {
  MySettingTypeEnum.pushNotification: '푸쉬알림 설정',
  MySettingTypeEnum.accountSetting: '게정 설정',
  MySettingTypeEnum.versionInfo: '버전정보',
  MySettingTypeEnum.contactSetting: '연락처 설정',
  MySettingTypeEnum.privacyPolicy: '개인정보 취급방침',
  MySettingTypeEnum.useTerms: '이용약관',
  MySettingTypeEnum.faq: 'FAQ'
};
