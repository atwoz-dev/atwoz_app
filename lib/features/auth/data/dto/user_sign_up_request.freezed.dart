// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSignUpRequest _$UserSignUpRequestFromJson(Map<String, dynamic> json) {
  return _UserSignUpRequest.fromJson(json);
}

/// @nodoc
mixin _$UserSignUpRequest {
  int get seq => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isReceivingAdvertisemenet => throw _privateConstructorUsedError;
  int? get registrationPath => throw _privateConstructorUsedError;
  bool get isResign => throw _privateConstructorUsedError;
  @ConvertStringToDateTime()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this UserSignUpRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSignUpRequestCopyWith<UserSignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignUpRequestCopyWith<$Res> {
  factory $UserSignUpRequestCopyWith(
          UserSignUpRequest value, $Res Function(UserSignUpRequest) then) =
      _$UserSignUpRequestCopyWithImpl<$Res, UserSignUpRequest>;
  @useResult
  $Res call(
      {int seq,
      String id,
      String password,
      String nickName,
      String email,
      String phoneNumber,
      bool isReceivingAdvertisemenet,
      int? registrationPath,
      bool isResign,
      @ConvertStringToDateTime() DateTime? createdAt});
}

/// @nodoc
class _$UserSignUpRequestCopyWithImpl<$Res, $Val extends UserSignUpRequest>
    implements $UserSignUpRequestCopyWith<$Res> {
  _$UserSignUpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? id = null,
    Object? password = null,
    Object? nickName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? isReceivingAdvertisemenet = null,
    Object? registrationPath = freezed,
    Object? isResign = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isReceivingAdvertisemenet: null == isReceivingAdvertisemenet
          ? _value.isReceivingAdvertisemenet
          : isReceivingAdvertisemenet // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationPath: freezed == registrationPath
          ? _value.registrationPath
          : registrationPath // ignore: cast_nullable_to_non_nullable
              as int?,
      isResign: null == isResign
          ? _value.isResign
          : isResign // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSignUpRequestImplCopyWith<$Res>
    implements $UserSignUpRequestCopyWith<$Res> {
  factory _$$UserSignUpRequestImplCopyWith(_$UserSignUpRequestImpl value,
          $Res Function(_$UserSignUpRequestImpl) then) =
      __$$UserSignUpRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int seq,
      String id,
      String password,
      String nickName,
      String email,
      String phoneNumber,
      bool isReceivingAdvertisemenet,
      int? registrationPath,
      bool isResign,
      @ConvertStringToDateTime() DateTime? createdAt});
}

/// @nodoc
class __$$UserSignUpRequestImplCopyWithImpl<$Res>
    extends _$UserSignUpRequestCopyWithImpl<$Res, _$UserSignUpRequestImpl>
    implements _$$UserSignUpRequestImplCopyWith<$Res> {
  __$$UserSignUpRequestImplCopyWithImpl(_$UserSignUpRequestImpl _value,
      $Res Function(_$UserSignUpRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? id = null,
    Object? password = null,
    Object? nickName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? isReceivingAdvertisemenet = null,
    Object? registrationPath = freezed,
    Object? isResign = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$UserSignUpRequestImpl(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isReceivingAdvertisemenet: null == isReceivingAdvertisemenet
          ? _value.isReceivingAdvertisemenet
          : isReceivingAdvertisemenet // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationPath: freezed == registrationPath
          ? _value.registrationPath
          : registrationPath // ignore: cast_nullable_to_non_nullable
              as int?,
      isResign: null == isResign
          ? _value.isResign
          : isResign // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.screamingSnake)
class _$UserSignUpRequestImpl extends _UserSignUpRequest {
  const _$UserSignUpRequestImpl(
      {required this.seq,
      required this.id,
      required this.password,
      required this.nickName,
      required this.email,
      required this.phoneNumber,
      required this.isReceivingAdvertisemenet,
      this.registrationPath,
      required this.isResign,
      @ConvertStringToDateTime() this.createdAt})
      : super._();

  factory _$UserSignUpRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSignUpRequestImplFromJson(json);

  @override
  final int seq;
  @override
  final String id;
  @override
  final String password;
  @override
  final String nickName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final bool isReceivingAdvertisemenet;
  @override
  final int? registrationPath;
  @override
  final bool isResign;
  @override
  @ConvertStringToDateTime()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'UserSignUpRequest(seq: $seq, id: $id, password: $password, nickName: $nickName, email: $email, phoneNumber: $phoneNumber, isReceivingAdvertisemenet: $isReceivingAdvertisemenet, registrationPath: $registrationPath, isResign: $isResign, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignUpRequestImpl &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isReceivingAdvertisemenet,
                    isReceivingAdvertisemenet) ||
                other.isReceivingAdvertisemenet == isReceivingAdvertisemenet) &&
            (identical(other.registrationPath, registrationPath) ||
                other.registrationPath == registrationPath) &&
            (identical(other.isResign, isResign) ||
                other.isResign == isResign) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      seq,
      id,
      password,
      nickName,
      email,
      phoneNumber,
      isReceivingAdvertisemenet,
      registrationPath,
      isResign,
      createdAt);

  /// Create a copy of UserSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignUpRequestImplCopyWith<_$UserSignUpRequestImpl> get copyWith =>
      __$$UserSignUpRequestImplCopyWithImpl<_$UserSignUpRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSignUpRequestImplToJson(
      this,
    );
  }
}

abstract class _UserSignUpRequest extends UserSignUpRequest {
  const factory _UserSignUpRequest(
          {required final int seq,
          required final String id,
          required final String password,
          required final String nickName,
          required final String email,
          required final String phoneNumber,
          required final bool isReceivingAdvertisemenet,
          final int? registrationPath,
          required final bool isResign,
          @ConvertStringToDateTime() final DateTime? createdAt}) =
      _$UserSignUpRequestImpl;
  const _UserSignUpRequest._() : super._();

  factory _UserSignUpRequest.fromJson(Map<String, dynamic> json) =
      _$UserSignUpRequestImpl.fromJson;

  @override
  int get seq;
  @override
  String get id;
  @override
  String get password;
  @override
  String get nickName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  bool get isReceivingAdvertisemenet;
  @override
  int? get registrationPath;
  @override
  bool get isResign;
  @override
  @ConvertStringToDateTime()
  DateTime? get createdAt;

  /// Create a copy of UserSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSignUpRequestImplCopyWith<_$UserSignUpRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
