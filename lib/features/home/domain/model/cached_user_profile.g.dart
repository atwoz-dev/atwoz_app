// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_user_profile.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CachedUserProfileAdapter extends TypeAdapter<CachedUserProfile> {
  @override
  final typeId = 3;

  @override
  CachedUserProfile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CachedUserProfile(
      activityStatus: fields[0] as String,
      isVip: fields[1] as bool,
      isDatingExamSubmitted: fields[2] as bool,
      primaryContactType: fields[3] as String?,
      nickname: fields[4] as String,
      gender: fields[5] as Gender,
      kakaoId: fields[6] as String?,
      age: (fields[7] as num).toInt(),
      height: (fields[8] as num).toInt(),
      phoneNumber: fields[9] as String,
      job: fields[10] as Job,
      education: fields[11] as Education,
      city: fields[12] as String,
      district: fields[13] as String,
      mbti: fields[14] as String,
      smokingStatus: fields[15] as SmokingStatus,
      drinkingStatus: fields[16] as DrinkingStatus,
      religion: fields[17] as Religion,
      hobbies: (fields[18] as List).cast<Hobby>(),
      interviewInfoView: (fields[19] as List).cast<InterviewInfo>(),
      myUserId: fields[20] == null ? 0 : (fields[20] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, CachedUserProfile obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.activityStatus)
      ..writeByte(1)
      ..write(obj.isVip)
      ..writeByte(2)
      ..write(obj.isDatingExamSubmitted)
      ..writeByte(3)
      ..write(obj.primaryContactType)
      ..writeByte(4)
      ..write(obj.nickname)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.kakaoId)
      ..writeByte(7)
      ..write(obj.age)
      ..writeByte(8)
      ..write(obj.height)
      ..writeByte(9)
      ..write(obj.phoneNumber)
      ..writeByte(10)
      ..write(obj.job)
      ..writeByte(11)
      ..write(obj.education)
      ..writeByte(12)
      ..write(obj.city)
      ..writeByte(13)
      ..write(obj.district)
      ..writeByte(14)
      ..write(obj.mbti)
      ..writeByte(15)
      ..write(obj.smokingStatus)
      ..writeByte(16)
      ..write(obj.drinkingStatus)
      ..writeByte(17)
      ..write(obj.religion)
      ..writeByte(18)
      ..write(obj.hobbies)
      ..writeByte(19)
      ..write(obj.interviewInfoView)
      ..writeByte(20)
      ..write(obj.myUserId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CachedUserProfileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class InterviewInfoAdapter extends TypeAdapter<InterviewInfo> {
  @override
  final typeId = 4;

  @override
  InterviewInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InterviewInfo(
      title: fields[0] as String,
      content: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, InterviewInfo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InterviewInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CachedUserProfile _$CachedUserProfileFromJson(Map<String, dynamic> json) =>
    _CachedUserProfile(
      activityStatus: json['activityStatus'] as String,
      isVip: json['isVip'] as bool,
      isDatingExamSubmitted: json['isDatingExamSubmitted'] as bool,
      primaryContactType: json['primaryContactType'] as String?,
      nickname: json['nickname'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      kakaoId: json['kakaoId'] as String?,
      age: (json['age'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      phoneNumber: json['phoneNumber'] as String,
      job: $enumDecode(_$JobEnumMap, json['job']),
      education: $enumDecode(_$EducationEnumMap, json['education']),
      city: json['city'] as String,
      district: json['district'] as String,
      mbti: json['mbti'] as String,
      smokingStatus: $enumDecode(_$SmokingStatusEnumMap, json['smokingStatus']),
      drinkingStatus: $enumDecode(
        _$DrinkingStatusEnumMap,
        json['drinkingStatus'],
      ),
      religion: $enumDecode(_$ReligionEnumMap, json['religion']),
      hobbies: (json['hobbies'] as List<dynamic>)
          .map((e) => $enumDecode(_$HobbyEnumMap, e))
          .toList(),
      interviewInfoView: (json['interviewInfoView'] as List<dynamic>)
          .map((e) => InterviewInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      myUserId: (json['myUserId'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CachedUserProfileToJson(_CachedUserProfile instance) =>
    <String, dynamic>{
      'activityStatus': instance.activityStatus,
      'isVip': instance.isVip,
      'isDatingExamSubmitted': instance.isDatingExamSubmitted,
      'primaryContactType': instance.primaryContactType,
      'nickname': instance.nickname,
      'gender': _$GenderEnumMap[instance.gender]!,
      'kakaoId': instance.kakaoId,
      'age': instance.age,
      'height': instance.height,
      'phoneNumber': instance.phoneNumber,
      'job': _$JobEnumMap[instance.job]!,
      'education': _$EducationEnumMap[instance.education]!,
      'city': instance.city,
      'district': instance.district,
      'mbti': instance.mbti,
      'smokingStatus': _$SmokingStatusEnumMap[instance.smokingStatus]!,
      'drinkingStatus': _$DrinkingStatusEnumMap[instance.drinkingStatus]!,
      'religion': _$ReligionEnumMap[instance.religion]!,
      'hobbies': instance.hobbies.map((e) => _$HobbyEnumMap[e]!).toList(),
      'interviewInfoView': instance.interviewInfoView,
      'myUserId': instance.myUserId,
    };

const _$GenderEnumMap = {Gender.male: 'male', Gender.female: 'female'};

const _$JobEnumMap = {
  Job.researchAndEngineering: 'researchAndEngineering',
  Job.selfEmployment: 'selfEmployment',
  Job.sales: 'sales',
  Job.managementAndPlanning: 'managementAndPlanning',
  Job.studyingForFuture: 'studyingForFuture',
  Job.jobSearching: 'jobSearching',
  Job.education: 'education',
  Job.artsAndSports: 'artsAndSports',
  Job.foodService: 'foodService',
  Job.medicalAndHealth: 'medicalAndHealth',
  Job.mechanicalAndConstruction: 'mechanicalAndConstruction',
  Job.design: 'design',
  Job.marketingAndAdvertising: 'marketingAndAdvertising',
  Job.tradeAndDistribution: 'tradeAndDistribution',
  Job.mediaAndEntertainment: 'mediaAndEntertainment',
  Job.legalAndPublic: 'legalAndPublic',
  Job.productionAndManufacturing: 'productionAndManufacturing',
  Job.customerService: 'customerService',
  Job.travelAndTransport: 'travelAndTransport',
  Job.others: 'others',
};

const _$EducationEnumMap = {
  Education.highSchool: 'highSchool',
  Education.associate: 'associate',
  Education.bachelorsLocal: 'bachelorsLocal',
  Education.bachelorsSeoul: 'bachelorsSeoul',
  Education.bachelorsOverseas: 'bachelorsOverseas',
  Education.lawSchool: 'lawSchool',
  Education.masters: 'masters',
  Education.doctorate: 'doctorate',
  Education.other: 'other',
};

const _$SmokingStatusEnumMap = {
  SmokingStatus.none: 'none',
  SmokingStatus.quit: 'quit',
  SmokingStatus.occasional: 'occasional',
  SmokingStatus.daily: 'daily',
  SmokingStatus.vape: 'vape',
};

const _$DrinkingStatusEnumMap = {
  DrinkingStatus.none: 'none',
  DrinkingStatus.quit: 'quit',
  DrinkingStatus.social: 'social',
  DrinkingStatus.occasional: 'occasional',
  DrinkingStatus.frequent: 'frequent',
};

const _$ReligionEnumMap = {
  Religion.none: 'none',
  Religion.christian: 'christian',
  Religion.catholic: 'catholic',
  Religion.buddhist: 'buddhist',
  Religion.other: 'other',
};

const _$HobbyEnumMap = {
  Hobby.travel: 'travel',
  Hobby.performanceAndExhibition: 'performanceAndExhibition',
  Hobby.webtoonAndComics: 'webtoonAndComics',
  Hobby.dramaAndEntertainment: 'dramaAndEntertainment',
  Hobby.pcAndMobileGames: 'pcAndMobileGames',
  Hobby.animation: 'animation',
  Hobby.golf: 'golf',
  Hobby.theaterAndMovies: 'theaterAndMovies',
  Hobby.writing: 'writing',
  Hobby.boardGames: 'boardGames',
  Hobby.photography: 'photography',
  Hobby.singing: 'singing',
  Hobby.badmintonAndTennis: 'badmintonAndTennis',
  Hobby.dance: 'dance',
  Hobby.driving: 'driving',
  Hobby.hikingAndClimbing: 'hikingAndClimbing',
  Hobby.walking: 'walking',
  Hobby.foodHunt: 'foodHunt',
  Hobby.shopping: 'shopping',
  Hobby.skiAndSnowboard: 'skiAndSnowboard',
  Hobby.playingInstruments: 'playingInstruments',
  Hobby.wine: 'wine',
  Hobby.workout: 'workout',
  Hobby.yogaAndPilates: 'yogaAndPilates',
  Hobby.cooking: 'cooking',
  Hobby.interiorDesign: 'interiorDesign',
  Hobby.cycling: 'cycling',
  Hobby.camping: 'camping',
  Hobby.others: 'others',
};

_InterviewInfo _$InterviewInfoFromJson(Map<String, dynamic> json) =>
    _InterviewInfo(
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$InterviewInfoToJson(_InterviewInfo instance) =>
    <String, dynamic>{'title': instance.title, 'content': instance.content};
