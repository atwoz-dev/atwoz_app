// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_receipt_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyReceiptRequest _$VerifyReceiptRequestFromJson(Map<String, dynamic> json) {
  return _VerifyReceiptRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyReceiptRequest {
  String get appReceipt => throw _privateConstructorUsedError;

  /// Serializes this VerifyReceiptRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyReceiptRequestCopyWith<VerifyReceiptRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyReceiptRequestCopyWith<$Res> {
  factory $VerifyReceiptRequestCopyWith(VerifyReceiptRequest value,
          $Res Function(VerifyReceiptRequest) then) =
      _$VerifyReceiptRequestCopyWithImpl<$Res, VerifyReceiptRequest>;
  @useResult
  $Res call({String appReceipt});
}

/// @nodoc
class _$VerifyReceiptRequestCopyWithImpl<$Res,
        $Val extends VerifyReceiptRequest>
    implements $VerifyReceiptRequestCopyWith<$Res> {
  _$VerifyReceiptRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appReceipt = null,
  }) {
    return _then(_value.copyWith(
      appReceipt: null == appReceipt
          ? _value.appReceipt
          : appReceipt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyReceiptRequestImplCopyWith<$Res>
    implements $VerifyReceiptRequestCopyWith<$Res> {
  factory _$$VerifyReceiptRequestImplCopyWith(_$VerifyReceiptRequestImpl value,
          $Res Function(_$VerifyReceiptRequestImpl) then) =
      __$$VerifyReceiptRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appReceipt});
}

/// @nodoc
class __$$VerifyReceiptRequestImplCopyWithImpl<$Res>
    extends _$VerifyReceiptRequestCopyWithImpl<$Res, _$VerifyReceiptRequestImpl>
    implements _$$VerifyReceiptRequestImplCopyWith<$Res> {
  __$$VerifyReceiptRequestImplCopyWithImpl(_$VerifyReceiptRequestImpl _value,
      $Res Function(_$VerifyReceiptRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appReceipt = null,
  }) {
    return _then(_$VerifyReceiptRequestImpl(
      appReceipt: null == appReceipt
          ? _value.appReceipt
          : appReceipt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyReceiptRequestImpl implements _VerifyReceiptRequest {
  const _$VerifyReceiptRequestImpl({required this.appReceipt});

  factory _$VerifyReceiptRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyReceiptRequestImplFromJson(json);

  @override
  final String appReceipt;

  @override
  String toString() {
    return 'VerifyReceiptRequest(appReceipt: $appReceipt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyReceiptRequestImpl &&
            (identical(other.appReceipt, appReceipt) ||
                other.appReceipt == appReceipt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appReceipt);

  /// Create a copy of VerifyReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyReceiptRequestImplCopyWith<_$VerifyReceiptRequestImpl>
      get copyWith =>
          __$$VerifyReceiptRequestImplCopyWithImpl<_$VerifyReceiptRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyReceiptRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyReceiptRequest implements VerifyReceiptRequest {
  const factory _VerifyReceiptRequest({required final String appReceipt}) =
      _$VerifyReceiptRequestImpl;

  factory _VerifyReceiptRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyReceiptRequestImpl.fromJson;

  @override
  String get appReceipt;

  /// Create a copy of VerifyReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyReceiptRequestImplCopyWith<_$VerifyReceiptRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
