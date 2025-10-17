// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState {

 UserProfile? get profile; String get myUserName; bool get registeredContact; int get heartPoint; String get message; bool get isLoaded; DialogueErrorType? get error;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.myUserName, myUserName) || other.myUserName == myUserName)&&(identical(other.registeredContact, registeredContact) || other.registeredContact == registeredContact)&&(identical(other.heartPoint, heartPoint) || other.heartPoint == heartPoint)&&(identical(other.message, message) || other.message == message)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,profile,myUserName,registeredContact,heartPoint,message,isLoaded,error);

@override
String toString() {
  return 'ProfileState(profile: $profile, myUserName: $myUserName, registeredContact: $registeredContact, heartPoint: $heartPoint, message: $message, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 UserProfile? profile, String myUserName, bool registeredContact, int heartPoint, String message, bool isLoaded, DialogueErrorType? error
});


$UserProfileCopyWith<$Res>? get profile;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = freezed,Object? myUserName = null,Object? registeredContact = null,Object? heartPoint = null,Object? message = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile?,myUserName: null == myUserName ? _self.myUserName : myUserName // ignore: cast_nullable_to_non_nullable
as String,registeredContact: null == registeredContact ? _self.registeredContact : registeredContact // ignore: cast_nullable_to_non_nullable
as bool,heartPoint: null == heartPoint ? _self.heartPoint : heartPoint // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as DialogueErrorType?,
  ));
}
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $UserProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProfile? profile,  String myUserName,  bool registeredContact,  int heartPoint,  String message,  bool isLoaded,  DialogueErrorType? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.profile,_that.myUserName,_that.registeredContact,_that.heartPoint,_that.message,_that.isLoaded,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProfile? profile,  String myUserName,  bool registeredContact,  int heartPoint,  String message,  bool isLoaded,  DialogueErrorType? error)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.profile,_that.myUserName,_that.registeredContact,_that.heartPoint,_that.message,_that.isLoaded,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProfile? profile,  String myUserName,  bool registeredContact,  int heartPoint,  String message,  bool isLoaded,  DialogueErrorType? error)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.profile,_that.myUserName,_that.registeredContact,_that.heartPoint,_that.message,_that.isLoaded,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState extends ProfileState {
  const _ProfileState({required this.profile, required this.myUserName, required this.registeredContact, required this.heartPoint, required this.message, required this.isLoaded, required this.error}): super._();
  

@override final  UserProfile? profile;
@override final  String myUserName;
@override final  bool registeredContact;
@override final  int heartPoint;
@override final  String message;
@override final  bool isLoaded;
@override final  DialogueErrorType? error;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.myUserName, myUserName) || other.myUserName == myUserName)&&(identical(other.registeredContact, registeredContact) || other.registeredContact == registeredContact)&&(identical(other.heartPoint, heartPoint) || other.heartPoint == heartPoint)&&(identical(other.message, message) || other.message == message)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,profile,myUserName,registeredContact,heartPoint,message,isLoaded,error);

@override
String toString() {
  return 'ProfileState(profile: $profile, myUserName: $myUserName, registeredContact: $registeredContact, heartPoint: $heartPoint, message: $message, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 UserProfile? profile, String myUserName, bool registeredContact, int heartPoint, String message, bool isLoaded, DialogueErrorType? error
});


@override $UserProfileCopyWith<$Res>? get profile;

}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = freezed,Object? myUserName = null,Object? registeredContact = null,Object? heartPoint = null,Object? message = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_ProfileState(
profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile?,myUserName: null == myUserName ? _self.myUserName : myUserName // ignore: cast_nullable_to_non_nullable
as String,registeredContact: null == registeredContact ? _self.registeredContact : registeredContact // ignore: cast_nullable_to_non_nullable
as bool,heartPoint: null == heartPoint ? _self.heartPoint : heartPoint // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as DialogueErrorType?,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $UserProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
