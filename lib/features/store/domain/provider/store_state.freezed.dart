// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoreState {

 HeartBalance get heartBalance; List<ProductDetails> get products; bool get isLoaded; bool get isPurchasePending; HeartBalanceErrorType? get error;
/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreStateCopyWith<StoreState> get copyWith => _$StoreStateCopyWithImpl<StoreState>(this as StoreState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreState&&(identical(other.heartBalance, heartBalance) || other.heartBalance == heartBalance)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.isPurchasePending, isPurchasePending) || other.isPurchasePending == isPurchasePending)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,heartBalance,const DeepCollectionEquality().hash(products),isLoaded,isPurchasePending,error);

@override
String toString() {
  return 'StoreState(heartBalance: $heartBalance, products: $products, isLoaded: $isLoaded, isPurchasePending: $isPurchasePending, error: $error)';
}


}

/// @nodoc
abstract mixin class $StoreStateCopyWith<$Res>  {
  factory $StoreStateCopyWith(StoreState value, $Res Function(StoreState) _then) = _$StoreStateCopyWithImpl;
@useResult
$Res call({
 HeartBalance heartBalance, List<ProductDetails> products, bool isLoaded, bool isPurchasePending, HeartBalanceErrorType? error
});


$HeartBalanceCopyWith<$Res> get heartBalance;

}
/// @nodoc
class _$StoreStateCopyWithImpl<$Res>
    implements $StoreStateCopyWith<$Res> {
  _$StoreStateCopyWithImpl(this._self, this._then);

  final StoreState _self;
  final $Res Function(StoreState) _then;

/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? heartBalance = null,Object? products = null,Object? isLoaded = null,Object? isPurchasePending = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
heartBalance: null == heartBalance ? _self.heartBalance : heartBalance // ignore: cast_nullable_to_non_nullable
as HeartBalance,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductDetails>,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,isPurchasePending: null == isPurchasePending ? _self.isPurchasePending : isPurchasePending // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as HeartBalanceErrorType?,
  ));
}
/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeartBalanceCopyWith<$Res> get heartBalance {
  
  return $HeartBalanceCopyWith<$Res>(_self.heartBalance, (value) {
    return _then(_self.copyWith(heartBalance: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreState].
extension StoreStatePatterns on StoreState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreState value)  $default,){
final _that = this;
switch (_that) {
case _StoreState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreState value)?  $default,){
final _that = this;
switch (_that) {
case _StoreState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HeartBalance heartBalance,  List<ProductDetails> products,  bool isLoaded,  bool isPurchasePending,  HeartBalanceErrorType? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreState() when $default != null:
return $default(_that.heartBalance,_that.products,_that.isLoaded,_that.isPurchasePending,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HeartBalance heartBalance,  List<ProductDetails> products,  bool isLoaded,  bool isPurchasePending,  HeartBalanceErrorType? error)  $default,) {final _that = this;
switch (_that) {
case _StoreState():
return $default(_that.heartBalance,_that.products,_that.isLoaded,_that.isPurchasePending,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HeartBalance heartBalance,  List<ProductDetails> products,  bool isLoaded,  bool isPurchasePending,  HeartBalanceErrorType? error)?  $default,) {final _that = this;
switch (_that) {
case _StoreState() when $default != null:
return $default(_that.heartBalance,_that.products,_that.isLoaded,_that.isPurchasePending,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _StoreState extends StoreState {
  const _StoreState({required this.heartBalance, final  List<ProductDetails> products = const [], this.isLoaded = false, this.isPurchasePending = false, this.error}): _products = products,super._();
  

@override final  HeartBalance heartBalance;
 final  List<ProductDetails> _products;
@override@JsonKey() List<ProductDetails> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override@JsonKey() final  bool isLoaded;
@override@JsonKey() final  bool isPurchasePending;
@override final  HeartBalanceErrorType? error;

/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreStateCopyWith<_StoreState> get copyWith => __$StoreStateCopyWithImpl<_StoreState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreState&&(identical(other.heartBalance, heartBalance) || other.heartBalance == heartBalance)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.isPurchasePending, isPurchasePending) || other.isPurchasePending == isPurchasePending)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,heartBalance,const DeepCollectionEquality().hash(_products),isLoaded,isPurchasePending,error);

@override
String toString() {
  return 'StoreState(heartBalance: $heartBalance, products: $products, isLoaded: $isLoaded, isPurchasePending: $isPurchasePending, error: $error)';
}


}

/// @nodoc
abstract mixin class _$StoreStateCopyWith<$Res> implements $StoreStateCopyWith<$Res> {
  factory _$StoreStateCopyWith(_StoreState value, $Res Function(_StoreState) _then) = __$StoreStateCopyWithImpl;
@override @useResult
$Res call({
 HeartBalance heartBalance, List<ProductDetails> products, bool isLoaded, bool isPurchasePending, HeartBalanceErrorType? error
});


@override $HeartBalanceCopyWith<$Res> get heartBalance;

}
/// @nodoc
class __$StoreStateCopyWithImpl<$Res>
    implements _$StoreStateCopyWith<$Res> {
  __$StoreStateCopyWithImpl(this._self, this._then);

  final _StoreState _self;
  final $Res Function(_StoreState) _then;

/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? heartBalance = null,Object? products = null,Object? isLoaded = null,Object? isPurchasePending = null,Object? error = freezed,}) {
  return _then(_StoreState(
heartBalance: null == heartBalance ? _self.heartBalance : heartBalance // ignore: cast_nullable_to_non_nullable
as HeartBalance,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductDetails>,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,isPurchasePending: null == isPurchasePending ? _self.isPurchasePending : isPurchasePending // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as HeartBalanceErrorType?,
  ));
}

/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeartBalanceCopyWith<$Res> get heartBalance {
  
  return $HeartBalanceCopyWith<$Res>(_self.heartBalance, (value) {
    return _then(_self.copyWith(heartBalance: value));
  });
}
}

// dart format on
