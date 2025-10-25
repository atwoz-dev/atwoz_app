// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HeartHistoryItemResponse {

 int get id; DateTime get createdAt; String get content; int get heartAmount;
/// Create a copy of HeartHistoryItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeartHistoryItemResponseCopyWith<HeartHistoryItemResponse> get copyWith => _$HeartHistoryItemResponseCopyWithImpl<HeartHistoryItemResponse>(this as HeartHistoryItemResponse, _$identity);

  /// Serializes this HeartHistoryItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeartHistoryItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.content, content) || other.content == content)&&(identical(other.heartAmount, heartAmount) || other.heartAmount == heartAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,content,heartAmount);

@override
String toString() {
  return 'HeartHistoryItemResponse(id: $id, createdAt: $createdAt, content: $content, heartAmount: $heartAmount)';
}


}

/// @nodoc
abstract mixin class $HeartHistoryItemResponseCopyWith<$Res>  {
  factory $HeartHistoryItemResponseCopyWith(HeartHistoryItemResponse value, $Res Function(HeartHistoryItemResponse) _then) = _$HeartHistoryItemResponseCopyWithImpl;
@useResult
$Res call({
 int id, DateTime createdAt, String content, int heartAmount
});




}
/// @nodoc
class _$HeartHistoryItemResponseCopyWithImpl<$Res>
    implements $HeartHistoryItemResponseCopyWith<$Res> {
  _$HeartHistoryItemResponseCopyWithImpl(this._self, this._then);

  final HeartHistoryItemResponse _self;
  final $Res Function(HeartHistoryItemResponse) _then;

/// Create a copy of HeartHistoryItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? content = null,Object? heartAmount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,heartAmount: null == heartAmount ? _self.heartAmount : heartAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HeartHistoryItemResponse].
extension HeartHistoryItemResponsePatterns on HeartHistoryItemResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeartHistoryItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeartHistoryItemResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeartHistoryItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _HeartHistoryItemResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeartHistoryItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HeartHistoryItemResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime createdAt,  String content,  int heartAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeartHistoryItemResponse() when $default != null:
return $default(_that.id,_that.createdAt,_that.content,_that.heartAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime createdAt,  String content,  int heartAmount)  $default,) {final _that = this;
switch (_that) {
case _HeartHistoryItemResponse():
return $default(_that.id,_that.createdAt,_that.content,_that.heartAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime createdAt,  String content,  int heartAmount)?  $default,) {final _that = this;
switch (_that) {
case _HeartHistoryItemResponse() when $default != null:
return $default(_that.id,_that.createdAt,_that.content,_that.heartAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeartHistoryItemResponse implements HeartHistoryItemResponse {
  const _HeartHistoryItemResponse({required this.id, required this.createdAt, required this.content, required this.heartAmount});
  factory _HeartHistoryItemResponse.fromJson(Map<String, dynamic> json) => _$HeartHistoryItemResponseFromJson(json);

@override final  int id;
@override final  DateTime createdAt;
@override final  String content;
@override final  int heartAmount;

/// Create a copy of HeartHistoryItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeartHistoryItemResponseCopyWith<_HeartHistoryItemResponse> get copyWith => __$HeartHistoryItemResponseCopyWithImpl<_HeartHistoryItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeartHistoryItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeartHistoryItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.content, content) || other.content == content)&&(identical(other.heartAmount, heartAmount) || other.heartAmount == heartAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,content,heartAmount);

@override
String toString() {
  return 'HeartHistoryItemResponse(id: $id, createdAt: $createdAt, content: $content, heartAmount: $heartAmount)';
}


}

/// @nodoc
abstract mixin class _$HeartHistoryItemResponseCopyWith<$Res> implements $HeartHistoryItemResponseCopyWith<$Res> {
  factory _$HeartHistoryItemResponseCopyWith(_HeartHistoryItemResponse value, $Res Function(_HeartHistoryItemResponse) _then) = __$HeartHistoryItemResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime createdAt, String content, int heartAmount
});




}
/// @nodoc
class __$HeartHistoryItemResponseCopyWithImpl<$Res>
    implements _$HeartHistoryItemResponseCopyWith<$Res> {
  __$HeartHistoryItemResponseCopyWithImpl(this._self, this._then);

  final _HeartHistoryItemResponse _self;
  final $Res Function(_HeartHistoryItemResponse) _then;

/// Create a copy of HeartHistoryItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? content = null,Object? heartAmount = null,}) {
  return _then(_HeartHistoryItemResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,heartAmount: null == heartAmount ? _self.heartAmount : heartAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$HeartHistoryResponse {

 List<HeartHistoryItemResponse> get transactions; bool get hasMore;
/// Create a copy of HeartHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeartHistoryResponseCopyWith<HeartHistoryResponse> get copyWith => _$HeartHistoryResponseCopyWithImpl<HeartHistoryResponse>(this as HeartHistoryResponse, _$identity);

  /// Serializes this HeartHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeartHistoryResponse&&const DeepCollectionEquality().equals(other.transactions, transactions)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transactions),hasMore);

@override
String toString() {
  return 'HeartHistoryResponse(transactions: $transactions, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $HeartHistoryResponseCopyWith<$Res>  {
  factory $HeartHistoryResponseCopyWith(HeartHistoryResponse value, $Res Function(HeartHistoryResponse) _then) = _$HeartHistoryResponseCopyWithImpl;
@useResult
$Res call({
 List<HeartHistoryItemResponse> transactions, bool hasMore
});




}
/// @nodoc
class _$HeartHistoryResponseCopyWithImpl<$Res>
    implements $HeartHistoryResponseCopyWith<$Res> {
  _$HeartHistoryResponseCopyWithImpl(this._self, this._then);

  final HeartHistoryResponse _self;
  final $Res Function(HeartHistoryResponse) _then;

/// Create a copy of HeartHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactions = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<HeartHistoryItemResponse>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HeartHistoryResponse].
extension HeartHistoryResponsePatterns on HeartHistoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeartHistoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeartHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeartHistoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _HeartHistoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeartHistoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HeartHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HeartHistoryItemResponse> transactions,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeartHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HeartHistoryItemResponse> transactions,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _HeartHistoryResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HeartHistoryItemResponse> transactions,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _HeartHistoryResponse() when $default != null:
return $default(_that.transactions,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeartHistoryResponse implements HeartHistoryResponse {
  const _HeartHistoryResponse({required final  List<HeartHistoryItemResponse> transactions, required this.hasMore}): _transactions = transactions;
  factory _HeartHistoryResponse.fromJson(Map<String, dynamic> json) => _$HeartHistoryResponseFromJson(json);

 final  List<HeartHistoryItemResponse> _transactions;
@override List<HeartHistoryItemResponse> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}

@override final  bool hasMore;

/// Create a copy of HeartHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeartHistoryResponseCopyWith<_HeartHistoryResponse> get copyWith => __$HeartHistoryResponseCopyWithImpl<_HeartHistoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeartHistoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeartHistoryResponse&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions),hasMore);

@override
String toString() {
  return 'HeartHistoryResponse(transactions: $transactions, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$HeartHistoryResponseCopyWith<$Res> implements $HeartHistoryResponseCopyWith<$Res> {
  factory _$HeartHistoryResponseCopyWith(_HeartHistoryResponse value, $Res Function(_HeartHistoryResponse) _then) = __$HeartHistoryResponseCopyWithImpl;
@override @useResult
$Res call({
 List<HeartHistoryItemResponse> transactions, bool hasMore
});




}
/// @nodoc
class __$HeartHistoryResponseCopyWithImpl<$Res>
    implements _$HeartHistoryResponseCopyWith<$Res> {
  __$HeartHistoryResponseCopyWithImpl(this._self, this._then);

  final _HeartHistoryResponse _self;
  final $Res Function(_HeartHistoryResponse) _then;

/// Create a copy of HeartHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactions = null,Object? hasMore = null,}) {
  return _then(_HeartHistoryResponse(
transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<HeartHistoryItemResponse>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
