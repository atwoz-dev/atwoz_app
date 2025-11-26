// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_answer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InterviewAnswerResponse {

 int get status; String get code; String get message; InterviewAnswerResponseData get data;
/// Create a copy of InterviewAnswerResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewAnswerResponseCopyWith<InterviewAnswerResponse> get copyWith => _$InterviewAnswerResponseCopyWithImpl<InterviewAnswerResponse>(this as InterviewAnswerResponse, _$identity);

  /// Serializes this InterviewAnswerResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewAnswerResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,data);

@override
String toString() {
  return 'InterviewAnswerResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $InterviewAnswerResponseCopyWith<$Res>  {
  factory $InterviewAnswerResponseCopyWith(InterviewAnswerResponse value, $Res Function(InterviewAnswerResponse) _then) = _$InterviewAnswerResponseCopyWithImpl;
@useResult
$Res call({
 int status, String code, String message, InterviewAnswerResponseData data
});


$InterviewAnswerResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class _$InterviewAnswerResponseCopyWithImpl<$Res>
    implements $InterviewAnswerResponseCopyWith<$Res> {
  _$InterviewAnswerResponseCopyWithImpl(this._self, this._then);

  final InterviewAnswerResponse _self;
  final $Res Function(InterviewAnswerResponse) _then;

/// Create a copy of InterviewAnswerResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as InterviewAnswerResponseData,
  ));
}
/// Create a copy of InterviewAnswerResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InterviewAnswerResponseDataCopyWith<$Res> get data {
  
  return $InterviewAnswerResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [InterviewAnswerResponse].
extension InterviewAnswerResponsePatterns on InterviewAnswerResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterviewAnswerResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterviewAnswerResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterviewAnswerResponse value)  $default,){
final _that = this;
switch (_that) {
case _InterviewAnswerResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterviewAnswerResponse value)?  $default,){
final _that = this;
switch (_that) {
case _InterviewAnswerResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String code,  String message,  InterviewAnswerResponseData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterviewAnswerResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String code,  String message,  InterviewAnswerResponseData data)  $default,) {final _that = this;
switch (_that) {
case _InterviewAnswerResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String code,  String message,  InterviewAnswerResponseData data)?  $default,) {final _that = this;
switch (_that) {
case _InterviewAnswerResponse() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InterviewAnswerResponse implements InterviewAnswerResponse {
  const _InterviewAnswerResponse({required this.status, required this.code, required this.message, required this.data});
  factory _InterviewAnswerResponse.fromJson(Map<String, dynamic> json) => _$InterviewAnswerResponseFromJson(json);

@override final  int status;
@override final  String code;
@override final  String message;
@override final  InterviewAnswerResponseData data;

/// Create a copy of InterviewAnswerResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewAnswerResponseCopyWith<_InterviewAnswerResponse> get copyWith => __$InterviewAnswerResponseCopyWithImpl<_InterviewAnswerResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InterviewAnswerResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewAnswerResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,data);

@override
String toString() {
  return 'InterviewAnswerResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$InterviewAnswerResponseCopyWith<$Res> implements $InterviewAnswerResponseCopyWith<$Res> {
  factory _$InterviewAnswerResponseCopyWith(_InterviewAnswerResponse value, $Res Function(_InterviewAnswerResponse) _then) = __$InterviewAnswerResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, String code, String message, InterviewAnswerResponseData data
});


@override $InterviewAnswerResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class __$InterviewAnswerResponseCopyWithImpl<$Res>
    implements _$InterviewAnswerResponseCopyWith<$Res> {
  __$InterviewAnswerResponseCopyWithImpl(this._self, this._then);

  final _InterviewAnswerResponse _self;
  final $Res Function(_InterviewAnswerResponse) _then;

/// Create a copy of InterviewAnswerResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_InterviewAnswerResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as InterviewAnswerResponseData,
  ));
}

/// Create a copy of InterviewAnswerResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InterviewAnswerResponseDataCopyWith<$Res> get data {
  
  return $InterviewAnswerResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$InterviewAnswerResponseData {

 bool get hasProcessedMission;
/// Create a copy of InterviewAnswerResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewAnswerResponseDataCopyWith<InterviewAnswerResponseData> get copyWith => _$InterviewAnswerResponseDataCopyWithImpl<InterviewAnswerResponseData>(this as InterviewAnswerResponseData, _$identity);

  /// Serializes this InterviewAnswerResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewAnswerResponseData&&(identical(other.hasProcessedMission, hasProcessedMission) || other.hasProcessedMission == hasProcessedMission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasProcessedMission);

@override
String toString() {
  return 'InterviewAnswerResponseData(hasProcessedMission: $hasProcessedMission)';
}


}

/// @nodoc
abstract mixin class $InterviewAnswerResponseDataCopyWith<$Res>  {
  factory $InterviewAnswerResponseDataCopyWith(InterviewAnswerResponseData value, $Res Function(InterviewAnswerResponseData) _then) = _$InterviewAnswerResponseDataCopyWithImpl;
@useResult
$Res call({
 bool hasProcessedMission
});




}
/// @nodoc
class _$InterviewAnswerResponseDataCopyWithImpl<$Res>
    implements $InterviewAnswerResponseDataCopyWith<$Res> {
  _$InterviewAnswerResponseDataCopyWithImpl(this._self, this._then);

  final InterviewAnswerResponseData _self;
  final $Res Function(InterviewAnswerResponseData) _then;

/// Create a copy of InterviewAnswerResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasProcessedMission = null,}) {
  return _then(_self.copyWith(
hasProcessedMission: null == hasProcessedMission ? _self.hasProcessedMission : hasProcessedMission // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InterviewAnswerResponseData].
extension InterviewAnswerResponseDataPatterns on InterviewAnswerResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterviewAnswerResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterviewAnswerResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterviewAnswerResponseData value)  $default,){
final _that = this;
switch (_that) {
case _InterviewAnswerResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterviewAnswerResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _InterviewAnswerResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasProcessedMission)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterviewAnswerResponseData() when $default != null:
return $default(_that.hasProcessedMission);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasProcessedMission)  $default,) {final _that = this;
switch (_that) {
case _InterviewAnswerResponseData():
return $default(_that.hasProcessedMission);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasProcessedMission)?  $default,) {final _that = this;
switch (_that) {
case _InterviewAnswerResponseData() when $default != null:
return $default(_that.hasProcessedMission);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InterviewAnswerResponseData implements InterviewAnswerResponseData {
  const _InterviewAnswerResponseData({required this.hasProcessedMission});
  factory _InterviewAnswerResponseData.fromJson(Map<String, dynamic> json) => _$InterviewAnswerResponseDataFromJson(json);

@override final  bool hasProcessedMission;

/// Create a copy of InterviewAnswerResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewAnswerResponseDataCopyWith<_InterviewAnswerResponseData> get copyWith => __$InterviewAnswerResponseDataCopyWithImpl<_InterviewAnswerResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InterviewAnswerResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewAnswerResponseData&&(identical(other.hasProcessedMission, hasProcessedMission) || other.hasProcessedMission == hasProcessedMission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasProcessedMission);

@override
String toString() {
  return 'InterviewAnswerResponseData(hasProcessedMission: $hasProcessedMission)';
}


}

/// @nodoc
abstract mixin class _$InterviewAnswerResponseDataCopyWith<$Res> implements $InterviewAnswerResponseDataCopyWith<$Res> {
  factory _$InterviewAnswerResponseDataCopyWith(_InterviewAnswerResponseData value, $Res Function(_InterviewAnswerResponseData) _then) = __$InterviewAnswerResponseDataCopyWithImpl;
@override @useResult
$Res call({
 bool hasProcessedMission
});




}
/// @nodoc
class __$InterviewAnswerResponseDataCopyWithImpl<$Res>
    implements _$InterviewAnswerResponseDataCopyWith<$Res> {
  __$InterviewAnswerResponseDataCopyWithImpl(this._self, this._then);

  final _InterviewAnswerResponseData _self;
  final $Res Function(_InterviewAnswerResponseData) _then;

/// Create a copy of InterviewAnswerResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasProcessedMission = null,}) {
  return _then(_InterviewAnswerResponseData(
hasProcessedMission: null == hasProcessedMission ? _self.hasProcessedMission : hasProcessedMission // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
