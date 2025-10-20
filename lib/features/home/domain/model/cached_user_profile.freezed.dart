// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CachedUserProfile _$CachedUserProfileFromJson(Map<String, dynamic> json) {
  return _CachedUserProfile.fromJson(json);
}

/// @nodoc
mixin _$CachedUserProfile {
// statusInfo
  @HiveField(0)
  String get activityStatus => throw _privateConstructorUsedError;
  @HiveField(1)
  bool get isVip => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get isDatingExamSubmitted => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get primaryContactType =>
      throw _privateConstructorUsedError; // 회원가입 후 연락수단 NULL
// basicInfo
  @HiveField(4)
  String get nickname => throw _privateConstructorUsedError;
  @HiveField(5)
  Gender get gender => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get kakaoId => throw _privateConstructorUsedError;
  @HiveField(7)
  int get age => throw _privateConstructorUsedError;
  @HiveField(8)
  int get height => throw _privateConstructorUsedError;
  @HiveField(9)
  String get phoneNumber => throw _privateConstructorUsedError; // profileInfo
  @HiveField(10)
  Job get job => throw _privateConstructorUsedError;
  @HiveField(11)
  Education get education => throw _privateConstructorUsedError;
  @HiveField(12)
  String get city => throw _privateConstructorUsedError;
  @HiveField(13)
  String get district => throw _privateConstructorUsedError;
  @HiveField(14)
  String get mbti => throw _privateConstructorUsedError;
  @HiveField(15)
  SmokingStatus get smokingStatus => throw _privateConstructorUsedError;
  @HiveField(16)
  DrinkingStatus get drinkingStatus => throw _privateConstructorUsedError;
  @HiveField(17)
  Religion get religion => throw _privateConstructorUsedError;
  @HiveField(18)
  List<Hobby> get hobbies =>
      throw _privateConstructorUsedError; // interviewInfo
  @HiveField(19)
  List<InterviewInfo> get interviewInfoView =>
      throw _privateConstructorUsedError;
  @HiveField(20)
  int get myUserId => throw _privateConstructorUsedError;

  /// Serializes this CachedUserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CachedUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CachedUserProfileCopyWith<CachedUserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachedUserProfileCopyWith<$Res> {
  factory $CachedUserProfileCopyWith(
          CachedUserProfile value, $Res Function(CachedUserProfile) then) =
      _$CachedUserProfileCopyWithImpl<$Res, CachedUserProfile>;
  @useResult
  $Res call(
      {@HiveField(0) String activityStatus,
      @HiveField(1) bool isVip,
      @HiveField(2) bool isDatingExamSubmitted,
      @HiveField(3) String? primaryContactType,
      @HiveField(4) String nickname,
      @HiveField(5) Gender gender,
      @HiveField(6) String? kakaoId,
      @HiveField(7) int age,
      @HiveField(8) int height,
      @HiveField(9) String phoneNumber,
      @HiveField(10) Job job,
      @HiveField(11) Education education,
      @HiveField(12) String city,
      @HiveField(13) String district,
      @HiveField(14) String mbti,
      @HiveField(15) SmokingStatus smokingStatus,
      @HiveField(16) DrinkingStatus drinkingStatus,
      @HiveField(17) Religion religion,
      @HiveField(18) List<Hobby> hobbies,
      @HiveField(19) List<InterviewInfo> interviewInfoView,
      @HiveField(20) int myUserId});
}

/// @nodoc
class _$CachedUserProfileCopyWithImpl<$Res, $Val extends CachedUserProfile>
    implements $CachedUserProfileCopyWith<$Res> {
  _$CachedUserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CachedUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityStatus = null,
    Object? isVip = null,
    Object? isDatingExamSubmitted = null,
    Object? primaryContactType = freezed,
    Object? nickname = null,
    Object? gender = null,
    Object? kakaoId = freezed,
    Object? age = null,
    Object? height = null,
    Object? phoneNumber = null,
    Object? job = null,
    Object? education = null,
    Object? city = null,
    Object? district = null,
    Object? mbti = null,
    Object? smokingStatus = null,
    Object? drinkingStatus = null,
    Object? religion = null,
    Object? hobbies = null,
    Object? interviewInfoView = null,
    Object? myUserId = null,
  }) {
    return _then(_value.copyWith(
      activityStatus: null == activityStatus
          ? _value.activityStatus
          : activityStatus // ignore: cast_nullable_to_non_nullable
              as String,
      isVip: null == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
      isDatingExamSubmitted: null == isDatingExamSubmitted
          ? _value.isDatingExamSubmitted
          : isDatingExamSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryContactType: freezed == primaryContactType
          ? _value.primaryContactType
          : primaryContactType // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      kakaoId: freezed == kakaoId
          ? _value.kakaoId
          : kakaoId // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as Education,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      mbti: null == mbti
          ? _value.mbti
          : mbti // ignore: cast_nullable_to_non_nullable
              as String,
      smokingStatus: null == smokingStatus
          ? _value.smokingStatus
          : smokingStatus // ignore: cast_nullable_to_non_nullable
              as SmokingStatus,
      drinkingStatus: null == drinkingStatus
          ? _value.drinkingStatus
          : drinkingStatus // ignore: cast_nullable_to_non_nullable
              as DrinkingStatus,
      religion: null == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as Religion,
      hobbies: null == hobbies
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<Hobby>,
      interviewInfoView: null == interviewInfoView
          ? _value.interviewInfoView
          : interviewInfoView // ignore: cast_nullable_to_non_nullable
              as List<InterviewInfo>,
      myUserId: null == myUserId
          ? _value.myUserId
          : myUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CachedUserProfileImplCopyWith<$Res>
    implements $CachedUserProfileCopyWith<$Res> {
  factory _$$CachedUserProfileImplCopyWith(_$CachedUserProfileImpl value,
          $Res Function(_$CachedUserProfileImpl) then) =
      __$$CachedUserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String activityStatus,
      @HiveField(1) bool isVip,
      @HiveField(2) bool isDatingExamSubmitted,
      @HiveField(3) String? primaryContactType,
      @HiveField(4) String nickname,
      @HiveField(5) Gender gender,
      @HiveField(6) String? kakaoId,
      @HiveField(7) int age,
      @HiveField(8) int height,
      @HiveField(9) String phoneNumber,
      @HiveField(10) Job job,
      @HiveField(11) Education education,
      @HiveField(12) String city,
      @HiveField(13) String district,
      @HiveField(14) String mbti,
      @HiveField(15) SmokingStatus smokingStatus,
      @HiveField(16) DrinkingStatus drinkingStatus,
      @HiveField(17) Religion religion,
      @HiveField(18) List<Hobby> hobbies,
      @HiveField(19) List<InterviewInfo> interviewInfoView,
      @HiveField(20) int myUserId});
}

/// @nodoc
class __$$CachedUserProfileImplCopyWithImpl<$Res>
    extends _$CachedUserProfileCopyWithImpl<$Res, _$CachedUserProfileImpl>
    implements _$$CachedUserProfileImplCopyWith<$Res> {
  __$$CachedUserProfileImplCopyWithImpl(_$CachedUserProfileImpl _value,
      $Res Function(_$CachedUserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityStatus = null,
    Object? isVip = null,
    Object? isDatingExamSubmitted = null,
    Object? primaryContactType = freezed,
    Object? nickname = null,
    Object? gender = null,
    Object? kakaoId = freezed,
    Object? age = null,
    Object? height = null,
    Object? phoneNumber = null,
    Object? job = null,
    Object? education = null,
    Object? city = null,
    Object? district = null,
    Object? mbti = null,
    Object? smokingStatus = null,
    Object? drinkingStatus = null,
    Object? religion = null,
    Object? hobbies = null,
    Object? interviewInfoView = null,
    Object? myUserId = null,
  }) {
    return _then(_$CachedUserProfileImpl(
      activityStatus: null == activityStatus
          ? _value.activityStatus
          : activityStatus // ignore: cast_nullable_to_non_nullable
              as String,
      isVip: null == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
      isDatingExamSubmitted: null == isDatingExamSubmitted
          ? _value.isDatingExamSubmitted
          : isDatingExamSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryContactType: freezed == primaryContactType
          ? _value.primaryContactType
          : primaryContactType // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      kakaoId: freezed == kakaoId
          ? _value.kakaoId
          : kakaoId // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as Education,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      mbti: null == mbti
          ? _value.mbti
          : mbti // ignore: cast_nullable_to_non_nullable
              as String,
      smokingStatus: null == smokingStatus
          ? _value.smokingStatus
          : smokingStatus // ignore: cast_nullable_to_non_nullable
              as SmokingStatus,
      drinkingStatus: null == drinkingStatus
          ? _value.drinkingStatus
          : drinkingStatus // ignore: cast_nullable_to_non_nullable
              as DrinkingStatus,
      religion: null == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as Religion,
      hobbies: null == hobbies
          ? _value._hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<Hobby>,
      interviewInfoView: null == interviewInfoView
          ? _value._interviewInfoView
          : interviewInfoView // ignore: cast_nullable_to_non_nullable
              as List<InterviewInfo>,
      myUserId: null == myUserId
          ? _value.myUserId
          : myUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CachedUserProfileImpl extends _CachedUserProfile {
  const _$CachedUserProfileImpl(
      {@HiveField(0) required this.activityStatus,
      @HiveField(1) required this.isVip,
      @HiveField(2) required this.isDatingExamSubmitted,
      @HiveField(3) this.primaryContactType,
      @HiveField(4) required this.nickname,
      @HiveField(5) required this.gender,
      @HiveField(6) this.kakaoId,
      @HiveField(7) required this.age,
      @HiveField(8) required this.height,
      @HiveField(9) required this.phoneNumber,
      @HiveField(10) required this.job,
      @HiveField(11) required this.education,
      @HiveField(12) required this.city,
      @HiveField(13) required this.district,
      @HiveField(14) required this.mbti,
      @HiveField(15) required this.smokingStatus,
      @HiveField(16) required this.drinkingStatus,
      @HiveField(17) required this.religion,
      @HiveField(18) required final List<Hobby> hobbies,
      @HiveField(19) required final List<InterviewInfo> interviewInfoView,
      @HiveField(20) this.myUserId = 0})
      : _hobbies = hobbies,
        _interviewInfoView = interviewInfoView,
        super._();

  factory _$CachedUserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$CachedUserProfileImplFromJson(json);

// statusInfo
  @override
  @HiveField(0)
  final String activityStatus;
  @override
  @HiveField(1)
  final bool isVip;
  @override
  @HiveField(2)
  final bool isDatingExamSubmitted;
  @override
  @HiveField(3)
  final String? primaryContactType;
// 회원가입 후 연락수단 NULL
// basicInfo
  @override
  @HiveField(4)
  final String nickname;
  @override
  @HiveField(5)
  final Gender gender;
  @override
  @HiveField(6)
  final String? kakaoId;
  @override
  @HiveField(7)
  final int age;
  @override
  @HiveField(8)
  final int height;
  @override
  @HiveField(9)
  final String phoneNumber;
// profileInfo
  @override
  @HiveField(10)
  final Job job;
  @override
  @HiveField(11)
  final Education education;
  @override
  @HiveField(12)
  final String city;
  @override
  @HiveField(13)
  final String district;
  @override
  @HiveField(14)
  final String mbti;
  @override
  @HiveField(15)
  final SmokingStatus smokingStatus;
  @override
  @HiveField(16)
  final DrinkingStatus drinkingStatus;
  @override
  @HiveField(17)
  final Religion religion;
  final List<Hobby> _hobbies;
  @override
  @HiveField(18)
  List<Hobby> get hobbies {
    if (_hobbies is EqualUnmodifiableListView) return _hobbies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hobbies);
  }

// interviewInfo
  final List<InterviewInfo> _interviewInfoView;
// interviewInfo
  @override
  @HiveField(19)
  List<InterviewInfo> get interviewInfoView {
    if (_interviewInfoView is EqualUnmodifiableListView)
      return _interviewInfoView;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interviewInfoView);
  }

  @override
  @JsonKey()
  @HiveField(20)
  final int myUserId;

  @override
  String toString() {
    return 'CachedUserProfile(activityStatus: $activityStatus, isVip: $isVip, isDatingExamSubmitted: $isDatingExamSubmitted, primaryContactType: $primaryContactType, nickname: $nickname, gender: $gender, kakaoId: $kakaoId, age: $age, height: $height, phoneNumber: $phoneNumber, job: $job, education: $education, city: $city, district: $district, mbti: $mbti, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, religion: $religion, hobbies: $hobbies, interviewInfoView: $interviewInfoView, myUserId: $myUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CachedUserProfileImpl &&
            (identical(other.activityStatus, activityStatus) ||
                other.activityStatus == activityStatus) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.isDatingExamSubmitted, isDatingExamSubmitted) ||
                other.isDatingExamSubmitted == isDatingExamSubmitted) &&
            (identical(other.primaryContactType, primaryContactType) ||
                other.primaryContactType == primaryContactType) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.kakaoId, kakaoId) || other.kakaoId == kakaoId) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.mbti, mbti) || other.mbti == mbti) &&
            (identical(other.smokingStatus, smokingStatus) ||
                other.smokingStatus == smokingStatus) &&
            (identical(other.drinkingStatus, drinkingStatus) ||
                other.drinkingStatus == drinkingStatus) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            const DeepCollectionEquality().equals(other._hobbies, _hobbies) &&
            const DeepCollectionEquality()
                .equals(other._interviewInfoView, _interviewInfoView) &&
            (identical(other.myUserId, myUserId) ||
                other.myUserId == myUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        activityStatus,
        isVip,
        isDatingExamSubmitted,
        primaryContactType,
        nickname,
        gender,
        kakaoId,
        age,
        height,
        phoneNumber,
        job,
        education,
        city,
        district,
        mbti,
        smokingStatus,
        drinkingStatus,
        religion,
        const DeepCollectionEquality().hash(_hobbies),
        const DeepCollectionEquality().hash(_interviewInfoView),
        myUserId
      ]);

  /// Create a copy of CachedUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CachedUserProfileImplCopyWith<_$CachedUserProfileImpl> get copyWith =>
      __$$CachedUserProfileImplCopyWithImpl<_$CachedUserProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CachedUserProfileImplToJson(
      this,
    );
  }
}

abstract class _CachedUserProfile extends CachedUserProfile {
  const factory _CachedUserProfile(
      {@HiveField(0) required final String activityStatus,
      @HiveField(1) required final bool isVip,
      @HiveField(2) required final bool isDatingExamSubmitted,
      @HiveField(3) final String? primaryContactType,
      @HiveField(4) required final String nickname,
      @HiveField(5) required final Gender gender,
      @HiveField(6) final String? kakaoId,
      @HiveField(7) required final int age,
      @HiveField(8) required final int height,
      @HiveField(9) required final String phoneNumber,
      @HiveField(10) required final Job job,
      @HiveField(11) required final Education education,
      @HiveField(12) required final String city,
      @HiveField(13) required final String district,
      @HiveField(14) required final String mbti,
      @HiveField(15) required final SmokingStatus smokingStatus,
      @HiveField(16) required final DrinkingStatus drinkingStatus,
      @HiveField(17) required final Religion religion,
      @HiveField(18) required final List<Hobby> hobbies,
      @HiveField(19) required final List<InterviewInfo> interviewInfoView,
      @HiveField(20) final int myUserId}) = _$CachedUserProfileImpl;
  const _CachedUserProfile._() : super._();

  factory _CachedUserProfile.fromJson(Map<String, dynamic> json) =
      _$CachedUserProfileImpl.fromJson;

// statusInfo
  @override
  @HiveField(0)
  String get activityStatus;
  @override
  @HiveField(1)
  bool get isVip;
  @override
  @HiveField(2)
  bool get isDatingExamSubmitted;
  @override
  @HiveField(3)
  String? get primaryContactType; // 회원가입 후 연락수단 NULL
// basicInfo
  @override
  @HiveField(4)
  String get nickname;
  @override
  @HiveField(5)
  Gender get gender;
  @override
  @HiveField(6)
  String? get kakaoId;
  @override
  @HiveField(7)
  int get age;
  @override
  @HiveField(8)
  int get height;
  @override
  @HiveField(9)
  String get phoneNumber; // profileInfo
  @override
  @HiveField(10)
  Job get job;
  @override
  @HiveField(11)
  Education get education;
  @override
  @HiveField(12)
  String get city;
  @override
  @HiveField(13)
  String get district;
  @override
  @HiveField(14)
  String get mbti;
  @override
  @HiveField(15)
  SmokingStatus get smokingStatus;
  @override
  @HiveField(16)
  DrinkingStatus get drinkingStatus;
  @override
  @HiveField(17)
  Religion get religion;
  @override
  @HiveField(18)
  List<Hobby> get hobbies; // interviewInfo
  @override
  @HiveField(19)
  List<InterviewInfo> get interviewInfoView;
  @override
  @HiveField(20)
  int get myUserId;

  /// Create a copy of CachedUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CachedUserProfileImplCopyWith<_$CachedUserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InterviewInfo _$InterviewInfoFromJson(Map<String, dynamic> json) {
  return _InterviewInfo.fromJson(json);
}

/// @nodoc
mixin _$InterviewInfo {
  @HiveField(0)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  String get content => throw _privateConstructorUsedError;

  /// Serializes this InterviewInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterviewInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterviewInfoCopyWith<InterviewInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterviewInfoCopyWith<$Res> {
  factory $InterviewInfoCopyWith(
          InterviewInfo value, $Res Function(InterviewInfo) then) =
      _$InterviewInfoCopyWithImpl<$Res, InterviewInfo>;
  @useResult
  $Res call({@HiveField(0) String title, @HiveField(1) String content});
}

/// @nodoc
class _$InterviewInfoCopyWithImpl<$Res, $Val extends InterviewInfo>
    implements $InterviewInfoCopyWith<$Res> {
  _$InterviewInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterviewInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterviewInfoImplCopyWith<$Res>
    implements $InterviewInfoCopyWith<$Res> {
  factory _$$InterviewInfoImplCopyWith(
          _$InterviewInfoImpl value, $Res Function(_$InterviewInfoImpl) then) =
      __$$InterviewInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String title, @HiveField(1) String content});
}

/// @nodoc
class __$$InterviewInfoImplCopyWithImpl<$Res>
    extends _$InterviewInfoCopyWithImpl<$Res, _$InterviewInfoImpl>
    implements _$$InterviewInfoImplCopyWith<$Res> {
  __$$InterviewInfoImplCopyWithImpl(
      _$InterviewInfoImpl _value, $Res Function(_$InterviewInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterviewInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$InterviewInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterviewInfoImpl implements _InterviewInfo {
  const _$InterviewInfoImpl(
      {@HiveField(0) required this.title, @HiveField(1) required this.content});

  factory _$InterviewInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterviewInfoImplFromJson(json);

  @override
  @HiveField(0)
  final String title;
  @override
  @HiveField(1)
  final String content;

  @override
  String toString() {
    return 'InterviewInfo(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterviewInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  /// Create a copy of InterviewInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterviewInfoImplCopyWith<_$InterviewInfoImpl> get copyWith =>
      __$$InterviewInfoImplCopyWithImpl<_$InterviewInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterviewInfoImplToJson(
      this,
    );
  }
}

abstract class _InterviewInfo implements InterviewInfo {
  const factory _InterviewInfo(
      {@HiveField(0) required final String title,
      @HiveField(1) required final String content}) = _$InterviewInfoImpl;

  factory _InterviewInfo.fromJson(Map<String, dynamic> json) =
      _$InterviewInfoImpl.fromJson;

  @override
  @HiveField(0)
  String get title;
  @override
  @HiveField(1)
  String get content;

  /// Create a copy of InterviewInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterviewInfoImplCopyWith<_$InterviewInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
