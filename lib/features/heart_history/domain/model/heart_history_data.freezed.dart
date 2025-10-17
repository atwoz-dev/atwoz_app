// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_history_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HeartHistoryData {

 List<HeartTransactionSummary> get transactions; bool get hasMore;
/// Create a copy of HeartHistoryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeartHistoryDataCopyWith<HeartHistoryData> get copyWith => _$HeartHistoryDataCopyWithImpl<HeartHistoryData>(this as HeartHistoryData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeartHistoryData&&const DeepCollectionEquality().equals(other.transactions, transactions)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transactions),hasMore);

@override
String toString() {
  return 'HeartHistoryData(transactions: $transactions, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $HeartHistoryDataCopyWith<$Res>  {
  factory $HeartHistoryDataCopyWith(HeartHistoryData value, $Res Function(HeartHistoryData) _then) = _$HeartHistoryDataCopyWithImpl;
@useResult
$Res call({
 List<HeartTransactionSummary> transactions, bool hasMore
});




}
/// @nodoc
class _$HeartHistoryDataCopyWithImpl<$Res>
    implements $HeartHistoryDataCopyWith<$Res> {
  _$HeartHistoryDataCopyWithImpl(this._self, this._then);

  final HeartHistoryData _self;
  final $Res Function(HeartHistoryData) _then;

/// Create a copy of HeartHistoryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactions = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<HeartTransactionSummary>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HeartHistoryData].
extension HeartHistoryDataPatterns on HeartHistoryData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeartHistoryData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeartHistoryData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeartHistoryData value)  $default,){
final _that = this;
switch (_that) {
case _HeartHistoryData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeartHistoryData value)?  $default,){
final _that = this;
switch (_that) {
case _HeartHistoryData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HeartTransactionSummary> transactions,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeartHistoryData() when $default != null:
return $default(_that.transactions,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HeartTransactionSummary> transactions,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _HeartHistoryData():
return $default(_that.transactions,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HeartTransactionSummary> transactions,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _HeartHistoryData() when $default != null:
return $default(_that.transactions,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _HeartHistoryData implements HeartHistoryData {
  const _HeartHistoryData({final  List<HeartTransactionSummary> transactions = const <HeartTransactionSummary>[], this.hasMore = false}): _transactions = transactions;
  

 final  List<HeartTransactionSummary> _transactions;
@override@JsonKey() List<HeartTransactionSummary> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}

@override@JsonKey() final  bool hasMore;

/// Create a copy of HeartHistoryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeartHistoryDataCopyWith<_HeartHistoryData> get copyWith => __$HeartHistoryDataCopyWithImpl<_HeartHistoryData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeartHistoryData&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions),hasMore);

@override
String toString() {
  return 'HeartHistoryData(transactions: $transactions, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$HeartHistoryDataCopyWith<$Res> implements $HeartHistoryDataCopyWith<$Res> {
  factory _$HeartHistoryDataCopyWith(_HeartHistoryData value, $Res Function(_HeartHistoryData) _then) = __$HeartHistoryDataCopyWithImpl;
@override @useResult
$Res call({
 List<HeartTransactionSummary> transactions, bool hasMore
});




}
/// @nodoc
class __$HeartHistoryDataCopyWithImpl<$Res>
    implements _$HeartHistoryDataCopyWith<$Res> {
  __$HeartHistoryDataCopyWithImpl(this._self, this._then);

  final _HeartHistoryData _self;
  final $Res Function(_HeartHistoryData) _then;

/// Create a copy of HeartHistoryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactions = null,Object? hasMore = null,}) {
  return _then(_HeartHistoryData(
transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<HeartTransactionSummary>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
