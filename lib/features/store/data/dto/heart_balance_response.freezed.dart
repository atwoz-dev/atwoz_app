// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_balance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeartBalanceResponse _$HeartBalanceResponseFromJson(Map<String, dynamic> json) {
  return _HeartBalanceResponse.fromJson(json);
}

/// @nodoc
mixin _$HeartBalanceResponse {
  int get status => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  HeartBalanceItem get data => throw _privateConstructorUsedError;

  /// Serializes this HeartBalanceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartBalanceResponseCopyWith<HeartBalanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartBalanceResponseCopyWith<$Res> {
  factory $HeartBalanceResponseCopyWith(HeartBalanceResponse value,
          $Res Function(HeartBalanceResponse) then) =
      _$HeartBalanceResponseCopyWithImpl<$Res, HeartBalanceResponse>;
  @useResult
  $Res call({int status, String code, String message, HeartBalanceItem data});

  $HeartBalanceItemCopyWith<$Res> get data;
}

/// @nodoc
class _$HeartBalanceResponseCopyWithImpl<$Res,
        $Val extends HeartBalanceResponse>
    implements $HeartBalanceResponseCopyWith<$Res> {
  _$HeartBalanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HeartBalanceItem,
    ) as $Val);
  }

  /// Create a copy of HeartBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeartBalanceItemCopyWith<$Res> get data {
    return $HeartBalanceItemCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeartBalanceResponseImplCopyWith<$Res>
    implements $HeartBalanceResponseCopyWith<$Res> {
  factory _$$HeartBalanceResponseImplCopyWith(_$HeartBalanceResponseImpl value,
          $Res Function(_$HeartBalanceResponseImpl) then) =
      __$$HeartBalanceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String code, String message, HeartBalanceItem data});

  @override
  $HeartBalanceItemCopyWith<$Res> get data;
}

/// @nodoc
class __$$HeartBalanceResponseImplCopyWithImpl<$Res>
    extends _$HeartBalanceResponseCopyWithImpl<$Res, _$HeartBalanceResponseImpl>
    implements _$$HeartBalanceResponseImplCopyWith<$Res> {
  __$$HeartBalanceResponseImplCopyWithImpl(_$HeartBalanceResponseImpl _value,
      $Res Function(_$HeartBalanceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$HeartBalanceResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HeartBalanceItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartBalanceResponseImpl implements _HeartBalanceResponse {
  const _$HeartBalanceResponseImpl(
      {required this.status,
      required this.code,
      required this.message,
      required this.data});

  factory _$HeartBalanceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartBalanceResponseImplFromJson(json);

  @override
  final int status;
  @override
  final String code;
  @override
  final String message;
  @override
  final HeartBalanceItem data;

  @override
  String toString() {
    return 'HeartBalanceResponse(status: $status, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartBalanceResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message, data);

  /// Create a copy of HeartBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartBalanceResponseImplCopyWith<_$HeartBalanceResponseImpl>
      get copyWith =>
          __$$HeartBalanceResponseImplCopyWithImpl<_$HeartBalanceResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartBalanceResponseImplToJson(
      this,
    );
  }
}

abstract class _HeartBalanceResponse implements HeartBalanceResponse {
  const factory _HeartBalanceResponse(
      {required final int status,
      required final String code,
      required final String message,
      required final HeartBalanceItem data}) = _$HeartBalanceResponseImpl;

  factory _HeartBalanceResponse.fromJson(Map<String, dynamic> json) =
      _$HeartBalanceResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get code;
  @override
  String get message;
  @override
  HeartBalanceItem get data;

  /// Create a copy of HeartBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartBalanceResponseImplCopyWith<_$HeartBalanceResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HeartBalanceItem _$HeartBalanceItemFromJson(Map<String, dynamic> json) {
  return _HeartBalanceItem.fromJson(json);
}

/// @nodoc
mixin _$HeartBalanceItem {
  int get purchaseHeartBalance => throw _privateConstructorUsedError;
  int get missionHeartBalance => throw _privateConstructorUsedError;
  int get totalHeartBalance => throw _privateConstructorUsedError;

  /// Serializes this HeartBalanceItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartBalanceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartBalanceItemCopyWith<HeartBalanceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartBalanceItemCopyWith<$Res> {
  factory $HeartBalanceItemCopyWith(
          HeartBalanceItem value, $Res Function(HeartBalanceItem) then) =
      _$HeartBalanceItemCopyWithImpl<$Res, HeartBalanceItem>;
  @useResult
  $Res call(
      {int purchaseHeartBalance,
      int missionHeartBalance,
      int totalHeartBalance});
}

/// @nodoc
class _$HeartBalanceItemCopyWithImpl<$Res, $Val extends HeartBalanceItem>
    implements $HeartBalanceItemCopyWith<$Res> {
  _$HeartBalanceItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartBalanceItem
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
abstract class _$$HeartBalanceItemImplCopyWith<$Res>
    implements $HeartBalanceItemCopyWith<$Res> {
  factory _$$HeartBalanceItemImplCopyWith(_$HeartBalanceItemImpl value,
          $Res Function(_$HeartBalanceItemImpl) then) =
      __$$HeartBalanceItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int purchaseHeartBalance,
      int missionHeartBalance,
      int totalHeartBalance});
}

/// @nodoc
class __$$HeartBalanceItemImplCopyWithImpl<$Res>
    extends _$HeartBalanceItemCopyWithImpl<$Res, _$HeartBalanceItemImpl>
    implements _$$HeartBalanceItemImplCopyWith<$Res> {
  __$$HeartBalanceItemImplCopyWithImpl(_$HeartBalanceItemImpl _value,
      $Res Function(_$HeartBalanceItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartBalanceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseHeartBalance = null,
    Object? missionHeartBalance = null,
    Object? totalHeartBalance = null,
  }) {
    return _then(_$HeartBalanceItemImpl(
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
class _$HeartBalanceItemImpl implements _HeartBalanceItem {
  const _$HeartBalanceItemImpl(
      {required this.purchaseHeartBalance,
      required this.missionHeartBalance,
      required this.totalHeartBalance});

  factory _$HeartBalanceItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartBalanceItemImplFromJson(json);

  @override
  final int purchaseHeartBalance;
  @override
  final int missionHeartBalance;
  @override
  final int totalHeartBalance;

  @override
  String toString() {
    return 'HeartBalanceItem(purchaseHeartBalance: $purchaseHeartBalance, missionHeartBalance: $missionHeartBalance, totalHeartBalance: $totalHeartBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartBalanceItemImpl &&
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

  /// Create a copy of HeartBalanceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartBalanceItemImplCopyWith<_$HeartBalanceItemImpl> get copyWith =>
      __$$HeartBalanceItemImplCopyWithImpl<_$HeartBalanceItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartBalanceItemImplToJson(
      this,
    );
  }
}

abstract class _HeartBalanceItem implements HeartBalanceItem {
  const factory _HeartBalanceItem(
      {required final int purchaseHeartBalance,
      required final int missionHeartBalance,
      required final int totalHeartBalance}) = _$HeartBalanceItemImpl;

  factory _HeartBalanceItem.fromJson(Map<String, dynamic> json) =
      _$HeartBalanceItemImpl.fromJson;

  @override
  int get purchaseHeartBalance;
  @override
  int get missionHeartBalance;
  @override
  int get totalHeartBalance;

  /// Create a copy of HeartBalanceItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartBalanceItemImplCopyWith<_$HeartBalanceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
