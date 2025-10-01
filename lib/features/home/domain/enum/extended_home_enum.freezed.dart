// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extended_home_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExtendedHomeEnum<T extends Enum> {
  T? get status => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  /// Create a copy of ExtendedHomeEnum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtendedHomeEnumCopyWith<T, ExtendedHomeEnum<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtendedHomeEnumCopyWith<T extends Enum, $Res> {
  factory $ExtendedHomeEnumCopyWith(
          ExtendedHomeEnum<T> value, $Res Function(ExtendedHomeEnum<T>) then) =
      _$ExtendedHomeEnumCopyWithImpl<T, $Res, ExtendedHomeEnum<T>>;
  @useResult
  $Res call({T? status, String label});
}

/// @nodoc
class _$ExtendedHomeEnumCopyWithImpl<T extends Enum, $Res,
        $Val extends ExtendedHomeEnum<T>>
    implements $ExtendedHomeEnumCopyWith<T, $Res> {
  _$ExtendedHomeEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtendedHomeEnum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as T?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtendedHomeEnumImplCopyWith<T extends Enum, $Res>
    implements $ExtendedHomeEnumCopyWith<T, $Res> {
  factory _$$ExtendedHomeEnumImplCopyWith(_$ExtendedHomeEnumImpl<T> value,
          $Res Function(_$ExtendedHomeEnumImpl<T>) then) =
      __$$ExtendedHomeEnumImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? status, String label});
}

/// @nodoc
class __$$ExtendedHomeEnumImplCopyWithImpl<T extends Enum, $Res>
    extends _$ExtendedHomeEnumCopyWithImpl<T, $Res, _$ExtendedHomeEnumImpl<T>>
    implements _$$ExtendedHomeEnumImplCopyWith<T, $Res> {
  __$$ExtendedHomeEnumImplCopyWithImpl(_$ExtendedHomeEnumImpl<T> _value,
      $Res Function(_$ExtendedHomeEnumImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ExtendedHomeEnum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? label = null,
  }) {
    return _then(_$ExtendedHomeEnumImpl<T>(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as T?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExtendedHomeEnumImpl<T extends Enum> extends _ExtendedHomeEnum<T> {
  const _$ExtendedHomeEnumImpl({this.status, required this.label}) : super._();

  @override
  final T? status;
  @override
  final String label;

  @override
  String toString() {
    return 'ExtendedHomeEnum<$T>(status: $status, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtendedHomeEnumImpl<T> &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(status), label);

  /// Create a copy of ExtendedHomeEnum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtendedHomeEnumImplCopyWith<T, _$ExtendedHomeEnumImpl<T>> get copyWith =>
      __$$ExtendedHomeEnumImplCopyWithImpl<T, _$ExtendedHomeEnumImpl<T>>(
          this, _$identity);
}

abstract class _ExtendedHomeEnum<T extends Enum> extends ExtendedHomeEnum<T> {
  const factory _ExtendedHomeEnum(
      {final T? status,
      required final String label}) = _$ExtendedHomeEnumImpl<T>;
  const _ExtendedHomeEnum._() : super._();

  @override
  T? get status;
  @override
  String get label;

  /// Create a copy of ExtendedHomeEnum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtendedHomeEnumImplCopyWith<T, _$ExtendedHomeEnumImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
