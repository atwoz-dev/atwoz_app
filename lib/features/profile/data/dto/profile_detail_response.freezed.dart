// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileDetailResponse _$ProfileDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _ProfileDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileDetailResponse {
  BasicMemberInformation get memberInfo => throw _privateConstructorUsedError;
  MatchInformation? get matchInfo => throw _privateConstructorUsedError;
  ProfileExchangeInfo? get profileExchangeInfo =>
      throw _privateConstructorUsedError;
  List<ProfileInterview> get interviews => throw _privateConstructorUsedError;

  /// Serializes this ProfileDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDetailResponseCopyWith<ProfileDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDetailResponseCopyWith<$Res> {
  factory $ProfileDetailResponseCopyWith(ProfileDetailResponse value,
          $Res Function(ProfileDetailResponse) then) =
      _$ProfileDetailResponseCopyWithImpl<$Res, ProfileDetailResponse>;
  @useResult
  $Res call(
      {BasicMemberInformation memberInfo,
      MatchInformation? matchInfo,
      ProfileExchangeInfo? profileExchangeInfo,
      List<ProfileInterview> interviews});

  $BasicMemberInformationCopyWith<$Res> get memberInfo;
  $MatchInformationCopyWith<$Res>? get matchInfo;
  $ProfileExchangeInfoCopyWith<$Res>? get profileExchangeInfo;
}

/// @nodoc
class _$ProfileDetailResponseCopyWithImpl<$Res,
        $Val extends ProfileDetailResponse>
    implements $ProfileDetailResponseCopyWith<$Res> {
  _$ProfileDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberInfo = null,
    Object? matchInfo = freezed,
    Object? profileExchangeInfo = freezed,
    Object? interviews = null,
  }) {
    return _then(_value.copyWith(
      memberInfo: null == memberInfo
          ? _value.memberInfo
          : memberInfo // ignore: cast_nullable_to_non_nullable
              as BasicMemberInformation,
      matchInfo: freezed == matchInfo
          ? _value.matchInfo
          : matchInfo // ignore: cast_nullable_to_non_nullable
              as MatchInformation?,
      profileExchangeInfo: freezed == profileExchangeInfo
          ? _value.profileExchangeInfo
          : profileExchangeInfo // ignore: cast_nullable_to_non_nullable
              as ProfileExchangeInfo?,
      interviews: null == interviews
          ? _value.interviews
          : interviews // ignore: cast_nullable_to_non_nullable
              as List<ProfileInterview>,
    ) as $Val);
  }

  /// Create a copy of ProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicMemberInformationCopyWith<$Res> get memberInfo {
    return $BasicMemberInformationCopyWith<$Res>(_value.memberInfo, (value) {
      return _then(_value.copyWith(memberInfo: value) as $Val);
    });
  }

  /// Create a copy of ProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchInformationCopyWith<$Res>? get matchInfo {
    if (_value.matchInfo == null) {
      return null;
    }

    return $MatchInformationCopyWith<$Res>(_value.matchInfo!, (value) {
      return _then(_value.copyWith(matchInfo: value) as $Val);
    });
  }

  /// Create a copy of ProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileExchangeInfoCopyWith<$Res>? get profileExchangeInfo {
    if (_value.profileExchangeInfo == null) {
      return null;
    }

    return $ProfileExchangeInfoCopyWith<$Res>(_value.profileExchangeInfo!,
        (value) {
      return _then(_value.copyWith(profileExchangeInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDetailResponseImplCopyWith<$Res>
    implements $ProfileDetailResponseCopyWith<$Res> {
  factory _$$ProfileDetailResponseImplCopyWith(
          _$ProfileDetailResponseImpl value,
          $Res Function(_$ProfileDetailResponseImpl) then) =
      __$$ProfileDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BasicMemberInformation memberInfo,
      MatchInformation? matchInfo,
      ProfileExchangeInfo? profileExchangeInfo,
      List<ProfileInterview> interviews});

  @override
  $BasicMemberInformationCopyWith<$Res> get memberInfo;
  @override
  $MatchInformationCopyWith<$Res>? get matchInfo;
  @override
  $ProfileExchangeInfoCopyWith<$Res>? get profileExchangeInfo;
}

/// @nodoc
class __$$ProfileDetailResponseImplCopyWithImpl<$Res>
    extends _$ProfileDetailResponseCopyWithImpl<$Res,
        _$ProfileDetailResponseImpl>
    implements _$$ProfileDetailResponseImplCopyWith<$Res> {
  __$$ProfileDetailResponseImplCopyWithImpl(_$ProfileDetailResponseImpl _value,
      $Res Function(_$ProfileDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberInfo = null,
    Object? matchInfo = freezed,
    Object? profileExchangeInfo = freezed,
    Object? interviews = null,
  }) {
    return _then(_$ProfileDetailResponseImpl(
      memberInfo: null == memberInfo
          ? _value.memberInfo
          : memberInfo // ignore: cast_nullable_to_non_nullable
              as BasicMemberInformation,
      matchInfo: freezed == matchInfo
          ? _value.matchInfo
          : matchInfo // ignore: cast_nullable_to_non_nullable
              as MatchInformation?,
      profileExchangeInfo: freezed == profileExchangeInfo
          ? _value.profileExchangeInfo
          : profileExchangeInfo // ignore: cast_nullable_to_non_nullable
              as ProfileExchangeInfo?,
      interviews: null == interviews
          ? _value._interviews
          : interviews // ignore: cast_nullable_to_non_nullable
              as List<ProfileInterview>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDetailResponseImpl implements _ProfileDetailResponse {
  const _$ProfileDetailResponseImpl(
      {required this.memberInfo,
      required this.matchInfo,
      required this.profileExchangeInfo,
      final List<ProfileInterview> interviews = const []})
      : _interviews = interviews;

  factory _$ProfileDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDetailResponseImplFromJson(json);

  @override
  final BasicMemberInformation memberInfo;
  @override
  final MatchInformation? matchInfo;
  @override
  final ProfileExchangeInfo? profileExchangeInfo;
  final List<ProfileInterview> _interviews;
  @override
  @JsonKey()
  List<ProfileInterview> get interviews {
    if (_interviews is EqualUnmodifiableListView) return _interviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interviews);
  }

  @override
  String toString() {
    return 'ProfileDetailResponse(memberInfo: $memberInfo, matchInfo: $matchInfo, profileExchangeInfo: $profileExchangeInfo, interviews: $interviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDetailResponseImpl &&
            (identical(other.memberInfo, memberInfo) ||
                other.memberInfo == memberInfo) &&
            (identical(other.matchInfo, matchInfo) ||
                other.matchInfo == matchInfo) &&
            (identical(other.profileExchangeInfo, profileExchangeInfo) ||
                other.profileExchangeInfo == profileExchangeInfo) &&
            const DeepCollectionEquality()
                .equals(other._interviews, _interviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberInfo, matchInfo,
      profileExchangeInfo, const DeepCollectionEquality().hash(_interviews));

  /// Create a copy of ProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDetailResponseImplCopyWith<_$ProfileDetailResponseImpl>
      get copyWith => __$$ProfileDetailResponseImplCopyWithImpl<
          _$ProfileDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _ProfileDetailResponse implements ProfileDetailResponse {
  const factory _ProfileDetailResponse(
      {required final BasicMemberInformation memberInfo,
      required final MatchInformation? matchInfo,
      required final ProfileExchangeInfo? profileExchangeInfo,
      final List<ProfileInterview> interviews}) = _$ProfileDetailResponseImpl;

  factory _ProfileDetailResponse.fromJson(Map<String, dynamic> json) =
      _$ProfileDetailResponseImpl.fromJson;

  @override
  BasicMemberInformation get memberInfo;
  @override
  MatchInformation? get matchInfo;
  @override
  ProfileExchangeInfo? get profileExchangeInfo;
  @override
  List<ProfileInterview> get interviews;

  /// Create a copy of ProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDetailResponseImplCopyWith<_$ProfileDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BasicMemberInformation _$BasicMemberInformationFromJson(
    Map<String, dynamic> json) {
  return _BasicMemberInformation.fromJson(json);
}

/// @nodoc
mixin _$BasicMemberInformation {
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get profileImageUrl =>
      throw _privateConstructorUsedError; // TODO(Han): server non-nullable requirement check
  int? get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;
  List<String> get hobbies => throw _privateConstructorUsedError;
  String get mbti =>
      throw _privateConstructorUsedError; // TODO(Han): server non-nullable requirement check
  String? get region => throw _privateConstructorUsedError;
  String get smokingStatus => throw _privateConstructorUsedError;
  String get drinkingStatus => throw _privateConstructorUsedError;
  String get highestEducation => throw _privateConstructorUsedError;
  String? get religion => throw _privateConstructorUsedError;
  String? get likeLevel => throw _privateConstructorUsedError;

  /// Serializes this BasicMemberInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasicMemberInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasicMemberInformationCopyWith<BasicMemberInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicMemberInformationCopyWith<$Res> {
  factory $BasicMemberInformationCopyWith(BasicMemberInformation value,
          $Res Function(BasicMemberInformation) then) =
      _$BasicMemberInformationCopyWithImpl<$Res, BasicMemberInformation>;
  @useResult
  $Res call(
      {int id,
      String nickname,
      String profileImageUrl,
      int? age,
      String gender,
      int height,
      String? job,
      List<String> hobbies,
      String mbti,
      String? region,
      String smokingStatus,
      String drinkingStatus,
      String highestEducation,
      String? religion,
      String? likeLevel});
}

/// @nodoc
class _$BasicMemberInformationCopyWithImpl<$Res,
        $Val extends BasicMemberInformation>
    implements $BasicMemberInformationCopyWith<$Res> {
  _$BasicMemberInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasicMemberInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? profileImageUrl = null,
    Object? age = freezed,
    Object? gender = null,
    Object? height = null,
    Object? job = freezed,
    Object? hobbies = null,
    Object? mbti = null,
    Object? region = freezed,
    Object? smokingStatus = null,
    Object? drinkingStatus = null,
    Object? highestEducation = null,
    Object? religion = freezed,
    Object? likeLevel = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      hobbies: null == hobbies
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mbti: null == mbti
          ? _value.mbti
          : mbti // ignore: cast_nullable_to_non_nullable
              as String,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      smokingStatus: null == smokingStatus
          ? _value.smokingStatus
          : smokingStatus // ignore: cast_nullable_to_non_nullable
              as String,
      drinkingStatus: null == drinkingStatus
          ? _value.drinkingStatus
          : drinkingStatus // ignore: cast_nullable_to_non_nullable
              as String,
      highestEducation: null == highestEducation
          ? _value.highestEducation
          : highestEducation // ignore: cast_nullable_to_non_nullable
              as String,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      likeLevel: freezed == likeLevel
          ? _value.likeLevel
          : likeLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicMemberInformationImplCopyWith<$Res>
    implements $BasicMemberInformationCopyWith<$Res> {
  factory _$$BasicMemberInformationImplCopyWith(
          _$BasicMemberInformationImpl value,
          $Res Function(_$BasicMemberInformationImpl) then) =
      __$$BasicMemberInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nickname,
      String profileImageUrl,
      int? age,
      String gender,
      int height,
      String? job,
      List<String> hobbies,
      String mbti,
      String? region,
      String smokingStatus,
      String drinkingStatus,
      String highestEducation,
      String? religion,
      String? likeLevel});
}

/// @nodoc
class __$$BasicMemberInformationImplCopyWithImpl<$Res>
    extends _$BasicMemberInformationCopyWithImpl<$Res,
        _$BasicMemberInformationImpl>
    implements _$$BasicMemberInformationImplCopyWith<$Res> {
  __$$BasicMemberInformationImplCopyWithImpl(
      _$BasicMemberInformationImpl _value,
      $Res Function(_$BasicMemberInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasicMemberInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? profileImageUrl = null,
    Object? age = freezed,
    Object? gender = null,
    Object? height = null,
    Object? job = freezed,
    Object? hobbies = null,
    Object? mbti = null,
    Object? region = freezed,
    Object? smokingStatus = null,
    Object? drinkingStatus = null,
    Object? highestEducation = null,
    Object? religion = freezed,
    Object? likeLevel = freezed,
  }) {
    return _then(_$BasicMemberInformationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      hobbies: null == hobbies
          ? _value._hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mbti: null == mbti
          ? _value.mbti
          : mbti // ignore: cast_nullable_to_non_nullable
              as String,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      smokingStatus: null == smokingStatus
          ? _value.smokingStatus
          : smokingStatus // ignore: cast_nullable_to_non_nullable
              as String,
      drinkingStatus: null == drinkingStatus
          ? _value.drinkingStatus
          : drinkingStatus // ignore: cast_nullable_to_non_nullable
              as String,
      highestEducation: null == highestEducation
          ? _value.highestEducation
          : highestEducation // ignore: cast_nullable_to_non_nullable
              as String,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      likeLevel: freezed == likeLevel
          ? _value.likeLevel
          : likeLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicMemberInformationImpl implements _BasicMemberInformation {
  const _$BasicMemberInformationImpl(
      {required this.id,
      required this.nickname,
      required this.profileImageUrl,
      required this.age,
      required this.gender,
      required this.height,
      required this.job,
      required final List<String> hobbies,
      required this.mbti,
      required this.region,
      required this.smokingStatus,
      required this.drinkingStatus,
      required this.highestEducation,
      required this.religion,
      required this.likeLevel})
      : _hobbies = hobbies;

  factory _$BasicMemberInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicMemberInformationImplFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
  @override
  final String profileImageUrl;
// TODO(Han): server non-nullable requirement check
  @override
  final int? age;
  @override
  final String gender;
  @override
  final int height;
  @override
  final String? job;
  final List<String> _hobbies;
  @override
  List<String> get hobbies {
    if (_hobbies is EqualUnmodifiableListView) return _hobbies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hobbies);
  }

  @override
  final String mbti;
// TODO(Han): server non-nullable requirement check
  @override
  final String? region;
  @override
  final String smokingStatus;
  @override
  final String drinkingStatus;
  @override
  final String highestEducation;
  @override
  final String? religion;
  @override
  final String? likeLevel;

  @override
  String toString() {
    return 'BasicMemberInformation(id: $id, nickname: $nickname, profileImageUrl: $profileImageUrl, age: $age, gender: $gender, height: $height, job: $job, hobbies: $hobbies, mbti: $mbti, region: $region, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, highestEducation: $highestEducation, religion: $religion, likeLevel: $likeLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicMemberInformationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.job, job) || other.job == job) &&
            const DeepCollectionEquality().equals(other._hobbies, _hobbies) &&
            (identical(other.mbti, mbti) || other.mbti == mbti) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.smokingStatus, smokingStatus) ||
                other.smokingStatus == smokingStatus) &&
            (identical(other.drinkingStatus, drinkingStatus) ||
                other.drinkingStatus == drinkingStatus) &&
            (identical(other.highestEducation, highestEducation) ||
                other.highestEducation == highestEducation) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            (identical(other.likeLevel, likeLevel) ||
                other.likeLevel == likeLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nickname,
      profileImageUrl,
      age,
      gender,
      height,
      job,
      const DeepCollectionEquality().hash(_hobbies),
      mbti,
      region,
      smokingStatus,
      drinkingStatus,
      highestEducation,
      religion,
      likeLevel);

  /// Create a copy of BasicMemberInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicMemberInformationImplCopyWith<_$BasicMemberInformationImpl>
      get copyWith => __$$BasicMemberInformationImplCopyWithImpl<
          _$BasicMemberInformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicMemberInformationImplToJson(
      this,
    );
  }
}

abstract class _BasicMemberInformation implements BasicMemberInformation {
  const factory _BasicMemberInformation(
      {required final int id,
      required final String nickname,
      required final String profileImageUrl,
      required final int? age,
      required final String gender,
      required final int height,
      required final String? job,
      required final List<String> hobbies,
      required final String mbti,
      required final String? region,
      required final String smokingStatus,
      required final String drinkingStatus,
      required final String highestEducation,
      required final String? religion,
      required final String? likeLevel}) = _$BasicMemberInformationImpl;

  factory _BasicMemberInformation.fromJson(Map<String, dynamic> json) =
      _$BasicMemberInformationImpl.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String
      get profileImageUrl; // TODO(Han): server non-nullable requirement check
  @override
  int? get age;
  @override
  String get gender;
  @override
  int get height;
  @override
  String? get job;
  @override
  List<String> get hobbies;
  @override
  String get mbti; // TODO(Han): server non-nullable requirement check
  @override
  String? get region;
  @override
  String get smokingStatus;
  @override
  String get drinkingStatus;
  @override
  String get highestEducation;
  @override
  String? get religion;
  @override
  String? get likeLevel;

  /// Create a copy of BasicMemberInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasicMemberInformationImplCopyWith<_$BasicMemberInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MatchInformation _$MatchInformationFromJson(Map<String, dynamic> json) {
  return _MatchInformation.fromJson(json);
}

/// @nodoc
mixin _$MatchInformation {
  int get matchId => throw _privateConstructorUsedError;
  int get requesterId => throw _privateConstructorUsedError;
  int get responderId => throw _privateConstructorUsedError;
  String? get requestMessage => throw _privateConstructorUsedError;
  String? get responseMessage => throw _privateConstructorUsedError;
  String get matchStatus => throw _privateConstructorUsedError;
  String? get contactType => throw _privateConstructorUsedError;
  String? get contact => throw _privateConstructorUsedError;

  /// Serializes this MatchInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchInformationCopyWith<MatchInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchInformationCopyWith<$Res> {
  factory $MatchInformationCopyWith(
          MatchInformation value, $Res Function(MatchInformation) then) =
      _$MatchInformationCopyWithImpl<$Res, MatchInformation>;
  @useResult
  $Res call(
      {int matchId,
      int requesterId,
      int responderId,
      String? requestMessage,
      String? responseMessage,
      String matchStatus,
      String? contactType,
      String? contact});
}

/// @nodoc
class _$MatchInformationCopyWithImpl<$Res, $Val extends MatchInformation>
    implements $MatchInformationCopyWith<$Res> {
  _$MatchInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchId = null,
    Object? requesterId = null,
    Object? responderId = null,
    Object? requestMessage = freezed,
    Object? responseMessage = freezed,
    Object? matchStatus = null,
    Object? contactType = freezed,
    Object? contact = freezed,
  }) {
    return _then(_value.copyWith(
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as int,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as int,
      responderId: null == responderId
          ? _value.responderId
          : responderId // ignore: cast_nullable_to_non_nullable
              as int,
      requestMessage: freezed == requestMessage
          ? _value.requestMessage
          : requestMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      matchStatus: null == matchStatus
          ? _value.matchStatus
          : matchStatus // ignore: cast_nullable_to_non_nullable
              as String,
      contactType: freezed == contactType
          ? _value.contactType
          : contactType // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MatchInformationImplCopyWith<$Res>
    implements $MatchInformationCopyWith<$Res> {
  factory _$$MatchInformationImplCopyWith(_$MatchInformationImpl value,
          $Res Function(_$MatchInformationImpl) then) =
      __$$MatchInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int matchId,
      int requesterId,
      int responderId,
      String? requestMessage,
      String? responseMessage,
      String matchStatus,
      String? contactType,
      String? contact});
}

/// @nodoc
class __$$MatchInformationImplCopyWithImpl<$Res>
    extends _$MatchInformationCopyWithImpl<$Res, _$MatchInformationImpl>
    implements _$$MatchInformationImplCopyWith<$Res> {
  __$$MatchInformationImplCopyWithImpl(_$MatchInformationImpl _value,
      $Res Function(_$MatchInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchId = null,
    Object? requesterId = null,
    Object? responderId = null,
    Object? requestMessage = freezed,
    Object? responseMessage = freezed,
    Object? matchStatus = null,
    Object? contactType = freezed,
    Object? contact = freezed,
  }) {
    return _then(_$MatchInformationImpl(
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as int,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as int,
      responderId: null == responderId
          ? _value.responderId
          : responderId // ignore: cast_nullable_to_non_nullable
              as int,
      requestMessage: freezed == requestMessage
          ? _value.requestMessage
          : requestMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      matchStatus: null == matchStatus
          ? _value.matchStatus
          : matchStatus // ignore: cast_nullable_to_non_nullable
              as String,
      contactType: freezed == contactType
          ? _value.contactType
          : contactType // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchInformationImpl implements _MatchInformation {
  const _$MatchInformationImpl(
      {required this.matchId,
      required this.requesterId,
      required this.responderId,
      required this.requestMessage,
      required this.responseMessage,
      required this.matchStatus,
      required this.contactType,
      required this.contact});

  factory _$MatchInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchInformationImplFromJson(json);

  @override
  final int matchId;
  @override
  final int requesterId;
  @override
  final int responderId;
  @override
  final String? requestMessage;
  @override
  final String? responseMessage;
  @override
  final String matchStatus;
  @override
  final String? contactType;
  @override
  final String? contact;

  @override
  String toString() {
    return 'MatchInformation(matchId: $matchId, requesterId: $requesterId, responderId: $responderId, requestMessage: $requestMessage, responseMessage: $responseMessage, matchStatus: $matchStatus, contactType: $contactType, contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchInformationImpl &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.responderId, responderId) ||
                other.responderId == responderId) &&
            (identical(other.requestMessage, requestMessage) ||
                other.requestMessage == requestMessage) &&
            (identical(other.responseMessage, responseMessage) ||
                other.responseMessage == responseMessage) &&
            (identical(other.matchStatus, matchStatus) ||
                other.matchStatus == matchStatus) &&
            (identical(other.contactType, contactType) ||
                other.contactType == contactType) &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      matchId,
      requesterId,
      responderId,
      requestMessage,
      responseMessage,
      matchStatus,
      contactType,
      contact);

  /// Create a copy of MatchInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchInformationImplCopyWith<_$MatchInformationImpl> get copyWith =>
      __$$MatchInformationImplCopyWithImpl<_$MatchInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchInformationImplToJson(
      this,
    );
  }
}

abstract class _MatchInformation implements MatchInformation {
  const factory _MatchInformation(
      {required final int matchId,
      required final int requesterId,
      required final int responderId,
      required final String? requestMessage,
      required final String? responseMessage,
      required final String matchStatus,
      required final String? contactType,
      required final String? contact}) = _$MatchInformationImpl;

  factory _MatchInformation.fromJson(Map<String, dynamic> json) =
      _$MatchInformationImpl.fromJson;

  @override
  int get matchId;
  @override
  int get requesterId;
  @override
  int get responderId;
  @override
  String? get requestMessage;
  @override
  String? get responseMessage;
  @override
  String get matchStatus;
  @override
  String? get contactType;
  @override
  String? get contact;

  /// Create a copy of MatchInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchInformationImplCopyWith<_$MatchInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileExchangeInfo _$ProfileExchangeInfoFromJson(Map<String, dynamic> json) {
  return _ProfileExchangeInfo.fromJson(json);
}

/// @nodoc
mixin _$ProfileExchangeInfo {
  int get profileExchangeId => throw _privateConstructorUsedError;
  int get requesterId => throw _privateConstructorUsedError;
  int get responderId => throw _privateConstructorUsedError;
  ProfileExchangeStatus get profileExchangeStatus =>
      throw _privateConstructorUsedError;

  /// Serializes this ProfileExchangeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileExchangeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileExchangeInfoCopyWith<ProfileExchangeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileExchangeInfoCopyWith<$Res> {
  factory $ProfileExchangeInfoCopyWith(
          ProfileExchangeInfo value, $Res Function(ProfileExchangeInfo) then) =
      _$ProfileExchangeInfoCopyWithImpl<$Res, ProfileExchangeInfo>;
  @useResult
  $Res call(
      {int profileExchangeId,
      int requesterId,
      int responderId,
      ProfileExchangeStatus profileExchangeStatus});
}

/// @nodoc
class _$ProfileExchangeInfoCopyWithImpl<$Res, $Val extends ProfileExchangeInfo>
    implements $ProfileExchangeInfoCopyWith<$Res> {
  _$ProfileExchangeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileExchangeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileExchangeId = null,
    Object? requesterId = null,
    Object? responderId = null,
    Object? profileExchangeStatus = null,
  }) {
    return _then(_value.copyWith(
      profileExchangeId: null == profileExchangeId
          ? _value.profileExchangeId
          : profileExchangeId // ignore: cast_nullable_to_non_nullable
              as int,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as int,
      responderId: null == responderId
          ? _value.responderId
          : responderId // ignore: cast_nullable_to_non_nullable
              as int,
      profileExchangeStatus: null == profileExchangeStatus
          ? _value.profileExchangeStatus
          : profileExchangeStatus // ignore: cast_nullable_to_non_nullable
              as ProfileExchangeStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileExchangeInfoImplCopyWith<$Res>
    implements $ProfileExchangeInfoCopyWith<$Res> {
  factory _$$ProfileExchangeInfoImplCopyWith(_$ProfileExchangeInfoImpl value,
          $Res Function(_$ProfileExchangeInfoImpl) then) =
      __$$ProfileExchangeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int profileExchangeId,
      int requesterId,
      int responderId,
      ProfileExchangeStatus profileExchangeStatus});
}

/// @nodoc
class __$$ProfileExchangeInfoImplCopyWithImpl<$Res>
    extends _$ProfileExchangeInfoCopyWithImpl<$Res, _$ProfileExchangeInfoImpl>
    implements _$$ProfileExchangeInfoImplCopyWith<$Res> {
  __$$ProfileExchangeInfoImplCopyWithImpl(_$ProfileExchangeInfoImpl _value,
      $Res Function(_$ProfileExchangeInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileExchangeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileExchangeId = null,
    Object? requesterId = null,
    Object? responderId = null,
    Object? profileExchangeStatus = null,
  }) {
    return _then(_$ProfileExchangeInfoImpl(
      profileExchangeId: null == profileExchangeId
          ? _value.profileExchangeId
          : profileExchangeId // ignore: cast_nullable_to_non_nullable
              as int,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as int,
      responderId: null == responderId
          ? _value.responderId
          : responderId // ignore: cast_nullable_to_non_nullable
              as int,
      profileExchangeStatus: null == profileExchangeStatus
          ? _value.profileExchangeStatus
          : profileExchangeStatus // ignore: cast_nullable_to_non_nullable
              as ProfileExchangeStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileExchangeInfoImpl implements _ProfileExchangeInfo {
  const _$ProfileExchangeInfoImpl(
      {required this.profileExchangeId,
      required this.requesterId,
      required this.responderId,
      required this.profileExchangeStatus});

  factory _$ProfileExchangeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileExchangeInfoImplFromJson(json);

  @override
  final int profileExchangeId;
  @override
  final int requesterId;
  @override
  final int responderId;
  @override
  final ProfileExchangeStatus profileExchangeStatus;

  @override
  String toString() {
    return 'ProfileExchangeInfo(profileExchangeId: $profileExchangeId, requesterId: $requesterId, responderId: $responderId, profileExchangeStatus: $profileExchangeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileExchangeInfoImpl &&
            (identical(other.profileExchangeId, profileExchangeId) ||
                other.profileExchangeId == profileExchangeId) &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.responderId, responderId) ||
                other.responderId == responderId) &&
            (identical(other.profileExchangeStatus, profileExchangeStatus) ||
                other.profileExchangeStatus == profileExchangeStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profileExchangeId, requesterId,
      responderId, profileExchangeStatus);

  /// Create a copy of ProfileExchangeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileExchangeInfoImplCopyWith<_$ProfileExchangeInfoImpl> get copyWith =>
      __$$ProfileExchangeInfoImplCopyWithImpl<_$ProfileExchangeInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileExchangeInfoImplToJson(
      this,
    );
  }
}

abstract class _ProfileExchangeInfo implements ProfileExchangeInfo {
  const factory _ProfileExchangeInfo(
          {required final int profileExchangeId,
          required final int requesterId,
          required final int responderId,
          required final ProfileExchangeStatus profileExchangeStatus}) =
      _$ProfileExchangeInfoImpl;

  factory _ProfileExchangeInfo.fromJson(Map<String, dynamic> json) =
      _$ProfileExchangeInfoImpl.fromJson;

  @override
  int get profileExchangeId;
  @override
  int get requesterId;
  @override
  int get responderId;
  @override
  ProfileExchangeStatus get profileExchangeStatus;

  /// Create a copy of ProfileExchangeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileExchangeInfoImplCopyWith<_$ProfileExchangeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileInterview _$ProfileInterviewFromJson(Map<String, dynamic> json) {
  return _ProfileInterview.fromJson(json);
}

/// @nodoc
mixin _$ProfileInterview {
  String get content => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  /// Serializes this ProfileInterview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileInterview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileInterviewCopyWith<ProfileInterview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInterviewCopyWith<$Res> {
  factory $ProfileInterviewCopyWith(
          ProfileInterview value, $Res Function(ProfileInterview) then) =
      _$ProfileInterviewCopyWithImpl<$Res, ProfileInterview>;
  @useResult
  $Res call({String content, String category, String answer});
}

/// @nodoc
class _$ProfileInterviewCopyWithImpl<$Res, $Val extends ProfileInterview>
    implements $ProfileInterviewCopyWith<$Res> {
  _$ProfileInterviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileInterview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? category = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileInterviewImplCopyWith<$Res>
    implements $ProfileInterviewCopyWith<$Res> {
  factory _$$ProfileInterviewImplCopyWith(_$ProfileInterviewImpl value,
          $Res Function(_$ProfileInterviewImpl) then) =
      __$$ProfileInterviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String category, String answer});
}

/// @nodoc
class __$$ProfileInterviewImplCopyWithImpl<$Res>
    extends _$ProfileInterviewCopyWithImpl<$Res, _$ProfileInterviewImpl>
    implements _$$ProfileInterviewImplCopyWith<$Res> {
  __$$ProfileInterviewImplCopyWithImpl(_$ProfileInterviewImpl _value,
      $Res Function(_$ProfileInterviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileInterview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? category = null,
    Object? answer = null,
  }) {
    return _then(_$ProfileInterviewImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileInterviewImpl implements _ProfileInterview {
  const _$ProfileInterviewImpl(
      {required this.content, required this.category, required this.answer});

  factory _$ProfileInterviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileInterviewImplFromJson(json);

  @override
  final String content;
  @override
  final String category;
  @override
  final String answer;

  @override
  String toString() {
    return 'ProfileInterview(content: $content, category: $category, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInterviewImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, category, answer);

  /// Create a copy of ProfileInterview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInterviewImplCopyWith<_$ProfileInterviewImpl> get copyWith =>
      __$$ProfileInterviewImplCopyWithImpl<_$ProfileInterviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileInterviewImplToJson(
      this,
    );
  }
}

abstract class _ProfileInterview implements ProfileInterview {
  const factory _ProfileInterview(
      {required final String content,
      required final String category,
      required final String answer}) = _$ProfileInterviewImpl;

  factory _ProfileInterview.fromJson(Map<String, dynamic> json) =
      _$ProfileInterviewImpl.fromJson;

  @override
  String get content;
  @override
  String get category;
  @override
  String get answer;

  /// Create a copy of ProfileInterview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileInterviewImplCopyWith<_$ProfileInterviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
