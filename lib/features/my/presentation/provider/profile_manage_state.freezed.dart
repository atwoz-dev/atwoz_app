// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_manage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileManageState {

 MyProfile get profile; MyProfile? get updatedProfile; bool get isChanged;
/// Create a copy of ProfileManageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileManageStateCopyWith<ProfileManageState> get copyWith => _$ProfileManageStateCopyWithImpl<ProfileManageState>(this as ProfileManageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileManageState&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.updatedProfile, updatedProfile) || other.updatedProfile == updatedProfile)&&(identical(other.isChanged, isChanged) || other.isChanged == isChanged));
}


@override
int get hashCode => Object.hash(runtimeType,profile,updatedProfile,isChanged);

@override
String toString() {
  return 'ProfileManageState(profile: $profile, updatedProfile: $updatedProfile, isChanged: $isChanged)';
}


}

/// @nodoc
abstract mixin class $ProfileManageStateCopyWith<$Res>  {
  factory $ProfileManageStateCopyWith(ProfileManageState value, $Res Function(ProfileManageState) _then) = _$ProfileManageStateCopyWithImpl;
@useResult
$Res call({
 MyProfile profile, MyProfile? updatedProfile, bool isChanged
});


$MyProfileCopyWith<$Res> get profile;$MyProfileCopyWith<$Res>? get updatedProfile;

}
/// @nodoc
class _$ProfileManageStateCopyWithImpl<$Res>
    implements $ProfileManageStateCopyWith<$Res> {
  _$ProfileManageStateCopyWithImpl(this._self, this._then);

  final ProfileManageState _self;
  final $Res Function(ProfileManageState) _then;

/// Create a copy of ProfileManageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? updatedProfile = freezed,Object? isChanged = null,}) {
  return _then(_self.copyWith(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as MyProfile,updatedProfile: freezed == updatedProfile ? _self.updatedProfile : updatedProfile // ignore: cast_nullable_to_non_nullable
as MyProfile?,isChanged: null == isChanged ? _self.isChanged : isChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProfileManageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyProfileCopyWith<$Res> get profile {
  
  return $MyProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of ProfileManageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyProfileCopyWith<$Res>? get updatedProfile {
    if (_self.updatedProfile == null) {
    return null;
  }

  return $MyProfileCopyWith<$Res>(_self.updatedProfile!, (value) {
    return _then(_self.copyWith(updatedProfile: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileManageState].
extension ProfileManageStatePatterns on ProfileManageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileManageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileManageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileManageState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileManageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileManageState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileManageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MyProfile profile,  MyProfile? updatedProfile,  bool isChanged)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileManageState() when $default != null:
return $default(_that.profile,_that.updatedProfile,_that.isChanged);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MyProfile profile,  MyProfile? updatedProfile,  bool isChanged)  $default,) {final _that = this;
switch (_that) {
case _ProfileManageState():
return $default(_that.profile,_that.updatedProfile,_that.isChanged);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MyProfile profile,  MyProfile? updatedProfile,  bool isChanged)?  $default,) {final _that = this;
switch (_that) {
case _ProfileManageState() when $default != null:
return $default(_that.profile,_that.updatedProfile,_that.isChanged);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileManageState extends ProfileManageState {
  const _ProfileManageState({required this.profile, this.updatedProfile, this.isChanged = false}): super._();
  

@override final  MyProfile profile;
@override final  MyProfile? updatedProfile;
@override@JsonKey() final  bool isChanged;

/// Create a copy of ProfileManageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileManageStateCopyWith<_ProfileManageState> get copyWith => __$ProfileManageStateCopyWithImpl<_ProfileManageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileManageState&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.updatedProfile, updatedProfile) || other.updatedProfile == updatedProfile)&&(identical(other.isChanged, isChanged) || other.isChanged == isChanged));
}


@override
int get hashCode => Object.hash(runtimeType,profile,updatedProfile,isChanged);

@override
String toString() {
  return 'ProfileManageState(profile: $profile, updatedProfile: $updatedProfile, isChanged: $isChanged)';
}


}

/// @nodoc
abstract mixin class _$ProfileManageStateCopyWith<$Res> implements $ProfileManageStateCopyWith<$Res> {
  factory _$ProfileManageStateCopyWith(_ProfileManageState value, $Res Function(_ProfileManageState) _then) = __$ProfileManageStateCopyWithImpl;
@override @useResult
$Res call({
 MyProfile profile, MyProfile? updatedProfile, bool isChanged
});


@override $MyProfileCopyWith<$Res> get profile;@override $MyProfileCopyWith<$Res>? get updatedProfile;

}
/// @nodoc
class __$ProfileManageStateCopyWithImpl<$Res>
    implements _$ProfileManageStateCopyWith<$Res> {
  __$ProfileManageStateCopyWithImpl(this._self, this._then);

  final _ProfileManageState _self;
  final $Res Function(_ProfileManageState) _then;

/// Create a copy of ProfileManageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? updatedProfile = freezed,Object? isChanged = null,}) {
  return _then(_ProfileManageState(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as MyProfile,updatedProfile: freezed == updatedProfile ? _self.updatedProfile : updatedProfile // ignore: cast_nullable_to_non_nullable
as MyProfile?,isChanged: null == isChanged ? _self.isChanged : isChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProfileManageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyProfileCopyWith<$Res> get profile {
  
  return $MyProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of ProfileManageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyProfileCopyWith<$Res>? get updatedProfile {
    if (_self.updatedProfile == null) {
    return null;
  }

  return $MyProfileCopyWith<$Res>(_self.updatedProfile!, (value) {
    return _then(_self.copyWith(updatedProfile: value));
  });
}
}

// dart format on
