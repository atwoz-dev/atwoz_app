// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_history_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HeartHistoryData {
  List<HeartTransactionSummary> get transactions =>
      throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Create a copy of HeartHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartHistoryDataCopyWith<HeartHistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartHistoryDataCopyWith<$Res> {
  factory $HeartHistoryDataCopyWith(
          HeartHistoryData value, $Res Function(HeartHistoryData) then) =
      _$HeartHistoryDataCopyWithImpl<$Res, HeartHistoryData>;
  @useResult
  $Res call({List<HeartTransactionSummary> transactions, bool hasMore});
}

/// @nodoc
class _$HeartHistoryDataCopyWithImpl<$Res, $Val extends HeartHistoryData>
    implements $HeartHistoryDataCopyWith<$Res> {
  _$HeartHistoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartHistoryData
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
              as List<HeartTransactionSummary>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeartHistoryDataImplCopyWith<$Res>
    implements $HeartHistoryDataCopyWith<$Res> {
  factory _$$HeartHistoryDataImplCopyWith(_$HeartHistoryDataImpl value,
          $Res Function(_$HeartHistoryDataImpl) then) =
      __$$HeartHistoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HeartTransactionSummary> transactions, bool hasMore});
}

/// @nodoc
class __$$HeartHistoryDataImplCopyWithImpl<$Res>
    extends _$HeartHistoryDataCopyWithImpl<$Res, _$HeartHistoryDataImpl>
    implements _$$HeartHistoryDataImplCopyWith<$Res> {
  __$$HeartHistoryDataImplCopyWithImpl(_$HeartHistoryDataImpl _value,
      $Res Function(_$HeartHistoryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? hasMore = null,
  }) {
    return _then(_$HeartHistoryDataImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<HeartTransactionSummary>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HeartHistoryDataImpl implements _HeartHistoryData {
  const _$HeartHistoryDataImpl(
      {final List<HeartTransactionSummary> transactions =
          const <HeartTransactionSummary>[],
      this.hasMore = false})
      : _transactions = transactions;

  final List<HeartTransactionSummary> _transactions;
  @override
  @JsonKey()
  List<HeartTransactionSummary> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'HeartHistoryData(transactions: $transactions, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartHistoryDataImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions), hasMore);

  /// Create a copy of HeartHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartHistoryDataImplCopyWith<_$HeartHistoryDataImpl> get copyWith =>
      __$$HeartHistoryDataImplCopyWithImpl<_$HeartHistoryDataImpl>(
          this, _$identity);
}

abstract class _HeartHistoryData implements HeartHistoryData {
  const factory _HeartHistoryData(
      {final List<HeartTransactionSummary> transactions,
      final bool hasMore}) = _$HeartHistoryDataImpl;

  @override
  List<HeartTransactionSummary> get transactions;
  @override
  bool get hasMore;

  /// Create a copy of HeartHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartHistoryDataImplCopyWith<_$HeartHistoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
