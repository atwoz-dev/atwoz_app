// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfile {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profileUri => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get mbti => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<String> get hobbies => throw _privateConstructorUsedError;
  List<SelfIntroductionData> get selfIntroductionItems =>
      throw _privateConstructorUsedError;
  SmokingStatus get smokingStatus => throw _privateConstructorUsedError;
  DrinkingStatus get drinkingStatus => throw _privateConstructorUsedError;
  EducationLevel get educationLevel => throw _privateConstructorUsedError;
  Religion get religion => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  Job get job => throw _privateConstructorUsedError;
  MatchStatus get matchStatus => throw _privateConstructorUsedError;
  ProfileExchangeInfo? get profileExchangeInfo =>
      throw _privateConstructorUsedError;
  FavoriteType? get favoriteType => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {int id,
      String name,
      String profileUri,
      int age,
      String mbti,
      String address,
      List<String> hobbies,
      List<SelfIntroductionData> selfIntroductionItems,
      SmokingStatus smokingStatus,
      DrinkingStatus drinkingStatus,
      EducationLevel educationLevel,
      Religion religion,
      Region region,
      double height,
      Job job,
      MatchStatus matchStatus,
      ProfileExchangeInfo? profileExchangeInfo,
      FavoriteType? favoriteType});

  $ProfileExchangeInfoCopyWith<$Res>? get profileExchangeInfo;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profileUri = null,
    Object? age = null,
    Object? mbti = null,
    Object? address = null,
    Object? hobbies = null,
    Object? selfIntroductionItems = null,
    Object? smokingStatus = null,
    Object? drinkingStatus = null,
    Object? educationLevel = null,
    Object? religion = null,
    Object? region = null,
    Object? height = null,
    Object? job = null,
    Object? matchStatus = null,
    Object? profileExchangeInfo = freezed,
    Object? favoriteType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileUri: null == profileUri
          ? _value.profileUri
          : profileUri // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      mbti: null == mbti
          ? _value.mbti
          : mbti // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      hobbies: null == hobbies
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selfIntroductionItems: null == selfIntroductionItems
          ? _value.selfIntroductionItems
          : selfIntroductionItems // ignore: cast_nullable_to_non_nullable
              as List<SelfIntroductionData>,
      smokingStatus: null == smokingStatus
          ? _value.smokingStatus
          : smokingStatus // ignore: cast_nullable_to_non_nullable
              as SmokingStatus,
      drinkingStatus: null == drinkingStatus
          ? _value.drinkingStatus
          : drinkingStatus // ignore: cast_nullable_to_non_nullable
              as DrinkingStatus,
      educationLevel: null == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as EducationLevel,
      religion: null == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as Religion,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
      matchStatus: null == matchStatus
          ? _value.matchStatus
          : matchStatus // ignore: cast_nullable_to_non_nullable
              as MatchStatus,
      profileExchangeInfo: freezed == profileExchangeInfo
          ? _value.profileExchangeInfo
          : profileExchangeInfo // ignore: cast_nullable_to_non_nullable
              as ProfileExchangeInfo?,
      favoriteType: freezed == favoriteType
          ? _value.favoriteType
          : favoriteType // ignore: cast_nullable_to_non_nullable
              as FavoriteType?,
    ) as $Val);
  }

  /// Create a copy of UserProfile
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
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String profileUri,
      int age,
      String mbti,
      String address,
      List<String> hobbies,
      List<SelfIntroductionData> selfIntroductionItems,
      SmokingStatus smokingStatus,
      DrinkingStatus drinkingStatus,
      EducationLevel educationLevel,
      Religion religion,
      Region region,
      double height,
      Job job,
      MatchStatus matchStatus,
      ProfileExchangeInfo? profileExchangeInfo,
      FavoriteType? favoriteType});

  @override
  $ProfileExchangeInfoCopyWith<$Res>? get profileExchangeInfo;
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profileUri = null,
    Object? age = null,
    Object? mbti = null,
    Object? address = null,
    Object? hobbies = null,
    Object? selfIntroductionItems = null,
    Object? smokingStatus = null,
    Object? drinkingStatus = null,
    Object? educationLevel = null,
    Object? religion = null,
    Object? region = null,
    Object? height = null,
    Object? job = null,
    Object? matchStatus = null,
    Object? profileExchangeInfo = freezed,
    Object? favoriteType = freezed,
  }) {
    return _then(_$UserProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileUri: null == profileUri
          ? _value.profileUri
          : profileUri // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      mbti: null == mbti
          ? _value.mbti
          : mbti // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      hobbies: null == hobbies
          ? _value._hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selfIntroductionItems: null == selfIntroductionItems
          ? _value._selfIntroductionItems
          : selfIntroductionItems // ignore: cast_nullable_to_non_nullable
              as List<SelfIntroductionData>,
      smokingStatus: null == smokingStatus
          ? _value.smokingStatus
          : smokingStatus // ignore: cast_nullable_to_non_nullable
              as SmokingStatus,
      drinkingStatus: null == drinkingStatus
          ? _value.drinkingStatus
          : drinkingStatus // ignore: cast_nullable_to_non_nullable
              as DrinkingStatus,
      educationLevel: null == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as EducationLevel,
      religion: null == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as Religion,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
      matchStatus: null == matchStatus
          ? _value.matchStatus
          : matchStatus // ignore: cast_nullable_to_non_nullable
              as MatchStatus,
      profileExchangeInfo: freezed == profileExchangeInfo
          ? _value.profileExchangeInfo
          : profileExchangeInfo // ignore: cast_nullable_to_non_nullable
              as ProfileExchangeInfo?,
      favoriteType: freezed == favoriteType
          ? _value.favoriteType
          : favoriteType // ignore: cast_nullable_to_non_nullable
              as FavoriteType?,
    ));
  }
}

/// @nodoc

class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.id,
      required this.name,
      required this.profileUri,
      required this.age,
      required this.mbti,
      required this.address,
      required final List<String> hobbies,
      required final List<SelfIntroductionData> selfIntroductionItems,
      required this.smokingStatus,
      required this.drinkingStatus,
      required this.educationLevel,
      required this.religion,
      required this.region,
      required this.height,
      required this.job,
      required this.matchStatus,
      required this.profileExchangeInfo,
      required this.favoriteType})
      : _hobbies = hobbies,
        _selfIntroductionItems = selfIntroductionItems;

  @override
  final int id;
  @override
  final String name;
  @override
  final String profileUri;
  @override
  final int age;
  @override
  final String mbti;
  @override
  final String address;
  final List<String> _hobbies;
  @override
  List<String> get hobbies {
    if (_hobbies is EqualUnmodifiableListView) return _hobbies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hobbies);
  }

  final List<SelfIntroductionData> _selfIntroductionItems;
  @override
  List<SelfIntroductionData> get selfIntroductionItems {
    if (_selfIntroductionItems is EqualUnmodifiableListView)
      return _selfIntroductionItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selfIntroductionItems);
  }

  @override
  final SmokingStatus smokingStatus;
  @override
  final DrinkingStatus drinkingStatus;
  @override
  final EducationLevel educationLevel;
  @override
  final Religion religion;
  @override
  final Region region;
  @override
  final double height;
  @override
  final Job job;
  @override
  final MatchStatus matchStatus;
  @override
  final ProfileExchangeInfo? profileExchangeInfo;
  @override
  final FavoriteType? favoriteType;

  @override
  String toString() {
    return 'UserProfile(id: $id, name: $name, profileUri: $profileUri, age: $age, mbti: $mbti, address: $address, hobbies: $hobbies, selfIntroductionItems: $selfIntroductionItems, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, educationLevel: $educationLevel, religion: $religion, region: $region, height: $height, job: $job, matchStatus: $matchStatus, profileExchangeInfo: $profileExchangeInfo, favoriteType: $favoriteType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileUri, profileUri) ||
                other.profileUri == profileUri) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.mbti, mbti) || other.mbti == mbti) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._hobbies, _hobbies) &&
            const DeepCollectionEquality()
                .equals(other._selfIntroductionItems, _selfIntroductionItems) &&
            (identical(other.smokingStatus, smokingStatus) ||
                other.smokingStatus == smokingStatus) &&
            (identical(other.drinkingStatus, drinkingStatus) ||
                other.drinkingStatus == drinkingStatus) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.matchStatus, matchStatus) ||
                other.matchStatus == matchStatus) &&
            (identical(other.profileExchangeInfo, profileExchangeInfo) ||
                other.profileExchangeInfo == profileExchangeInfo) &&
            (identical(other.favoriteType, favoriteType) ||
                other.favoriteType == favoriteType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      profileUri,
      age,
      mbti,
      address,
      const DeepCollectionEquality().hash(_hobbies),
      const DeepCollectionEquality().hash(_selfIntroductionItems),
      smokingStatus,
      drinkingStatus,
      educationLevel,
      religion,
      region,
      height,
      job,
      matchStatus,
      profileExchangeInfo,
      favoriteType);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {required final int id,
      required final String name,
      required final String profileUri,
      required final int age,
      required final String mbti,
      required final String address,
      required final List<String> hobbies,
      required final List<SelfIntroductionData> selfIntroductionItems,
      required final SmokingStatus smokingStatus,
      required final DrinkingStatus drinkingStatus,
      required final EducationLevel educationLevel,
      required final Religion religion,
      required final Region region,
      required final double height,
      required final Job job,
      required final MatchStatus matchStatus,
      required final ProfileExchangeInfo? profileExchangeInfo,
      required final FavoriteType? favoriteType}) = _$UserProfileImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get profileUri;
  @override
  int get age;
  @override
  String get mbti;
  @override
  String get address;
  @override
  List<String> get hobbies;
  @override
  List<SelfIntroductionData> get selfIntroductionItems;
  @override
  SmokingStatus get smokingStatus;
  @override
  DrinkingStatus get drinkingStatus;
  @override
  EducationLevel get educationLevel;
  @override
  Religion get religion;
  @override
  Region get region;
  @override
  double get height;
  @override
  Job get job;
  @override
  MatchStatus get matchStatus;
  @override
  ProfileExchangeInfo? get profileExchangeInfo;
  @override
  FavoriteType? get favoriteType;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
