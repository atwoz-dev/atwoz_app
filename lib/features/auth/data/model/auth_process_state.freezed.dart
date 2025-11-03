// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_process_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthProcessState {

 bool get isLoading; String? get error; bool get isSignedIn; UserResponse? get user;
/// Create a copy of AuthProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthProcessStateCopyWith<AuthProcessState> get copyWith => _$AuthProcessStateCopyWithImpl<AuthProcessState>(this as AuthProcessState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthProcessState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.isSignedIn, isSignedIn) || other.isSignedIn == isSignedIn)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,isSignedIn,user);

@override
String toString() {
  return 'AuthProcessState(isLoading: $isLoading, error: $error, isSignedIn: $isSignedIn, user: $user)';
}


}

/// @nodoc
abstract mixin class $AuthProcessStateCopyWith<$Res>  {
  factory $AuthProcessStateCopyWith(AuthProcessState value, $Res Function(AuthProcessState) _then) = _$AuthProcessStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? error, bool isSignedIn, UserResponse? user
});


$UserResponseCopyWith<$Res>? get user;

}
/// @nodoc
class _$AuthProcessStateCopyWithImpl<$Res>
    implements $AuthProcessStateCopyWith<$Res> {
  _$AuthProcessStateCopyWithImpl(this._self, this._then);

  final AuthProcessState _self;
  final $Res Function(AuthProcessState) _then;

/// Create a copy of AuthProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? error = freezed,Object? isSignedIn = null,Object? user = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isSignedIn: null == isSignedIn ? _self.isSignedIn : isSignedIn // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponse?,
  ));
}
/// Create a copy of AuthProcessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResponseCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserResponseCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthProcessState].
extension AuthProcessStatePatterns on AuthProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthProcessState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthProcessState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthProcessState value)  $default,){
final _that = this;
switch (_that) {
case _AuthProcessState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthProcessState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthProcessState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? error,  bool isSignedIn,  UserResponse? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthProcessState() when $default != null:
return $default(_that.isLoading,_that.error,_that.isSignedIn,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? error,  bool isSignedIn,  UserResponse? user)  $default,) {final _that = this;
switch (_that) {
case _AuthProcessState():
return $default(_that.isLoading,_that.error,_that.isSignedIn,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? error,  bool isSignedIn,  UserResponse? user)?  $default,) {final _that = this;
switch (_that) {
case _AuthProcessState() when $default != null:
return $default(_that.isLoading,_that.error,_that.isSignedIn,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _AuthProcessState extends AuthProcessState {
  const _AuthProcessState({this.isLoading = false, this.error, this.isSignedIn = false, this.user}): super._();
  

@override@JsonKey() final  bool isLoading;
@override final  String? error;
@override@JsonKey() final  bool isSignedIn;
@override final  UserResponse? user;

/// Create a copy of AuthProcessState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthProcessStateCopyWith<_AuthProcessState> get copyWith => __$AuthProcessStateCopyWithImpl<_AuthProcessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthProcessState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.isSignedIn, isSignedIn) || other.isSignedIn == isSignedIn)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,isSignedIn,user);

@override
String toString() {
  return 'AuthProcessState(isLoading: $isLoading, error: $error, isSignedIn: $isSignedIn, user: $user)';
}


}

/// @nodoc
abstract mixin class _$AuthProcessStateCopyWith<$Res> implements $AuthProcessStateCopyWith<$Res> {
  factory _$AuthProcessStateCopyWith(_AuthProcessState value, $Res Function(_AuthProcessState) _then) = __$AuthProcessStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? error, bool isSignedIn, UserResponse? user
});


@override $UserResponseCopyWith<$Res>? get user;

}
/// @nodoc
class __$AuthProcessStateCopyWithImpl<$Res>
    implements _$AuthProcessStateCopyWith<$Res> {
  __$AuthProcessStateCopyWithImpl(this._self, this._then);

  final _AuthProcessState _self;
  final $Res Function(_AuthProcessState) _then;

/// Create a copy of AuthProcessState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? error = freezed,Object? isSignedIn = null,Object? user = freezed,}) {
  return _then(_AuthProcessState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isSignedIn: null == isSignedIn ? _self.isSignedIn : isSignedIn // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponse?,
  ));
}

/// Create a copy of AuthProcessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResponseCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserResponseCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
