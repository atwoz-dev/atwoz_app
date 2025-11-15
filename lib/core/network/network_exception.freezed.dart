// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkException {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkException()';
}


}

/// @nodoc
class $NetworkExceptionCopyWith<$Res>  {
$NetworkExceptionCopyWith(NetworkException _, $Res Function(NetworkException) __);
}


/// Adds pattern-matching-related methods to [NetworkException].
extension NetworkExceptionPatterns on NetworkException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UnauthorizedException value)?  unauthorizedException,TResult Function( _OtherException value)?  otherException,TResult Function( _FormatException value)?  formatException,TResult Function( _ConnectionException value)?  connectionException,TResult Function( _MaintenanceException value)?  maintenanceException,TResult Function( _ApiException value)?  apiException,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnauthorizedException() when unauthorizedException != null:
return unauthorizedException(_that);case _OtherException() when otherException != null:
return otherException(_that);case _FormatException() when formatException != null:
return formatException(_that);case _ConnectionException() when connectionException != null:
return connectionException(_that);case _MaintenanceException() when maintenanceException != null:
return maintenanceException(_that);case _ApiException() when apiException != null:
return apiException(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UnauthorizedException value)  unauthorizedException,required TResult Function( _OtherException value)  otherException,required TResult Function( _FormatException value)  formatException,required TResult Function( _ConnectionException value)  connectionException,required TResult Function( _MaintenanceException value)  maintenanceException,required TResult Function( _ApiException value)  apiException,}){
final _that = this;
switch (_that) {
case _UnauthorizedException():
return unauthorizedException(_that);case _OtherException():
return otherException(_that);case _FormatException():
return formatException(_that);case _ConnectionException():
return connectionException(_that);case _MaintenanceException():
return maintenanceException(_that);case _ApiException():
return apiException(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UnauthorizedException value)?  unauthorizedException,TResult? Function( _OtherException value)?  otherException,TResult? Function( _FormatException value)?  formatException,TResult? Function( _ConnectionException value)?  connectionException,TResult? Function( _MaintenanceException value)?  maintenanceException,TResult? Function( _ApiException value)?  apiException,}){
final _that = this;
switch (_that) {
case _UnauthorizedException() when unauthorizedException != null:
return unauthorizedException(_that);case _OtherException() when otherException != null:
return otherException(_that);case _FormatException() when formatException != null:
return formatException(_that);case _ConnectionException() when connectionException != null:
return connectionException(_that);case _MaintenanceException() when maintenanceException != null:
return maintenanceException(_that);case _ApiException() when apiException != null:
return apiException(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  unauthorizedException,TResult Function( Type type)?  otherException,TResult Function()?  formatException,TResult Function()?  connectionException,TResult Function()?  maintenanceException,TResult Function( int? status,  String? code,  String? message)?  apiException,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnauthorizedException() when unauthorizedException != null:
return unauthorizedException();case _OtherException() when otherException != null:
return otherException(_that.type);case _FormatException() when formatException != null:
return formatException();case _ConnectionException() when connectionException != null:
return connectionException();case _MaintenanceException() when maintenanceException != null:
return maintenanceException();case _ApiException() when apiException != null:
return apiException(_that.status,_that.code,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  unauthorizedException,required TResult Function( Type type)  otherException,required TResult Function()  formatException,required TResult Function()  connectionException,required TResult Function()  maintenanceException,required TResult Function( int? status,  String? code,  String? message)  apiException,}) {final _that = this;
switch (_that) {
case _UnauthorizedException():
return unauthorizedException();case _OtherException():
return otherException(_that.type);case _FormatException():
return formatException();case _ConnectionException():
return connectionException();case _MaintenanceException():
return maintenanceException();case _ApiException():
return apiException(_that.status,_that.code,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  unauthorizedException,TResult? Function( Type type)?  otherException,TResult? Function()?  formatException,TResult? Function()?  connectionException,TResult? Function()?  maintenanceException,TResult? Function( int? status,  String? code,  String? message)?  apiException,}) {final _that = this;
switch (_that) {
case _UnauthorizedException() when unauthorizedException != null:
return unauthorizedException();case _OtherException() when otherException != null:
return otherException(_that.type);case _FormatException() when formatException != null:
return formatException();case _ConnectionException() when connectionException != null:
return connectionException();case _MaintenanceException() when maintenanceException != null:
return maintenanceException();case _ApiException() when apiException != null:
return apiException(_that.status,_that.code,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _UnauthorizedException extends NetworkException {
  const _UnauthorizedException(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnauthorizedException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkException.unauthorizedException()';
}


}




/// @nodoc


class _OtherException extends NetworkException {
  const _OtherException(this.type): super._();
  

 final  Type type;

/// Create a copy of NetworkException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherExceptionCopyWith<_OtherException> get copyWith => __$OtherExceptionCopyWithImpl<_OtherException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtherException&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'NetworkException.otherException(type: $type)';
}


}

/// @nodoc
abstract mixin class _$OtherExceptionCopyWith<$Res> implements $NetworkExceptionCopyWith<$Res> {
  factory _$OtherExceptionCopyWith(_OtherException value, $Res Function(_OtherException) _then) = __$OtherExceptionCopyWithImpl;
@useResult
$Res call({
 Type type
});




}
/// @nodoc
class __$OtherExceptionCopyWithImpl<$Res>
    implements _$OtherExceptionCopyWith<$Res> {
  __$OtherExceptionCopyWithImpl(this._self, this._then);

  final _OtherException _self;
  final $Res Function(_OtherException) _then;

/// Create a copy of NetworkException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_OtherException(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type,
  ));
}


}

/// @nodoc


class _FormatException extends NetworkException {
  const _FormatException(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormatException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkException.formatException()';
}


}




/// @nodoc


class _ConnectionException extends NetworkException {
  const _ConnectionException(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkException.connectionException()';
}


}




/// @nodoc


class _MaintenanceException extends NetworkException {
  const _MaintenanceException(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaintenanceException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkException.maintenanceException()';
}


}




/// @nodoc


class _ApiException extends NetworkException {
  const _ApiException({this.status, this.code, this.message}): super._();
  

 final  int? status;
 final  String? code;
 final  String? message;

/// Create a copy of NetworkException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiExceptionCopyWith<_ApiException> get copyWith => __$ApiExceptionCopyWithImpl<_ApiException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiException&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,status,code,message);

@override
String toString() {
  return 'NetworkException.apiException(status: $status, code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ApiExceptionCopyWith<$Res> implements $NetworkExceptionCopyWith<$Res> {
  factory _$ApiExceptionCopyWith(_ApiException value, $Res Function(_ApiException) _then) = __$ApiExceptionCopyWithImpl;
@useResult
$Res call({
 int? status, String? code, String? message
});




}
/// @nodoc
class __$ApiExceptionCopyWithImpl<$Res>
    implements _$ApiExceptionCopyWith<$Res> {
  __$ApiExceptionCopyWithImpl(this._self, this._then);

  final _ApiException _self;
  final $Res Function(_ApiException) _then;

/// Create a copy of NetworkException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? code = freezed,Object? message = freezed,}) {
  return _then(_ApiException(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
