// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  UserProfile? get profile => throw _privateConstructorUsedError;
  String get myUserName => throw _privateConstructorUsedError;
  bool get registeredContact => throw _privateConstructorUsedError;
  int get heartPoint => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  DialogueErrorType? get error => throw _privateConstructorUsedError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {UserProfile? profile,
      String myUserName,
      bool registeredContact,
      int heartPoint,
      String message,
      bool isLoaded,
      DialogueErrorType? error});

  $UserProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? myUserName = null,
    Object? registeredContact = null,
    Object? heartPoint = null,
    Object? message = null,
    Object? isLoaded = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
      myUserName: null == myUserName
          ? _value.myUserName
          : myUserName // ignore: cast_nullable_to_non_nullable
              as String,
      registeredContact: null == registeredContact
          ? _value.registeredContact
          : registeredContact // ignore: cast_nullable_to_non_nullable
              as bool,
      heartPoint: null == heartPoint
          ? _value.heartPoint
          : heartPoint // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DialogueErrorType?,
    ) as $Val);
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $UserProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserProfile? profile,
      String myUserName,
      bool registeredContact,
      int heartPoint,
      String message,
      bool isLoaded,
      DialogueErrorType? error});

  @override
  $UserProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? myUserName = null,
    Object? registeredContact = null,
    Object? heartPoint = null,
    Object? message = null,
    Object? isLoaded = null,
    Object? error = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
      myUserName: null == myUserName
          ? _value.myUserName
          : myUserName // ignore: cast_nullable_to_non_nullable
              as String,
      registeredContact: null == registeredContact
          ? _value.registeredContact
          : registeredContact // ignore: cast_nullable_to_non_nullable
              as bool,
      heartPoint: null == heartPoint
          ? _value.heartPoint
          : heartPoint // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DialogueErrorType?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl extends _ProfileState {
  const _$ProfileStateImpl(
      {required this.profile,
      required this.myUserName,
      required this.registeredContact,
      required this.heartPoint,
      required this.message,
      required this.isLoaded,
      required this.error})
      : super._();

  @override
  final UserProfile? profile;
  @override
  final String myUserName;
  @override
  final bool registeredContact;
  @override
  final int heartPoint;
  @override
  final String message;
  @override
  final bool isLoaded;
  @override
  final DialogueErrorType? error;

  @override
  String toString() {
    return 'ProfileState(profile: $profile, myUserName: $myUserName, registeredContact: $registeredContact, heartPoint: $heartPoint, message: $message, isLoaded: $isLoaded, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.myUserName, myUserName) ||
                other.myUserName == myUserName) &&
            (identical(other.registeredContact, registeredContact) ||
                other.registeredContact == registeredContact) &&
            (identical(other.heartPoint, heartPoint) ||
                other.heartPoint == heartPoint) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile, myUserName,
      registeredContact, heartPoint, message, isLoaded, error);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  const factory _ProfileState(
      {required final UserProfile? profile,
      required final String myUserName,
      required final bool registeredContact,
      required final int heartPoint,
      required final String message,
      required final bool isLoaded,
      required final DialogueErrorType? error}) = _$ProfileStateImpl;
  const _ProfileState._() : super._();

  @override
  UserProfile? get profile;
  @override
  String get myUserName;
  @override
  bool get registeredContact;
  @override
  int get heartPoint;
  @override
  String get message;
  @override
  bool get isLoaded;
  @override
  DialogueErrorType? get error;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
