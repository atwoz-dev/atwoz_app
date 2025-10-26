// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_image_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileImageResponse {

 int get status; String get code; String get message; List<ProfileImageData> get data;
/// Create a copy of ProfileImageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileImageResponseCopyWith<ProfileImageResponse> get copyWith => _$ProfileImageResponseCopyWithImpl<ProfileImageResponse>(this as ProfileImageResponse, _$identity);

  /// Serializes this ProfileImageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileImageResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ProfileImageResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ProfileImageResponseCopyWith<$Res>  {
  factory $ProfileImageResponseCopyWith(ProfileImageResponse value, $Res Function(ProfileImageResponse) _then) = _$ProfileImageResponseCopyWithImpl;
@useResult
$Res call({
 int status, String code, String message, List<ProfileImageData> data
});




}
/// @nodoc
class _$ProfileImageResponseCopyWithImpl<$Res>
    implements $ProfileImageResponseCopyWith<$Res> {
  _$ProfileImageResponseCopyWithImpl(this._self, this._then);

  final ProfileImageResponse _self;
  final $Res Function(ProfileImageResponse) _then;

/// Create a copy of ProfileImageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ProfileImageData>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileImageResponse].
extension ProfileImageResponsePatterns on ProfileImageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileImageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileImageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileImageResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProfileImageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileImageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileImageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String code,  String message,  List<ProfileImageData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileImageResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String code,  String message,  List<ProfileImageData> data)  $default,) {final _that = this;
switch (_that) {
case _ProfileImageResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String code,  String message,  List<ProfileImageData> data)?  $default,) {final _that = this;
switch (_that) {
case _ProfileImageResponse() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileImageResponse implements ProfileImageResponse {
  const _ProfileImageResponse({required this.status, required this.code, required this.message, required final  List<ProfileImageData> data}): _data = data;
  factory _ProfileImageResponse.fromJson(Map<String, dynamic> json) => _$ProfileImageResponseFromJson(json);

@override final  int status;
@override final  String code;
@override final  String message;
 final  List<ProfileImageData> _data;
@override List<ProfileImageData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ProfileImageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileImageResponseCopyWith<_ProfileImageResponse> get copyWith => __$ProfileImageResponseCopyWithImpl<_ProfileImageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileImageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileImageResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ProfileImageResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProfileImageResponseCopyWith<$Res> implements $ProfileImageResponseCopyWith<$Res> {
  factory _$ProfileImageResponseCopyWith(_ProfileImageResponse value, $Res Function(_ProfileImageResponse) _then) = __$ProfileImageResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, String code, String message, List<ProfileImageData> data
});




}
/// @nodoc
class __$ProfileImageResponseCopyWithImpl<$Res>
    implements _$ProfileImageResponseCopyWith<$Res> {
  __$ProfileImageResponseCopyWithImpl(this._self, this._then);

  final _ProfileImageResponse _self;
  final $Res Function(_ProfileImageResponse) _then;

/// Create a copy of ProfileImageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_ProfileImageResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProfileImageData>,
  ));
}


}


/// @nodoc
mixin _$ProfileImageData {

 int get id; String get url; bool get isPrimary; int get order;
/// Create a copy of ProfileImageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileImageDataCopyWith<ProfileImageData> get copyWith => _$ProfileImageDataCopyWithImpl<ProfileImageData>(this as ProfileImageData, _$identity);

  /// Serializes this ProfileImageData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileImageData&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,isPrimary,order);

@override
String toString() {
  return 'ProfileImageData(id: $id, url: $url, isPrimary: $isPrimary, order: $order)';
}


}

/// @nodoc
abstract mixin class $ProfileImageDataCopyWith<$Res>  {
  factory $ProfileImageDataCopyWith(ProfileImageData value, $Res Function(ProfileImageData) _then) = _$ProfileImageDataCopyWithImpl;
@useResult
$Res call({
 int id, String url, bool isPrimary, int order
});




}
/// @nodoc
class _$ProfileImageDataCopyWithImpl<$Res>
    implements $ProfileImageDataCopyWith<$Res> {
  _$ProfileImageDataCopyWithImpl(this._self, this._then);

  final ProfileImageData _self;
  final $Res Function(ProfileImageData) _then;

/// Create a copy of ProfileImageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? isPrimary = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileImageData].
extension ProfileImageDataPatterns on ProfileImageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileImageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileImageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileImageData value)  $default,){
final _that = this;
switch (_that) {
case _ProfileImageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileImageData value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileImageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String url,  bool isPrimary,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileImageData() when $default != null:
return $default(_that.id,_that.url,_that.isPrimary,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String url,  bool isPrimary,  int order)  $default,) {final _that = this;
switch (_that) {
case _ProfileImageData():
return $default(_that.id,_that.url,_that.isPrimary,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String url,  bool isPrimary,  int order)?  $default,) {final _that = this;
switch (_that) {
case _ProfileImageData() when $default != null:
return $default(_that.id,_that.url,_that.isPrimary,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileImageData implements ProfileImageData {
  const _ProfileImageData({required this.id, required this.url, required this.isPrimary, required this.order});
  factory _ProfileImageData.fromJson(Map<String, dynamic> json) => _$ProfileImageDataFromJson(json);

@override final  int id;
@override final  String url;
@override final  bool isPrimary;
@override final  int order;

/// Create a copy of ProfileImageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileImageDataCopyWith<_ProfileImageData> get copyWith => __$ProfileImageDataCopyWithImpl<_ProfileImageData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileImageDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileImageData&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,isPrimary,order);

@override
String toString() {
  return 'ProfileImageData(id: $id, url: $url, isPrimary: $isPrimary, order: $order)';
}


}

/// @nodoc
abstract mixin class _$ProfileImageDataCopyWith<$Res> implements $ProfileImageDataCopyWith<$Res> {
  factory _$ProfileImageDataCopyWith(_ProfileImageData value, $Res Function(_ProfileImageData) _then) = __$ProfileImageDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String url, bool isPrimary, int order
});




}
/// @nodoc
class __$ProfileImageDataCopyWithImpl<$Res>
    implements _$ProfileImageDataCopyWith<$Res> {
  __$ProfileImageDataCopyWithImpl(this._self, this._then);

  final _ProfileImageData _self;
  final $Res Function(_ProfileImageData) _then;

/// Create a copy of ProfileImageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? isPrimary = null,Object? order = null,}) {
  return _then(_ProfileImageData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
