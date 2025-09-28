// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppGlobalState {
  CachedUserProfile get profile => throw _privateConstructorUsedError;

  /// Create a copy of AppGlobalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppGlobalStateCopyWith<AppGlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppGlobalStateCopyWith<$Res> {
  factory $AppGlobalStateCopyWith(
          AppGlobalState value, $Res Function(AppGlobalState) then) =
      _$AppGlobalStateCopyWithImpl<$Res, AppGlobalState>;
  @useResult
  $Res call({CachedUserProfile profile});

  $CachedUserProfileCopyWith<$Res> get profile;
}

/// @nodoc
class _$AppGlobalStateCopyWithImpl<$Res, $Val extends AppGlobalState>
    implements $AppGlobalStateCopyWith<$Res> {
  _$AppGlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppGlobalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as CachedUserProfile,
    ) as $Val);
  }

  /// Create a copy of AppGlobalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CachedUserProfileCopyWith<$Res> get profile {
    return $CachedUserProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppGlobalStateImplCopyWith<$Res>
    implements $AppGlobalStateCopyWith<$Res> {
  factory _$$AppGlobalStateImplCopyWith(_$AppGlobalStateImpl value,
          $Res Function(_$AppGlobalStateImpl) then) =
      __$$AppGlobalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CachedUserProfile profile});

  @override
  $CachedUserProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$AppGlobalStateImplCopyWithImpl<$Res>
    extends _$AppGlobalStateCopyWithImpl<$Res, _$AppGlobalStateImpl>
    implements _$$AppGlobalStateImplCopyWith<$Res> {
  __$$AppGlobalStateImplCopyWithImpl(
      _$AppGlobalStateImpl _value, $Res Function(_$AppGlobalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppGlobalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$AppGlobalStateImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as CachedUserProfile,
    ));
  }
}

/// @nodoc

class _$AppGlobalStateImpl implements _AppGlobalState {
  const _$AppGlobalStateImpl({required this.profile});

  @override
  final CachedUserProfile profile;

  @override
  String toString() {
    return 'AppGlobalState(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppGlobalStateImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of AppGlobalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppGlobalStateImplCopyWith<_$AppGlobalStateImpl> get copyWith =>
      __$$AppGlobalStateImplCopyWithImpl<_$AppGlobalStateImpl>(
          this, _$identity);
}

abstract class _AppGlobalState implements AppGlobalState {
  const factory _AppGlobalState({required final CachedUserProfile profile}) =
      _$AppGlobalStateImpl;

  @override
  CachedUserProfile get profile;

  /// Create a copy of AppGlobalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppGlobalStateImplCopyWith<_$AppGlobalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
