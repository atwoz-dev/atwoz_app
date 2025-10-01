// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ideal_type_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IdealTypeState {
  IdealType get idealType => throw _privateConstructorUsedError;
  IdealType get originalIdealType => throw _privateConstructorUsedError;
  bool get isFilterPossible => throw _privateConstructorUsedError;

  /// Create a copy of IdealTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdealTypeStateCopyWith<IdealTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdealTypeStateCopyWith<$Res> {
  factory $IdealTypeStateCopyWith(
          IdealTypeState value, $Res Function(IdealTypeState) then) =
      _$IdealTypeStateCopyWithImpl<$Res, IdealTypeState>;
  @useResult
  $Res call(
      {IdealType idealType,
      IdealType originalIdealType,
      bool isFilterPossible});

  $IdealTypeCopyWith<$Res> get idealType;
  $IdealTypeCopyWith<$Res> get originalIdealType;
}

/// @nodoc
class _$IdealTypeStateCopyWithImpl<$Res, $Val extends IdealTypeState>
    implements $IdealTypeStateCopyWith<$Res> {
  _$IdealTypeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdealTypeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idealType = null,
    Object? originalIdealType = null,
    Object? isFilterPossible = null,
  }) {
    return _then(_value.copyWith(
      idealType: null == idealType
          ? _value.idealType
          : idealType // ignore: cast_nullable_to_non_nullable
              as IdealType,
      originalIdealType: null == originalIdealType
          ? _value.originalIdealType
          : originalIdealType // ignore: cast_nullable_to_non_nullable
              as IdealType,
      isFilterPossible: null == isFilterPossible
          ? _value.isFilterPossible
          : isFilterPossible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of IdealTypeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdealTypeCopyWith<$Res> get idealType {
    return $IdealTypeCopyWith<$Res>(_value.idealType, (value) {
      return _then(_value.copyWith(idealType: value) as $Val);
    });
  }

  /// Create a copy of IdealTypeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdealTypeCopyWith<$Res> get originalIdealType {
    return $IdealTypeCopyWith<$Res>(_value.originalIdealType, (value) {
      return _then(_value.copyWith(originalIdealType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IdealTypeStateImplCopyWith<$Res>
    implements $IdealTypeStateCopyWith<$Res> {
  factory _$$IdealTypeStateImplCopyWith(_$IdealTypeStateImpl value,
          $Res Function(_$IdealTypeStateImpl) then) =
      __$$IdealTypeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IdealType idealType,
      IdealType originalIdealType,
      bool isFilterPossible});

  @override
  $IdealTypeCopyWith<$Res> get idealType;
  @override
  $IdealTypeCopyWith<$Res> get originalIdealType;
}

/// @nodoc
class __$$IdealTypeStateImplCopyWithImpl<$Res>
    extends _$IdealTypeStateCopyWithImpl<$Res, _$IdealTypeStateImpl>
    implements _$$IdealTypeStateImplCopyWith<$Res> {
  __$$IdealTypeStateImplCopyWithImpl(
      _$IdealTypeStateImpl _value, $Res Function(_$IdealTypeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdealTypeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idealType = null,
    Object? originalIdealType = null,
    Object? isFilterPossible = null,
  }) {
    return _then(_$IdealTypeStateImpl(
      idealType: null == idealType
          ? _value.idealType
          : idealType // ignore: cast_nullable_to_non_nullable
              as IdealType,
      originalIdealType: null == originalIdealType
          ? _value.originalIdealType
          : originalIdealType // ignore: cast_nullable_to_non_nullable
              as IdealType,
      isFilterPossible: null == isFilterPossible
          ? _value.isFilterPossible
          : isFilterPossible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IdealTypeStateImpl implements _IdealTypeState {
  const _$IdealTypeStateImpl(
      {required this.idealType,
      required this.originalIdealType,
      required this.isFilterPossible});

  @override
  final IdealType idealType;
  @override
  final IdealType originalIdealType;
  @override
  final bool isFilterPossible;

  @override
  String toString() {
    return 'IdealTypeState(idealType: $idealType, originalIdealType: $originalIdealType, isFilterPossible: $isFilterPossible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdealTypeStateImpl &&
            (identical(other.idealType, idealType) ||
                other.idealType == idealType) &&
            (identical(other.originalIdealType, originalIdealType) ||
                other.originalIdealType == originalIdealType) &&
            (identical(other.isFilterPossible, isFilterPossible) ||
                other.isFilterPossible == isFilterPossible));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, idealType, originalIdealType, isFilterPossible);

  /// Create a copy of IdealTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdealTypeStateImplCopyWith<_$IdealTypeStateImpl> get copyWith =>
      __$$IdealTypeStateImplCopyWithImpl<_$IdealTypeStateImpl>(
          this, _$identity);
}

abstract class _IdealTypeState implements IdealTypeState {
  const factory _IdealTypeState(
      {required final IdealType idealType,
      required final IdealType originalIdealType,
      required final bool isFilterPossible}) = _$IdealTypeStateImpl;

  @override
  IdealType get idealType;
  @override
  IdealType get originalIdealType;
  @override
  bool get isFilterPossible;

  /// Create a copy of IdealTypeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdealTypeStateImplCopyWith<_$IdealTypeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
