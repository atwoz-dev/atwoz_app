// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_balance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HeartBalanceResponse {

 int get status; String get code; String get message; HeartBalanceItem get data;
/// Create a copy of HeartBalanceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeartBalanceResponseCopyWith<HeartBalanceResponse> get copyWith => _$HeartBalanceResponseCopyWithImpl<HeartBalanceResponse>(this as HeartBalanceResponse, _$identity);

  /// Serializes this HeartBalanceResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeartBalanceResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,data);

@override
String toString() {
  return 'HeartBalanceResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $HeartBalanceResponseCopyWith<$Res>  {
  factory $HeartBalanceResponseCopyWith(HeartBalanceResponse value, $Res Function(HeartBalanceResponse) _then) = _$HeartBalanceResponseCopyWithImpl;
@useResult
$Res call({
 int status, String code, String message, HeartBalanceItem data
});


$HeartBalanceItemCopyWith<$Res> get data;

}
/// @nodoc
class _$HeartBalanceResponseCopyWithImpl<$Res>
    implements $HeartBalanceResponseCopyWith<$Res> {
  _$HeartBalanceResponseCopyWithImpl(this._self, this._then);

  final HeartBalanceResponse _self;
  final $Res Function(HeartBalanceResponse) _then;

/// Create a copy of HeartBalanceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HeartBalanceItem,
  ));
}
/// Create a copy of HeartBalanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeartBalanceItemCopyWith<$Res> get data {
  
  return $HeartBalanceItemCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [HeartBalanceResponse].
extension HeartBalanceResponsePatterns on HeartBalanceResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeartBalanceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeartBalanceResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeartBalanceResponse value)  $default,){
final _that = this;
switch (_that) {
case _HeartBalanceResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeartBalanceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HeartBalanceResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String code,  String message,  HeartBalanceItem data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeartBalanceResponse() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String code,  String message,  HeartBalanceItem data)  $default,) {final _that = this;
switch (_that) {
case _HeartBalanceResponse():
return $default(_that.status,_that.code,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String code,  String message,  HeartBalanceItem data)?  $default,) {final _that = this;
switch (_that) {
case _HeartBalanceResponse() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeartBalanceResponse implements HeartBalanceResponse {
  const _HeartBalanceResponse({required this.status, required this.code, required this.message, required this.data});
  factory _HeartBalanceResponse.fromJson(Map<String, dynamic> json) => _$HeartBalanceResponseFromJson(json);

@override final  int status;
@override final  String code;
@override final  String message;
@override final  HeartBalanceItem data;

/// Create a copy of HeartBalanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeartBalanceResponseCopyWith<_HeartBalanceResponse> get copyWith => __$HeartBalanceResponseCopyWithImpl<_HeartBalanceResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeartBalanceResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeartBalanceResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,data);

@override
String toString() {
  return 'HeartBalanceResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$HeartBalanceResponseCopyWith<$Res> implements $HeartBalanceResponseCopyWith<$Res> {
  factory _$HeartBalanceResponseCopyWith(_HeartBalanceResponse value, $Res Function(_HeartBalanceResponse) _then) = __$HeartBalanceResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, String code, String message, HeartBalanceItem data
});


@override $HeartBalanceItemCopyWith<$Res> get data;

}
/// @nodoc
class __$HeartBalanceResponseCopyWithImpl<$Res>
    implements _$HeartBalanceResponseCopyWith<$Res> {
  __$HeartBalanceResponseCopyWithImpl(this._self, this._then);

  final _HeartBalanceResponse _self;
  final $Res Function(_HeartBalanceResponse) _then;

/// Create a copy of HeartBalanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_HeartBalanceResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HeartBalanceItem,
  ));
}

/// Create a copy of HeartBalanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeartBalanceItemCopyWith<$Res> get data {
  
  return $HeartBalanceItemCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$HeartBalanceItem {

 int get purchaseHeartBalance; int get missionHeartBalance; int get totalHeartBalance;
/// Create a copy of HeartBalanceItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeartBalanceItemCopyWith<HeartBalanceItem> get copyWith => _$HeartBalanceItemCopyWithImpl<HeartBalanceItem>(this as HeartBalanceItem, _$identity);

  /// Serializes this HeartBalanceItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeartBalanceItem&&(identical(other.purchaseHeartBalance, purchaseHeartBalance) || other.purchaseHeartBalance == purchaseHeartBalance)&&(identical(other.missionHeartBalance, missionHeartBalance) || other.missionHeartBalance == missionHeartBalance)&&(identical(other.totalHeartBalance, totalHeartBalance) || other.totalHeartBalance == totalHeartBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purchaseHeartBalance,missionHeartBalance,totalHeartBalance);

@override
String toString() {
  return 'HeartBalanceItem(purchaseHeartBalance: $purchaseHeartBalance, missionHeartBalance: $missionHeartBalance, totalHeartBalance: $totalHeartBalance)';
}


}

/// @nodoc
abstract mixin class $HeartBalanceItemCopyWith<$Res>  {
  factory $HeartBalanceItemCopyWith(HeartBalanceItem value, $Res Function(HeartBalanceItem) _then) = _$HeartBalanceItemCopyWithImpl;
@useResult
$Res call({
 int purchaseHeartBalance, int missionHeartBalance, int totalHeartBalance
});




}
/// @nodoc
class _$HeartBalanceItemCopyWithImpl<$Res>
    implements $HeartBalanceItemCopyWith<$Res> {
  _$HeartBalanceItemCopyWithImpl(this._self, this._then);

  final HeartBalanceItem _self;
  final $Res Function(HeartBalanceItem) _then;

/// Create a copy of HeartBalanceItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? purchaseHeartBalance = null,Object? missionHeartBalance = null,Object? totalHeartBalance = null,}) {
  return _then(_self.copyWith(
purchaseHeartBalance: null == purchaseHeartBalance ? _self.purchaseHeartBalance : purchaseHeartBalance // ignore: cast_nullable_to_non_nullable
as int,missionHeartBalance: null == missionHeartBalance ? _self.missionHeartBalance : missionHeartBalance // ignore: cast_nullable_to_non_nullable
as int,totalHeartBalance: null == totalHeartBalance ? _self.totalHeartBalance : totalHeartBalance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HeartBalanceItem].
extension HeartBalanceItemPatterns on HeartBalanceItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeartBalanceItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeartBalanceItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeartBalanceItem value)  $default,){
final _that = this;
switch (_that) {
case _HeartBalanceItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeartBalanceItem value)?  $default,){
final _that = this;
switch (_that) {
case _HeartBalanceItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int purchaseHeartBalance,  int missionHeartBalance,  int totalHeartBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeartBalanceItem() when $default != null:
return $default(_that.purchaseHeartBalance,_that.missionHeartBalance,_that.totalHeartBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int purchaseHeartBalance,  int missionHeartBalance,  int totalHeartBalance)  $default,) {final _that = this;
switch (_that) {
case _HeartBalanceItem():
return $default(_that.purchaseHeartBalance,_that.missionHeartBalance,_that.totalHeartBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int purchaseHeartBalance,  int missionHeartBalance,  int totalHeartBalance)?  $default,) {final _that = this;
switch (_that) {
case _HeartBalanceItem() when $default != null:
return $default(_that.purchaseHeartBalance,_that.missionHeartBalance,_that.totalHeartBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeartBalanceItem implements HeartBalanceItem {
  const _HeartBalanceItem({required this.purchaseHeartBalance, required this.missionHeartBalance, required this.totalHeartBalance});
  factory _HeartBalanceItem.fromJson(Map<String, dynamic> json) => _$HeartBalanceItemFromJson(json);

@override final  int purchaseHeartBalance;
@override final  int missionHeartBalance;
@override final  int totalHeartBalance;

/// Create a copy of HeartBalanceItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeartBalanceItemCopyWith<_HeartBalanceItem> get copyWith => __$HeartBalanceItemCopyWithImpl<_HeartBalanceItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeartBalanceItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeartBalanceItem&&(identical(other.purchaseHeartBalance, purchaseHeartBalance) || other.purchaseHeartBalance == purchaseHeartBalance)&&(identical(other.missionHeartBalance, missionHeartBalance) || other.missionHeartBalance == missionHeartBalance)&&(identical(other.totalHeartBalance, totalHeartBalance) || other.totalHeartBalance == totalHeartBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purchaseHeartBalance,missionHeartBalance,totalHeartBalance);

@override
String toString() {
  return 'HeartBalanceItem(purchaseHeartBalance: $purchaseHeartBalance, missionHeartBalance: $missionHeartBalance, totalHeartBalance: $totalHeartBalance)';
}


}

/// @nodoc
abstract mixin class _$HeartBalanceItemCopyWith<$Res> implements $HeartBalanceItemCopyWith<$Res> {
  factory _$HeartBalanceItemCopyWith(_HeartBalanceItem value, $Res Function(_HeartBalanceItem) _then) = __$HeartBalanceItemCopyWithImpl;
@override @useResult
$Res call({
 int purchaseHeartBalance, int missionHeartBalance, int totalHeartBalance
});




}
/// @nodoc
class __$HeartBalanceItemCopyWithImpl<$Res>
    implements _$HeartBalanceItemCopyWith<$Res> {
  __$HeartBalanceItemCopyWithImpl(this._self, this._then);

  final _HeartBalanceItem _self;
  final $Res Function(_HeartBalanceItem) _then;

/// Create a copy of HeartBalanceItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? purchaseHeartBalance = null,Object? missionHeartBalance = null,Object? totalHeartBalance = null,}) {
  return _then(_HeartBalanceItem(
purchaseHeartBalance: null == purchaseHeartBalance ? _self.purchaseHeartBalance : purchaseHeartBalance // ignore: cast_nullable_to_non_nullable
as int,missionHeartBalance: null == missionHeartBalance ? _self.missionHeartBalance : missionHeartBalance // ignore: cast_nullable_to_non_nullable
as int,totalHeartBalance: null == totalHeartBalance ? _self.totalHeartBalance : totalHeartBalance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
