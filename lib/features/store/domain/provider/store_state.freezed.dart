// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoreState {
  StoreData get heartBalance => throw _privateConstructorUsedError;
  List<ProductDetails> get products => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isPurchasePending => throw _privateConstructorUsedError;
  HeartBalanceErrorType? get error => throw _privateConstructorUsedError;

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreStateCopyWith<StoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreStateCopyWith<$Res> {
  factory $StoreStateCopyWith(
          StoreState value, $Res Function(StoreState) then) =
      _$StoreStateCopyWithImpl<$Res, StoreState>;
  @useResult
  $Res call(
      {StoreData heartBalance,
      List<ProductDetails> products,
      bool isLoaded,
      bool isPurchasePending,
      HeartBalanceErrorType? error});

  $StoreDataCopyWith<$Res> get heartBalance;
}

/// @nodoc
class _$StoreStateCopyWithImpl<$Res, $Val extends StoreState>
    implements $StoreStateCopyWith<$Res> {
  _$StoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heartBalance = null,
    Object? products = null,
    Object? isLoaded = null,
    Object? isPurchasePending = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      heartBalance: null == heartBalance
          ? _value.heartBalance
          : heartBalance // ignore: cast_nullable_to_non_nullable
              as StoreData,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDetails>,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isPurchasePending: null == isPurchasePending
          ? _value.isPurchasePending
          : isPurchasePending // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HeartBalanceErrorType?,
    ) as $Val);
  }

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDataCopyWith<$Res> get heartBalance {
    return $StoreDataCopyWith<$Res>(_value.heartBalance, (value) {
      return _then(_value.copyWith(heartBalance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreStateImplCopyWith<$Res>
    implements $StoreStateCopyWith<$Res> {
  factory _$$StoreStateImplCopyWith(
          _$StoreStateImpl value, $Res Function(_$StoreStateImpl) then) =
      __$$StoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StoreData heartBalance,
      List<ProductDetails> products,
      bool isLoaded,
      bool isPurchasePending,
      HeartBalanceErrorType? error});

  @override
  $StoreDataCopyWith<$Res> get heartBalance;
}

/// @nodoc
class __$$StoreStateImplCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res, _$StoreStateImpl>
    implements _$$StoreStateImplCopyWith<$Res> {
  __$$StoreStateImplCopyWithImpl(
      _$StoreStateImpl _value, $Res Function(_$StoreStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heartBalance = null,
    Object? products = null,
    Object? isLoaded = null,
    Object? isPurchasePending = null,
    Object? error = freezed,
  }) {
    return _then(_$StoreStateImpl(
      heartBalance: null == heartBalance
          ? _value.heartBalance
          : heartBalance // ignore: cast_nullable_to_non_nullable
              as StoreData,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDetails>,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isPurchasePending: null == isPurchasePending
          ? _value.isPurchasePending
          : isPurchasePending // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HeartBalanceErrorType?,
    ));
  }
}

/// @nodoc

class _$StoreStateImpl extends _StoreState {
  const _$StoreStateImpl(
      {this.heartBalance = const StoreData(),
      final List<ProductDetails> products = const [],
      this.isLoaded = false,
      this.isPurchasePending = false,
      this.error})
      : _products = products,
        super._();

  @override
  @JsonKey()
  final StoreData heartBalance;
  final List<ProductDetails> _products;
  @override
  @JsonKey()
  List<ProductDetails> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final bool isLoaded;
  @override
  @JsonKey()
  final bool isPurchasePending;
  @override
  final HeartBalanceErrorType? error;

  @override
  String toString() {
    return 'StoreState(heartBalance: $heartBalance, products: $products, isLoaded: $isLoaded, isPurchasePending: $isPurchasePending, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreStateImpl &&
            (identical(other.heartBalance, heartBalance) ||
                other.heartBalance == heartBalance) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.isPurchasePending, isPurchasePending) ||
                other.isPurchasePending == isPurchasePending) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      heartBalance,
      const DeepCollectionEquality().hash(_products),
      isLoaded,
      isPurchasePending,
      error);

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreStateImplCopyWith<_$StoreStateImpl> get copyWith =>
      __$$StoreStateImplCopyWithImpl<_$StoreStateImpl>(this, _$identity);
}

abstract class _StoreState extends StoreState {
  const factory _StoreState(
      {final StoreData heartBalance,
      final List<ProductDetails> products,
      final bool isLoaded,
      final bool isPurchasePending,
      final HeartBalanceErrorType? error}) = _$StoreStateImpl;
  const _StoreState._() : super._();

  @override
  StoreData get heartBalance;
  @override
  List<ProductDetails> get products;
  @override
  bool get isLoaded;
  @override
  bool get isPurchasePending;
  @override
  HeartBalanceErrorType? get error;

  /// Create a copy of StoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreStateImplCopyWith<_$StoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreData {
  HeartBalanceItem get heartBalance => throw _privateConstructorUsedError;

  /// Create a copy of StoreData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreDataCopyWith<StoreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDataCopyWith<$Res> {
  factory $StoreDataCopyWith(StoreData value, $Res Function(StoreData) then) =
      _$StoreDataCopyWithImpl<$Res, StoreData>;
  @useResult
  $Res call({HeartBalanceItem heartBalance});

  $HeartBalanceItemCopyWith<$Res> get heartBalance;
}

/// @nodoc
class _$StoreDataCopyWithImpl<$Res, $Val extends StoreData>
    implements $StoreDataCopyWith<$Res> {
  _$StoreDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heartBalance = null,
  }) {
    return _then(_value.copyWith(
      heartBalance: null == heartBalance
          ? _value.heartBalance
          : heartBalance // ignore: cast_nullable_to_non_nullable
              as HeartBalanceItem,
    ) as $Val);
  }

  /// Create a copy of StoreData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeartBalanceItemCopyWith<$Res> get heartBalance {
    return $HeartBalanceItemCopyWith<$Res>(_value.heartBalance, (value) {
      return _then(_value.copyWith(heartBalance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreDataImplCopyWith<$Res>
    implements $StoreDataCopyWith<$Res> {
  factory _$$StoreDataImplCopyWith(
          _$StoreDataImpl value, $Res Function(_$StoreDataImpl) then) =
      __$$StoreDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HeartBalanceItem heartBalance});

  @override
  $HeartBalanceItemCopyWith<$Res> get heartBalance;
}

/// @nodoc
class __$$StoreDataImplCopyWithImpl<$Res>
    extends _$StoreDataCopyWithImpl<$Res, _$StoreDataImpl>
    implements _$$StoreDataImplCopyWith<$Res> {
  __$$StoreDataImplCopyWithImpl(
      _$StoreDataImpl _value, $Res Function(_$StoreDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heartBalance = null,
  }) {
    return _then(_$StoreDataImpl(
      heartBalance: null == heartBalance
          ? _value.heartBalance
          : heartBalance // ignore: cast_nullable_to_non_nullable
              as HeartBalanceItem,
    ));
  }
}

/// @nodoc

class _$StoreDataImpl implements _StoreData {
  const _$StoreDataImpl(
      {this.heartBalance = const HeartBalanceItem(
          purchaseHeartBalance: 0,
          missionHeartBalance: 0,
          totalHeartBalance: 0)});

  @override
  @JsonKey()
  final HeartBalanceItem heartBalance;

  @override
  String toString() {
    return 'StoreData(heartBalance: $heartBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDataImpl &&
            (identical(other.heartBalance, heartBalance) ||
                other.heartBalance == heartBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, heartBalance);

  /// Create a copy of StoreData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDataImplCopyWith<_$StoreDataImpl> get copyWith =>
      __$$StoreDataImplCopyWithImpl<_$StoreDataImpl>(this, _$identity);
}

abstract class _StoreData implements StoreData {
  const factory _StoreData({final HeartBalanceItem heartBalance}) =
      _$StoreDataImpl;

  @override
  HeartBalanceItem get heartBalance;

  /// Create a copy of StoreData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreDataImplCopyWith<_$StoreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
