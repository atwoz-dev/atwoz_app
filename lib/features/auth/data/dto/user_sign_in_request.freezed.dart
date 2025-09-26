// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_sign_in_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSignInRequest _$UserSignInRequestFromJson(Map<String, dynamic> json) {
  return _UserSignInRequest.fromJson(json);
}

/// @nodoc
mixin _$UserSignInRequest {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this UserSignInRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSignInRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSignInRequestCopyWith<UserSignInRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignInRequestCopyWith<$Res> {
  factory $UserSignInRequestCopyWith(
          UserSignInRequest value, $Res Function(UserSignInRequest) then) =
      _$UserSignInRequestCopyWithImpl<$Res, UserSignInRequest>;
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class _$UserSignInRequestCopyWithImpl<$Res, $Val extends UserSignInRequest>
    implements $UserSignInRequestCopyWith<$Res> {
  _$UserSignInRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSignInRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSignInRequestImplCopyWith<$Res>
    implements $UserSignInRequestCopyWith<$Res> {
  factory _$$UserSignInRequestImplCopyWith(_$UserSignInRequestImpl value,
          $Res Function(_$UserSignInRequestImpl) then) =
      __$$UserSignInRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class __$$UserSignInRequestImplCopyWithImpl<$Res>
    extends _$UserSignInRequestCopyWithImpl<$Res, _$UserSignInRequestImpl>
    implements _$$UserSignInRequestImplCopyWith<$Res> {
  __$$UserSignInRequestImplCopyWithImpl(_$UserSignInRequestImpl _value,
      $Res Function(_$UserSignInRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSignInRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_$UserSignInRequestImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSignInRequestImpl implements _UserSignInRequest {
  const _$UserSignInRequestImpl(
      {required this.phoneNumber, required this.code});

  factory _$UserSignInRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSignInRequestImplFromJson(json);

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'UserSignInRequest(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignInRequestImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  /// Create a copy of UserSignInRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignInRequestImplCopyWith<_$UserSignInRequestImpl> get copyWith =>
      __$$UserSignInRequestImplCopyWithImpl<_$UserSignInRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSignInRequestImplToJson(
      this,
    );
  }
}

abstract class _UserSignInRequest implements UserSignInRequest {
  const factory _UserSignInRequest(
      {required final String phoneNumber,
      required final String code}) = _$UserSignInRequestImpl;

  factory _UserSignInRequest.fromJson(Map<String, dynamic> json) =
      _$UserSignInRequestImpl.fromJson;

  @override
  String get phoneNumber;
  @override
  String get code;

  /// Create a copy of UserSignInRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSignInRequestImplCopyWith<_$UserSignInRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
