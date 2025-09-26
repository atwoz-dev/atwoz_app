// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeartHistoryItemResponse _$HeartHistoryItemResponseFromJson(
    Map<String, dynamic> json) {
  return _HeartHistoryItemResponse.fromJson(json);
}

/// @nodoc
mixin _$HeartHistoryItemResponse {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get heartAmount => throw _privateConstructorUsedError;

  /// Serializes this HeartHistoryItemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartHistoryItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartHistoryItemResponseCopyWith<HeartHistoryItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartHistoryItemResponseCopyWith<$Res> {
  factory $HeartHistoryItemResponseCopyWith(HeartHistoryItemResponse value,
          $Res Function(HeartHistoryItemResponse) then) =
      _$HeartHistoryItemResponseCopyWithImpl<$Res, HeartHistoryItemResponse>;
  @useResult
  $Res call({int id, DateTime createdAt, String content, int heartAmount});
}

/// @nodoc
class _$HeartHistoryItemResponseCopyWithImpl<$Res,
        $Val extends HeartHistoryItemResponse>
    implements $HeartHistoryItemResponseCopyWith<$Res> {
  _$HeartHistoryItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartHistoryItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? content = null,
    Object? heartAmount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      heartAmount: null == heartAmount
          ? _value.heartAmount
          : heartAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeartHistoryItemResponseImplCopyWith<$Res>
    implements $HeartHistoryItemResponseCopyWith<$Res> {
  factory _$$HeartHistoryItemResponseImplCopyWith(
          _$HeartHistoryItemResponseImpl value,
          $Res Function(_$HeartHistoryItemResponseImpl) then) =
      __$$HeartHistoryItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime createdAt, String content, int heartAmount});
}

/// @nodoc
class __$$HeartHistoryItemResponseImplCopyWithImpl<$Res>
    extends _$HeartHistoryItemResponseCopyWithImpl<$Res,
        _$HeartHistoryItemResponseImpl>
    implements _$$HeartHistoryItemResponseImplCopyWith<$Res> {
  __$$HeartHistoryItemResponseImplCopyWithImpl(
      _$HeartHistoryItemResponseImpl _value,
      $Res Function(_$HeartHistoryItemResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartHistoryItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? content = null,
    Object? heartAmount = null,
  }) {
    return _then(_$HeartHistoryItemResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      heartAmount: null == heartAmount
          ? _value.heartAmount
          : heartAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartHistoryItemResponseImpl implements _HeartHistoryItemResponse {
  const _$HeartHistoryItemResponseImpl(
      {required this.id,
      required this.createdAt,
      required this.content,
      required this.heartAmount});

  factory _$HeartHistoryItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartHistoryItemResponseImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final String content;
  @override
  final int heartAmount;

  @override
  String toString() {
    return 'HeartHistoryItemResponse(id: $id, createdAt: $createdAt, content: $content, heartAmount: $heartAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartHistoryItemResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.heartAmount, heartAmount) ||
                other.heartAmount == heartAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, content, heartAmount);

  /// Create a copy of HeartHistoryItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartHistoryItemResponseImplCopyWith<_$HeartHistoryItemResponseImpl>
      get copyWith => __$$HeartHistoryItemResponseImplCopyWithImpl<
          _$HeartHistoryItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartHistoryItemResponseImplToJson(
      this,
    );
  }
}

abstract class _HeartHistoryItemResponse implements HeartHistoryItemResponse {
  const factory _HeartHistoryItemResponse(
      {required final int id,
      required final DateTime createdAt,
      required final String content,
      required final int heartAmount}) = _$HeartHistoryItemResponseImpl;

  factory _HeartHistoryItemResponse.fromJson(Map<String, dynamic> json) =
      _$HeartHistoryItemResponseImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  String get content;
  @override
  int get heartAmount;

  /// Create a copy of HeartHistoryItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartHistoryItemResponseImplCopyWith<_$HeartHistoryItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HeartHistoryResponse _$HeartHistoryResponseFromJson(Map<String, dynamic> json) {
  return _HeartHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$HeartHistoryResponse {
  List<HeartHistoryItemResponse> get transactions =>
      throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Serializes this HeartHistoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartHistoryResponseCopyWith<HeartHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartHistoryResponseCopyWith<$Res> {
  factory $HeartHistoryResponseCopyWith(HeartHistoryResponse value,
          $Res Function(HeartHistoryResponse) then) =
      _$HeartHistoryResponseCopyWithImpl<$Res, HeartHistoryResponse>;
  @useResult
  $Res call({List<HeartHistoryItemResponse> transactions, bool hasMore});
}

/// @nodoc
class _$HeartHistoryResponseCopyWithImpl<$Res,
        $Val extends HeartHistoryResponse>
    implements $HeartHistoryResponseCopyWith<$Res> {
  _$HeartHistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<HeartHistoryItemResponse>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeartHistoryResponseImplCopyWith<$Res>
    implements $HeartHistoryResponseCopyWith<$Res> {
  factory _$$HeartHistoryResponseImplCopyWith(_$HeartHistoryResponseImpl value,
          $Res Function(_$HeartHistoryResponseImpl) then) =
      __$$HeartHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HeartHistoryItemResponse> transactions, bool hasMore});
}

/// @nodoc
class __$$HeartHistoryResponseImplCopyWithImpl<$Res>
    extends _$HeartHistoryResponseCopyWithImpl<$Res, _$HeartHistoryResponseImpl>
    implements _$$HeartHistoryResponseImplCopyWith<$Res> {
  __$$HeartHistoryResponseImplCopyWithImpl(_$HeartHistoryResponseImpl _value,
      $Res Function(_$HeartHistoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? hasMore = null,
  }) {
    return _then(_$HeartHistoryResponseImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<HeartHistoryItemResponse>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartHistoryResponseImpl implements _HeartHistoryResponse {
  const _$HeartHistoryResponseImpl(
      {required final List<HeartHistoryItemResponse> transactions,
      required this.hasMore})
      : _transactions = transactions;

  factory _$HeartHistoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartHistoryResponseImplFromJson(json);

  final List<HeartHistoryItemResponse> _transactions;
  @override
  List<HeartHistoryItemResponse> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final bool hasMore;

  @override
  String toString() {
    return 'HeartHistoryResponse(transactions: $transactions, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartHistoryResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions), hasMore);

  /// Create a copy of HeartHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartHistoryResponseImplCopyWith<_$HeartHistoryResponseImpl>
      get copyWith =>
          __$$HeartHistoryResponseImplCopyWithImpl<_$HeartHistoryResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartHistoryResponseImplToJson(
      this,
    );
  }
}

abstract class _HeartHistoryResponse implements HeartHistoryResponse {
  const factory _HeartHistoryResponse(
      {required final List<HeartHistoryItemResponse> transactions,
      required final bool hasMore}) = _$HeartHistoryResponseImpl;

  factory _HeartHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$HeartHistoryResponseImpl.fromJson;

  @override
  List<HeartHistoryItemResponse> get transactions;
  @override
  bool get hasMore;

  /// Create a copy of HeartHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartHistoryResponseImplCopyWith<_$HeartHistoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
