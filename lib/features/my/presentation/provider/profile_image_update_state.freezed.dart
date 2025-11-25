// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_image_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileImageUpdateState {

 List<ProfilePhoto> get profileImages; bool get hasDeletion; bool get isSaving;
/// Create a copy of ProfileImageUpdateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileImageUpdateStateCopyWith<ProfileImageUpdateState> get copyWith => _$ProfileImageUpdateStateCopyWithImpl<ProfileImageUpdateState>(this as ProfileImageUpdateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileImageUpdateState&&const DeepCollectionEquality().equals(other.profileImages, profileImages)&&(identical(other.hasDeletion, hasDeletion) || other.hasDeletion == hasDeletion)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(profileImages),hasDeletion,isSaving);

@override
String toString() {
  return 'ProfileImageUpdateState(profileImages: $profileImages, hasDeletion: $hasDeletion, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class $ProfileImageUpdateStateCopyWith<$Res>  {
  factory $ProfileImageUpdateStateCopyWith(ProfileImageUpdateState value, $Res Function(ProfileImageUpdateState) _then) = _$ProfileImageUpdateStateCopyWithImpl;
@useResult
$Res call({
 List<ProfilePhoto> profileImages, bool hasDeletion, bool isSaving
});




}
/// @nodoc
class _$ProfileImageUpdateStateCopyWithImpl<$Res>
    implements $ProfileImageUpdateStateCopyWith<$Res> {
  _$ProfileImageUpdateStateCopyWithImpl(this._self, this._then);

  final ProfileImageUpdateState _self;
  final $Res Function(ProfileImageUpdateState) _then;

/// Create a copy of ProfileImageUpdateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileImages = null,Object? hasDeletion = null,Object? isSaving = null,}) {
  return _then(_self.copyWith(
profileImages: null == profileImages ? _self.profileImages : profileImages // ignore: cast_nullable_to_non_nullable
as List<ProfilePhoto>,hasDeletion: null == hasDeletion ? _self.hasDeletion : hasDeletion // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileImageUpdateState].
extension ProfileImageUpdateStatePatterns on ProfileImageUpdateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileImageUpdateState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileImageUpdateState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileImageUpdateState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileImageUpdateState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileImageUpdateState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileImageUpdateState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProfilePhoto> profileImages,  bool hasDeletion,  bool isSaving)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileImageUpdateState() when $default != null:
return $default(_that.profileImages,_that.hasDeletion,_that.isSaving);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProfilePhoto> profileImages,  bool hasDeletion,  bool isSaving)  $default,) {final _that = this;
switch (_that) {
case _ProfileImageUpdateState():
return $default(_that.profileImages,_that.hasDeletion,_that.isSaving);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProfilePhoto> profileImages,  bool hasDeletion,  bool isSaving)?  $default,) {final _that = this;
switch (_that) {
case _ProfileImageUpdateState() when $default != null:
return $default(_that.profileImages,_that.hasDeletion,_that.isSaving);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileImageUpdateState implements ProfileImageUpdateState {
  const _ProfileImageUpdateState({required final  List<ProfilePhoto> profileImages, required this.hasDeletion, required this.isSaving}): _profileImages = profileImages;
  

 final  List<ProfilePhoto> _profileImages;
@override List<ProfilePhoto> get profileImages {
  if (_profileImages is EqualUnmodifiableListView) return _profileImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profileImages);
}

@override final  bool hasDeletion;
@override final  bool isSaving;

/// Create a copy of ProfileImageUpdateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileImageUpdateStateCopyWith<_ProfileImageUpdateState> get copyWith => __$ProfileImageUpdateStateCopyWithImpl<_ProfileImageUpdateState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileImageUpdateState&&const DeepCollectionEquality().equals(other._profileImages, _profileImages)&&(identical(other.hasDeletion, hasDeletion) || other.hasDeletion == hasDeletion)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_profileImages),hasDeletion,isSaving);

@override
String toString() {
  return 'ProfileImageUpdateState(profileImages: $profileImages, hasDeletion: $hasDeletion, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class _$ProfileImageUpdateStateCopyWith<$Res> implements $ProfileImageUpdateStateCopyWith<$Res> {
  factory _$ProfileImageUpdateStateCopyWith(_ProfileImageUpdateState value, $Res Function(_ProfileImageUpdateState) _then) = __$ProfileImageUpdateStateCopyWithImpl;
@override @useResult
$Res call({
 List<ProfilePhoto> profileImages, bool hasDeletion, bool isSaving
});




}
/// @nodoc
class __$ProfileImageUpdateStateCopyWithImpl<$Res>
    implements _$ProfileImageUpdateStateCopyWith<$Res> {
  __$ProfileImageUpdateStateCopyWithImpl(this._self, this._then);

  final _ProfileImageUpdateState _self;
  final $Res Function(_ProfileImageUpdateState) _then;

/// Create a copy of ProfileImageUpdateState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileImages = null,Object? hasDeletion = null,Object? isSaving = null,}) {
  return _then(_ProfileImageUpdateState(
profileImages: null == profileImages ? _self._profileImages : profileImages // ignore: cast_nullable_to_non_nullable
as List<ProfilePhoto>,hasDeletion: null == hasDeletion ? _self.hasDeletion : hasDeletion // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
