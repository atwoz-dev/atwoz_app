// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduce_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IntroduceListResponse {

 int get status; String get code; String get message; List<IntroduceItem> get data;
/// Create a copy of IntroduceListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceListResponseCopyWith<IntroduceListResponse> get copyWith => _$IntroduceListResponseCopyWithImpl<IntroduceListResponse>(this as IntroduceListResponse, _$identity);

  /// Serializes this IntroduceListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceListResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'IntroduceListResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $IntroduceListResponseCopyWith<$Res>  {
  factory $IntroduceListResponseCopyWith(IntroduceListResponse value, $Res Function(IntroduceListResponse) _then) = _$IntroduceListResponseCopyWithImpl;
@useResult
$Res call({
 int status, String code, String message, List<IntroduceItem> data
});




}
/// @nodoc
class _$IntroduceListResponseCopyWithImpl<$Res>
    implements $IntroduceListResponseCopyWith<$Res> {
  _$IntroduceListResponseCopyWithImpl(this._self, this._then);

  final IntroduceListResponse _self;
  final $Res Function(IntroduceListResponse) _then;

/// Create a copy of IntroduceListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<IntroduceItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroduceListResponse].
extension IntroduceListResponsePatterns on IntroduceListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceListResponse value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String code,  String message,  List<IntroduceItem> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String code,  String message,  List<IntroduceItem> data)  $default,) {final _that = this;
switch (_that) {
case _IntroduceListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String code,  String message,  List<IntroduceItem> data)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceListResponse() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IntroduceListResponse implements IntroduceListResponse {
  const _IntroduceListResponse({required this.status, required this.code, required this.message, required final  List<IntroduceItem> data}): _data = data;
  factory _IntroduceListResponse.fromJson(Map<String, dynamic> json) => _$IntroduceListResponseFromJson(json);

@override final  int status;
@override final  String code;
@override final  String message;
 final  List<IntroduceItem> _data;
@override List<IntroduceItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of IntroduceListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceListResponseCopyWith<_IntroduceListResponse> get copyWith => __$IntroduceListResponseCopyWithImpl<_IntroduceListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IntroduceListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceListResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'IntroduceListResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$IntroduceListResponseCopyWith<$Res> implements $IntroduceListResponseCopyWith<$Res> {
  factory _$IntroduceListResponseCopyWith(_IntroduceListResponse value, $Res Function(_IntroduceListResponse) _then) = __$IntroduceListResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, String code, String message, List<IntroduceItem> data
});




}
/// @nodoc
class __$IntroduceListResponseCopyWithImpl<$Res>
    implements _$IntroduceListResponseCopyWith<$Res> {
  __$IntroduceListResponseCopyWithImpl(this._self, this._then);

  final _IntroduceListResponse _self;
  final $Res Function(_IntroduceListResponse) _then;

/// Create a copy of IntroduceListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_IntroduceListResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<IntroduceItem>,
  ));
}


}


/// @nodoc
mixin _$IntroduceItem {

 List<String> get preferredCities; int get fromAge; int get toAge; String get gender; int get lastId;
/// Create a copy of IntroduceItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceItemCopyWith<IntroduceItem> get copyWith => _$IntroduceItemCopyWithImpl<IntroduceItem>(this as IntroduceItem, _$identity);

  /// Serializes this IntroduceItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceItem&&const DeepCollectionEquality().equals(other.preferredCities, preferredCities)&&(identical(other.fromAge, fromAge) || other.fromAge == fromAge)&&(identical(other.toAge, toAge) || other.toAge == toAge)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.lastId, lastId) || other.lastId == lastId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(preferredCities),fromAge,toAge,gender,lastId);

@override
String toString() {
  return 'IntroduceItem(preferredCities: $preferredCities, fromAge: $fromAge, toAge: $toAge, gender: $gender, lastId: $lastId)';
}


}

/// @nodoc
abstract mixin class $IntroduceItemCopyWith<$Res>  {
  factory $IntroduceItemCopyWith(IntroduceItem value, $Res Function(IntroduceItem) _then) = _$IntroduceItemCopyWithImpl;
@useResult
$Res call({
 List<String> preferredCities, int fromAge, int toAge, String gender, int lastId
});




}
/// @nodoc
class _$IntroduceItemCopyWithImpl<$Res>
    implements $IntroduceItemCopyWith<$Res> {
  _$IntroduceItemCopyWithImpl(this._self, this._then);

  final IntroduceItem _self;
  final $Res Function(IntroduceItem) _then;

/// Create a copy of IntroduceItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? preferredCities = null,Object? fromAge = null,Object? toAge = null,Object? gender = null,Object? lastId = null,}) {
  return _then(_self.copyWith(
preferredCities: null == preferredCities ? _self.preferredCities : preferredCities // ignore: cast_nullable_to_non_nullable
as List<String>,fromAge: null == fromAge ? _self.fromAge : fromAge // ignore: cast_nullable_to_non_nullable
as int,toAge: null == toAge ? _self.toAge : toAge // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,lastId: null == lastId ? _self.lastId : lastId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroduceItem].
extension IntroduceItemPatterns on IntroduceItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceItem value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceItem value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> preferredCities,  int fromAge,  int toAge,  String gender,  int lastId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceItem() when $default != null:
return $default(_that.preferredCities,_that.fromAge,_that.toAge,_that.gender,_that.lastId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> preferredCities,  int fromAge,  int toAge,  String gender,  int lastId)  $default,) {final _that = this;
switch (_that) {
case _IntroduceItem():
return $default(_that.preferredCities,_that.fromAge,_that.toAge,_that.gender,_that.lastId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> preferredCities,  int fromAge,  int toAge,  String gender,  int lastId)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceItem() when $default != null:
return $default(_that.preferredCities,_that.fromAge,_that.toAge,_that.gender,_that.lastId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IntroduceItem implements IntroduceItem {
  const _IntroduceItem({required final  List<String> preferredCities, required this.fromAge, required this.toAge, required this.gender, required this.lastId}): _preferredCities = preferredCities;
  factory _IntroduceItem.fromJson(Map<String, dynamic> json) => _$IntroduceItemFromJson(json);

 final  List<String> _preferredCities;
@override List<String> get preferredCities {
  if (_preferredCities is EqualUnmodifiableListView) return _preferredCities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_preferredCities);
}

@override final  int fromAge;
@override final  int toAge;
@override final  String gender;
@override final  int lastId;

/// Create a copy of IntroduceItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceItemCopyWith<_IntroduceItem> get copyWith => __$IntroduceItemCopyWithImpl<_IntroduceItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IntroduceItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceItem&&const DeepCollectionEquality().equals(other._preferredCities, _preferredCities)&&(identical(other.fromAge, fromAge) || other.fromAge == fromAge)&&(identical(other.toAge, toAge) || other.toAge == toAge)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.lastId, lastId) || other.lastId == lastId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_preferredCities),fromAge,toAge,gender,lastId);

@override
String toString() {
  return 'IntroduceItem(preferredCities: $preferredCities, fromAge: $fromAge, toAge: $toAge, gender: $gender, lastId: $lastId)';
}


}

/// @nodoc
abstract mixin class _$IntroduceItemCopyWith<$Res> implements $IntroduceItemCopyWith<$Res> {
  factory _$IntroduceItemCopyWith(_IntroduceItem value, $Res Function(_IntroduceItem) _then) = __$IntroduceItemCopyWithImpl;
@override @useResult
$Res call({
 List<String> preferredCities, int fromAge, int toAge, String gender, int lastId
});




}
/// @nodoc
class __$IntroduceItemCopyWithImpl<$Res>
    implements _$IntroduceItemCopyWith<$Res> {
  __$IntroduceItemCopyWithImpl(this._self, this._then);

  final _IntroduceItem _self;
  final $Res Function(_IntroduceItem) _then;

/// Create a copy of IntroduceItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? preferredCities = null,Object? fromAge = null,Object? toAge = null,Object? gender = null,Object? lastId = null,}) {
  return _then(_IntroduceItem(
preferredCities: null == preferredCities ? _self._preferredCities : preferredCities // ignore: cast_nullable_to_non_nullable
as List<String>,fromAge: null == fromAge ? _self.fromAge : fromAge // ignore: cast_nullable_to_non_nullable
as int,toAge: null == toAge ? _self.toAge : toAge // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,lastId: null == lastId ? _self.lastId : lastId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
