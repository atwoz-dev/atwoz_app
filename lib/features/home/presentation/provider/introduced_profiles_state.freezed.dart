// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduced_profiles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IntroducedProfilesState {
  List<IntroducedProfile> get profiles => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of IntroducedProfilesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntroducedProfilesStateCopyWith<IntroducedProfilesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroducedProfilesStateCopyWith<$Res> {
  factory $IntroducedProfilesStateCopyWith(IntroducedProfilesState value,
          $Res Function(IntroducedProfilesState) then) =
      _$IntroducedProfilesStateCopyWithImpl<$Res, IntroducedProfilesState>;
  @useResult
  $Res call({List<IntroducedProfile> profiles, bool isLoading});
}

/// @nodoc
class _$IntroducedProfilesStateCopyWithImpl<$Res,
        $Val extends IntroducedProfilesState>
    implements $IntroducedProfilesStateCopyWith<$Res> {
  _$IntroducedProfilesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntroducedProfilesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      profiles: null == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<IntroducedProfile>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryProfilesStateImplCopyWith<$Res>
    implements $IntroducedProfilesStateCopyWith<$Res> {
  factory _$$CategoryProfilesStateImplCopyWith(
          _$CategoryProfilesStateImpl value,
          $Res Function(_$CategoryProfilesStateImpl) then) =
      __$$CategoryProfilesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<IntroducedProfile> profiles, bool isLoading});
}

/// @nodoc
class __$$CategoryProfilesStateImplCopyWithImpl<$Res>
    extends _$IntroducedProfilesStateCopyWithImpl<$Res,
        _$CategoryProfilesStateImpl>
    implements _$$CategoryProfilesStateImplCopyWith<$Res> {
  __$$CategoryProfilesStateImplCopyWithImpl(_$CategoryProfilesStateImpl _value,
      $Res Function(_$CategoryProfilesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntroducedProfilesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = null,
    Object? isLoading = null,
  }) {
    return _then(_$CategoryProfilesStateImpl(
      profiles: null == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<IntroducedProfile>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CategoryProfilesStateImpl implements _CategoryProfilesState {
  const _$CategoryProfilesStateImpl(
      {final List<IntroducedProfile> profiles = const [],
      this.isLoading = false})
      : _profiles = profiles;

  final List<IntroducedProfile> _profiles;
  @override
  @JsonKey()
  List<IntroducedProfile> get profiles {
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'IntroducedProfilesState(profiles: $profiles, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProfilesStateImpl &&
            const DeepCollectionEquality().equals(other._profiles, _profiles) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_profiles), isLoading);

  /// Create a copy of IntroducedProfilesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProfilesStateImplCopyWith<_$CategoryProfilesStateImpl>
      get copyWith => __$$CategoryProfilesStateImplCopyWithImpl<
          _$CategoryProfilesStateImpl>(this, _$identity);
}

abstract class _CategoryProfilesState implements IntroducedProfilesState {
  const factory _CategoryProfilesState(
      {final List<IntroducedProfile> profiles,
      final bool isLoading}) = _$CategoryProfilesStateImpl;

  @override
  List<IntroducedProfile> get profiles;
  @override
  bool get isLoading;

  /// Create a copy of IntroducedProfilesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryProfilesStateImplCopyWith<_$CategoryProfilesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
