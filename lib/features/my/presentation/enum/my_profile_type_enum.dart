enum MyProfileInfoTypeEnum {
  job,
  region,
  education,
  smokingStatus,
  drinkingStatus,
  religion,
  mbti,
  hobbies,
}

const Map<MyProfileInfoTypeEnum, String> myProfileInfoTypeMap = {
  MyProfileInfoTypeEnum.job: '직업',
  MyProfileInfoTypeEnum.region: '지역',
  MyProfileInfoTypeEnum.education: '학력',
  MyProfileInfoTypeEnum.smokingStatus: '흡연여부',
  MyProfileInfoTypeEnum.drinkingStatus: '음주빈도',
  MyProfileInfoTypeEnum.religion: '종교',
  MyProfileInfoTypeEnum.mbti: 'MBTI',
  MyProfileInfoTypeEnum.hobbies: '취미',
};

enum MyBasicInfoTypeEnum { nickname, age, height, gender, phoneNum }

const Map<MyBasicInfoTypeEnum, String> myBasicInfoTypeMap = {
  MyBasicInfoTypeEnum.nickname: '닉네임',
  MyBasicInfoTypeEnum.age: '나이',
  MyBasicInfoTypeEnum.height: '키',
  MyBasicInfoTypeEnum.gender: '성별',
  MyBasicInfoTypeEnum.phoneNum: '연락처',
};
