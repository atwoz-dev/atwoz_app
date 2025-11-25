// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppGlobalState {

 CachedUserProfile get profile; HeartBalance get heartBalance;
/// Create a copy of AppGlobalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppGlobalStateCopyWith<AppGlobalState> get copyWith => _$AppGlobalStateCopyWithImpl<AppGlobalState>(this as AppGlobalState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppGlobalState&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.heartBalance, heartBalance) || other.heartBalance == heartBalance));
}


@override
int get hashCode => Object.hash(runtimeType,profile,heartBalance);

@override
String toString() {
  return 'AppGlobalState(profile: $profile, heartBalance: $heartBalance)';
}


}

/// @nodoc
abstract mixin class $AppGlobalStateCopyWith<$Res>  {
  factory $AppGlobalStateCopyWith(AppGlobalState value, $Res Function(AppGlobalState) _then) = _$AppGlobalStateCopyWithImpl;
@useResult
$Res call({
 CachedUserProfile profile, HeartBalance heartBalance
});


$CachedUserProfileCopyWith<$Res> get profile;$HeartBalanceCopyWith<$Res> get heartBalance;

}
/// @nodoc
class _$AppGlobalStateCopyWithImpl<$Res>
    implements $AppGlobalStateCopyWith<$Res> {
  _$AppGlobalStateCopyWithImpl(this._self, this._then);

  final AppGlobalState _self;
  final $Res Function(AppGlobalState) _then;

/// Create a copy of AppGlobalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? heartBalance = null,}) {
  return _then(_self.copyWith(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as CachedUserProfile,heartBalance: null == heartBalance ? _self.heartBalance : heartBalance // ignore: cast_nullable_to_non_nullable
as HeartBalance,
  ));
}
/// Create a copy of AppGlobalState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CachedUserProfileCopyWith<$Res> get profile {
  
  return $CachedUserProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of AppGlobalState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeartBalanceCopyWith<$Res> get heartBalance {
  
  return $HeartBalanceCopyWith<$Res>(_self.heartBalance, (value) {
    return _then(_self.copyWith(heartBalance: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppGlobalState].
extension AppGlobalStatePatterns on AppGlobalState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppGlobalState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppGlobalState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppGlobalState value)  $default,){
final _that = this;
switch (_that) {
case _AppGlobalState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppGlobalState value)?  $default,){
final _that = this;
switch (_that) {
case _AppGlobalState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CachedUserProfile profile,  HeartBalance heartBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppGlobalState() when $default != null:
return $default(_that.profile,_that.heartBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CachedUserProfile profile,  HeartBalance heartBalance)  $default,) {final _that = this;
switch (_that) {
case _AppGlobalState():
return $default(_that.profile,_that.heartBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CachedUserProfile profile,  HeartBalance heartBalance)?  $default,) {final _that = this;
switch (_that) {
case _AppGlobalState() when $default != null:
return $default(_that.profile,_that.heartBalance);case _:
  return null;

}
}

}

/// @nodoc


class _AppGlobalState implements AppGlobalState {
  const _AppGlobalState({required this.profile, required this.heartBalance});
  

@override final  CachedUserProfile profile;
@override final  HeartBalance heartBalance;

/// Create a copy of AppGlobalState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppGlobalStateCopyWith<_AppGlobalState> get copyWith => __$AppGlobalStateCopyWithImpl<_AppGlobalState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppGlobalState&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.heartBalance, heartBalance) || other.heartBalance == heartBalance));
}


@override
int get hashCode => Object.hash(runtimeType,profile,heartBalance);

@override
String toString() {
  return 'AppGlobalState(profile: $profile, heartBalance: $heartBalance)';
}


}

/// @nodoc
abstract mixin class _$AppGlobalStateCopyWith<$Res> implements $AppGlobalStateCopyWith<$Res> {
  factory _$AppGlobalStateCopyWith(_AppGlobalState value, $Res Function(_AppGlobalState) _then) = __$AppGlobalStateCopyWithImpl;
@override @useResult
$Res call({
 CachedUserProfile profile, HeartBalance heartBalance
});


@override $CachedUserProfileCopyWith<$Res> get profile;@override $HeartBalanceCopyWith<$Res> get heartBalance;

}
/// @nodoc
class __$AppGlobalStateCopyWithImpl<$Res>
    implements _$AppGlobalStateCopyWith<$Res> {
  __$AppGlobalStateCopyWithImpl(this._self, this._then);

  final _AppGlobalState _self;
  final $Res Function(_AppGlobalState) _then;

/// Create a copy of AppGlobalState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? heartBalance = null,}) {
  return _then(_AppGlobalState(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as CachedUserProfile,heartBalance: null == heartBalance ? _self.heartBalance : heartBalance // ignore: cast_nullable_to_non_nullable
as HeartBalance,
  ));
}

/// Create a copy of AppGlobalState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CachedUserProfileCopyWith<$Res> get profile {
  
  return $CachedUserProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of AppGlobalState
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
