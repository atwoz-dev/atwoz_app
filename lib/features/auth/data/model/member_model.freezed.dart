// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
mixin _$Member {
  int get id => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  MemberProfile get memberProfile => throw _privateConstructorUsedError;
  bool get isVip => throw _privateConstructorUsedError;
  bool get isDatingExamSubmitted => throw _privateConstructorUsedError;
  ActivityStatus get activityStatus => throw _privateConstructorUsedError;
  HeartBalance get heartBalance => throw _privateConstructorUsedError;

  /// Serializes this Member to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res, Member>;
  @useResult
  $Res call(
      {int id,
      String phoneNumber,
      MemberProfile memberProfile,
      bool isVip,
      bool isDatingExamSubmitted,
      ActivityStatus activityStatus,
      HeartBalance heartBalance});

  $MemberProfileCopyWith<$Res> get memberProfile;
  $HeartBalanceCopyWith<$Res> get heartBalance;
}

/// @nodoc
class _$MemberCopyWithImpl<$Res, $Val extends Member>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = null,
    Object? memberProfile = null,
    Object? isVip = null,
    Object? isDatingExamSubmitted = null,
    Object? activityStatus = null,
    Object? heartBalance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      memberProfile: null == memberProfile
          ? _value.memberProfile
          : memberProfile // ignore: cast_nullable_to_non_nullable
              as MemberProfile,
      isVip: null == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
      isDatingExamSubmitted: null == isDatingExamSubmitted
          ? _value.isDatingExamSubmitted
          : isDatingExamSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      activityStatus: null == activityStatus
          ? _value.activityStatus
          : activityStatus // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      heartBalance: null == heartBalance
          ? _value.heartBalance
          : heartBalance // ignore: cast_nullable_to_non_nullable
              as HeartBalance,
    ) as $Val);
  }

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberProfileCopyWith<$Res> get memberProfile {
    return $MemberProfileCopyWith<$Res>(_value.memberProfile, (value) {
      return _then(_value.copyWith(memberProfile: value) as $Val);
    });
  }

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeartBalanceCopyWith<$Res> get heartBalance {
    return $HeartBalanceCopyWith<$Res>(_value.heartBalance, (value) {
      return _then(_value.copyWith(heartBalance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberImplCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$$MemberImplCopyWith(
          _$MemberImpl value, $Res Function(_$MemberImpl) then) =
      __$$MemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String phoneNumber,
      MemberProfile memberProfile,
      bool isVip,
      bool isDatingExamSubmitted,
      ActivityStatus activityStatus,
      HeartBalance heartBalance});

  @override
  $MemberProfileCopyWith<$Res> get memberProfile;
  @override
  $HeartBalanceCopyWith<$Res> get heartBalance;
}

/// @nodoc
class __$$MemberImplCopyWithImpl<$Res>
    extends _$MemberCopyWithImpl<$Res, _$MemberImpl>
    implements _$$MemberImplCopyWith<$Res> {
  __$$MemberImplCopyWithImpl(
      _$MemberImpl _value, $Res Function(_$MemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = null,
    Object? memberProfile = null,
    Object? isVip = null,
    Object? isDatingExamSubmitted = null,
    Object? activityStatus = null,
    Object? heartBalance = null,
  }) {
    return _then(_$MemberImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      memberProfile: null == memberProfile
          ? _value.memberProfile
          : memberProfile // ignore: cast_nullable_to_non_nullable
              as MemberProfile,
      isVip: null == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
      isDatingExamSubmitted: null == isDatingExamSubmitted
          ? _value.isDatingExamSubmitted
          : isDatingExamSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      activityStatus: null == activityStatus
          ? _value.activityStatus
          : activityStatus // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      heartBalance: null == heartBalance
          ? _value.heartBalance
          : heartBalance // ignore: cast_nullable_to_non_nullable
              as HeartBalance,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberImpl implements _Member {
  const _$MemberImpl(
      {required this.id,
      required this.phoneNumber,
      required this.memberProfile,
      required this.isVip,
      required this.isDatingExamSubmitted,
      required this.activityStatus,
      required this.heartBalance});

  factory _$MemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberImplFromJson(json);

  @override
  final int id;
  @override
  final String phoneNumber;
  @override
  final MemberProfile memberProfile;
  @override
  final bool isVip;
  @override
  final bool isDatingExamSubmitted;
  @override
  final ActivityStatus activityStatus;
  @override
  final HeartBalance heartBalance;

  @override
  String toString() {
    return 'Member(id: $id, phoneNumber: $phoneNumber, memberProfile: $memberProfile, isVip: $isVip, isDatingExamSubmitted: $isDatingExamSubmitted, activityStatus: $activityStatus, heartBalance: $heartBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.memberProfile, memberProfile) ||
                other.memberProfile == memberProfile) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.isDatingExamSubmitted, isDatingExamSubmitted) ||
                other.isDatingExamSubmitted == isDatingExamSubmitted) &&
            (identical(other.activityStatus, activityStatus) ||
                other.activityStatus == activityStatus) &&
            (identical(other.heartBalance, heartBalance) ||
                other.heartBalance == heartBalance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, phoneNumber, memberProfile,
      isVip, isDatingExamSubmitted, activityStatus, heartBalance);

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      __$$MemberImplCopyWithImpl<_$MemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberImplToJson(
      this,
    );
  }
}

abstract class _Member implements Member {
  const factory _Member(
      {required final int id,
      required final String phoneNumber,
      required final MemberProfile memberProfile,
      required final bool isVip,
      required final bool isDatingExamSubmitted,
      required final ActivityStatus activityStatus,
      required final HeartBalance heartBalance}) = _$MemberImpl;

  factory _Member.fromJson(Map<String, dynamic> json) = _$MemberImpl.fromJson;

  @override
  int get id;
  @override
  String get phoneNumber;
  @override
  MemberProfile get memberProfile;
  @override
  bool get isVip;
  @override
  bool get isDatingExamSubmitted;
  @override
  ActivityStatus get activityStatus;
  @override
  HeartBalance get heartBalance;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberProfile _$MemberProfileFromJson(Map<String, dynamic> json) {
  return _MemberProfile.fromJson(json);
}

/// @nodoc
mixin _$MemberProfile {
  String get gender => throw _privateConstructorUsedError;
  bool get isProfileSettingNeeded => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  /// Serializes this MemberProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberProfileCopyWith<MemberProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberProfileCopyWith<$Res> {
  factory $MemberProfileCopyWith(
          MemberProfile value, $Res Function(MemberProfile) then) =
      _$MemberProfileCopyWithImpl<$Res, MemberProfile>;
  @useResult
  $Res call({String gender, bool isProfileSettingNeeded, int age, int height});
}

/// @nodoc
class _$MemberProfileCopyWithImpl<$Res, $Val extends MemberProfile>
    implements $MemberProfileCopyWith<$Res> {
  _$MemberProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
    Object? isProfileSettingNeeded = null,
    Object? age = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      isProfileSettingNeeded: null == isProfileSettingNeeded
          ? _value.isProfileSettingNeeded
          : isProfileSettingNeeded // ignore: cast_nullable_to_non_nullable
              as bool,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberProfileImplCopyWith<$Res>
    implements $MemberProfileCopyWith<$Res> {
  factory _$$MemberProfileImplCopyWith(
          _$MemberProfileImpl value, $Res Function(_$MemberProfileImpl) then) =
      __$$MemberProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String gender, bool isProfileSettingNeeded, int age, int height});
}

/// @nodoc
class __$$MemberProfileImplCopyWithImpl<$Res>
    extends _$MemberProfileCopyWithImpl<$Res, _$MemberProfileImpl>
    implements _$$MemberProfileImplCopyWith<$Res> {
  __$$MemberProfileImplCopyWithImpl(
      _$MemberProfileImpl _value, $Res Function(_$MemberProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
    Object? isProfileSettingNeeded = null,
    Object? age = null,
    Object? height = null,
  }) {
    return _then(_$MemberProfileImpl(
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      isProfileSettingNeeded: null == isProfileSettingNeeded
          ? _value.isProfileSettingNeeded
          : isProfileSettingNeeded // ignore: cast_nullable_to_non_nullable
              as bool,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberProfileImpl implements _MemberProfile {
  const _$MemberProfileImpl(
      {required this.gender,
      required this.isProfileSettingNeeded,
      required this.age,
      required this.height});

  factory _$MemberProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberProfileImplFromJson(json);

  @override
  final String gender;
  @override
  final bool isProfileSettingNeeded;
  @override
  final int age;
  @override
  final int height;

  @override
  String toString() {
    return 'MemberProfile(gender: $gender, isProfileSettingNeeded: $isProfileSettingNeeded, age: $age, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberProfileImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isProfileSettingNeeded, isProfileSettingNeeded) ||
                other.isProfileSettingNeeded == isProfileSettingNeeded) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, gender, isProfileSettingNeeded, age, height);

  /// Create a copy of MemberProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberProfileImplCopyWith<_$MemberProfileImpl> get copyWith =>
      __$$MemberProfileImplCopyWithImpl<_$MemberProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberProfileImplToJson(
      this,
    );
  }
}

abstract class _MemberProfile implements MemberProfile {
  const factory _MemberProfile(
      {required final String gender,
      required final bool isProfileSettingNeeded,
      required final int age,
      required final int height}) = _$MemberProfileImpl;

  factory _MemberProfile.fromJson(Map<String, dynamic> json) =
      _$MemberProfileImpl.fromJson;

  @override
  String get gender;
  @override
  bool get isProfileSettingNeeded;
  @override
  int get age;
  @override
  int get height;

  /// Create a copy of MemberProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberProfileImplCopyWith<_$MemberProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeartBalance _$HeartBalanceFromJson(Map<String, dynamic> json) {
  return _HeartBalance.fromJson(json);
}

/// @nodoc
mixin _$HeartBalance {
  int get purchaseHeartBalance => throw _privateConstructorUsedError;
  int get missionHeartBalance => throw _privateConstructorUsedError;
  int get totalHeartBalance => throw _privateConstructorUsedError;

  /// Serializes this HeartBalance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartBalanceCopyWith<HeartBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartBalanceCopyWith<$Res> {
  factory $HeartBalanceCopyWith(
          HeartBalance value, $Res Function(HeartBalance) then) =
      _$HeartBalanceCopyWithImpl<$Res, HeartBalance>;
  @useResult
  $Res call(
      {int purchaseHeartBalance,
      int missionHeartBalance,
      int totalHeartBalance});
}

/// @nodoc
class _$HeartBalanceCopyWithImpl<$Res, $Val extends HeartBalance>
    implements $HeartBalanceCopyWith<$Res> {
  _$HeartBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseHeartBalance = null,
    Object? missionHeartBalance = null,
    Object? totalHeartBalance = null,
  }) {
    return _then(_value.copyWith(
      purchaseHeartBalance: null == purchaseHeartBalance
          ? _value.purchaseHeartBalance
          : purchaseHeartBalance // ignore: cast_nullable_to_non_nullable
              as int,
      missionHeartBalance: null == missionHeartBalance
          ? _value.missionHeartBalance
          : missionHeartBalance // ignore: cast_nullable_to_non_nullable
              as int,
      totalHeartBalance: null == totalHeartBalance
          ? _value.totalHeartBalance
          : totalHeartBalance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeartBalanceImplCopyWith<$Res>
    implements $HeartBalanceCopyWith<$Res> {
  factory _$$HeartBalanceImplCopyWith(
          _$HeartBalanceImpl value, $Res Function(_$HeartBalanceImpl) then) =
      __$$HeartBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int purchaseHeartBalance,
      int missionHeartBalance,
      int totalHeartBalance});
}

/// @nodoc
class __$$HeartBalanceImplCopyWithImpl<$Res>
    extends _$HeartBalanceCopyWithImpl<$Res, _$HeartBalanceImpl>
    implements _$$HeartBalanceImplCopyWith<$Res> {
  __$$HeartBalanceImplCopyWithImpl(
      _$HeartBalanceImpl _value, $Res Function(_$HeartBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseHeartBalance = null,
    Object? missionHeartBalance = null,
    Object? totalHeartBalance = null,
  }) {
    return _then(_$HeartBalanceImpl(
      purchaseHeartBalance: null == purchaseHeartBalance
          ? _value.purchaseHeartBalance
          : purchaseHeartBalance // ignore: cast_nullable_to_non_nullable
              as int,
      missionHeartBalance: null == missionHeartBalance
          ? _value.missionHeartBalance
          : missionHeartBalance // ignore: cast_nullable_to_non_nullable
              as int,
      totalHeartBalance: null == totalHeartBalance
          ? _value.totalHeartBalance
          : totalHeartBalance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartBalanceImpl implements _HeartBalance {
  const _$HeartBalanceImpl(
      {required this.purchaseHeartBalance,
      required this.missionHeartBalance,
      required this.totalHeartBalance});

  factory _$HeartBalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartBalanceImplFromJson(json);

  @override
  final int purchaseHeartBalance;
  @override
  final int missionHeartBalance;
  @override
  final int totalHeartBalance;

  @override
  String toString() {
    return 'HeartBalance(purchaseHeartBalance: $purchaseHeartBalance, missionHeartBalance: $missionHeartBalance, totalHeartBalance: $totalHeartBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartBalanceImpl &&
            (identical(other.purchaseHeartBalance, purchaseHeartBalance) ||
                other.purchaseHeartBalance == purchaseHeartBalance) &&
            (identical(other.missionHeartBalance, missionHeartBalance) ||
                other.missionHeartBalance == missionHeartBalance) &&
            (identical(other.totalHeartBalance, totalHeartBalance) ||
                other.totalHeartBalance == totalHeartBalance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, purchaseHeartBalance,
      missionHeartBalance, totalHeartBalance);

  /// Create a copy of HeartBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartBalanceImplCopyWith<_$HeartBalanceImpl> get copyWith =>
      __$$HeartBalanceImplCopyWithImpl<_$HeartBalanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartBalanceImplToJson(
      this,
    );
  }
}

abstract class _HeartBalance implements HeartBalance {
  const factory _HeartBalance(
      {required final int purchaseHeartBalance,
      required final int missionHeartBalance,
      required final int totalHeartBalance}) = _$HeartBalanceImpl;

  factory _HeartBalance.fromJson(Map<String, dynamic> json) =
      _$HeartBalanceImpl.fromJson;

  @override
  int get purchaseHeartBalance;
  @override
  int get missionHeartBalance;
  @override
  int get totalHeartBalance;

  /// Create a copy of HeartBalance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartBalanceImplCopyWith<_$HeartBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
