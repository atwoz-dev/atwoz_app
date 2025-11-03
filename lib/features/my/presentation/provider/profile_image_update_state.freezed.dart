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

 List<EditableProfileImage?> get editableProfileImages;
/// Create a copy of ProfileImageUpdateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileImageUpdateStateCopyWith<ProfileImageUpdateState> get copyWith => _$ProfileImageUpdateStateCopyWithImpl<ProfileImageUpdateState>(this as ProfileImageUpdateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileImageUpdateState&&const DeepCollectionEquality().equals(other.editableProfileImages, editableProfileImages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(editableProfileImages));

@override
String toString() {
  return 'ProfileImageUpdateState(editableProfileImages: $editableProfileImages)';
}


}

/// @nodoc
abstract mixin class $ProfileImageUpdateStateCopyWith<$Res>  {
  factory $ProfileImageUpdateStateCopyWith(ProfileImageUpdateState value, $Res Function(ProfileImageUpdateState) _then) = _$ProfileImageUpdateStateCopyWithImpl;
@useResult
$Res call({
 List<EditableProfileImage?> editableProfileImages
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
@pragma('vm:prefer-inline') @override $Res call({Object? editableProfileImages = null,}) {
  return _then(_self.copyWith(
editableProfileImages: null == editableProfileImages ? _self.editableProfileImages : editableProfileImages // ignore: cast_nullable_to_non_nullable
as List<EditableProfileImage?>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EditableProfileImage?> editableProfileImages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileImageUpdateState() when $default != null:
return $default(_that.editableProfileImages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EditableProfileImage?> editableProfileImages)  $default,) {final _that = this;
switch (_that) {
case _ProfileImageUpdateState():
return $default(_that.editableProfileImages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EditableProfileImage?> editableProfileImages)?  $default,) {final _that = this;
switch (_that) {
case _ProfileImageUpdateState() when $default != null:
return $default(_that.editableProfileImages);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileImageUpdateState extends ProfileImageUpdateState {
  const _ProfileImageUpdateState({required final  List<EditableProfileImage?> editableProfileImages}): _editableProfileImages = editableProfileImages,super._();
  

 final  List<EditableProfileImage?> _editableProfileImages;
@override List<EditableProfileImage?> get editableProfileImages {
  if (_editableProfileImages is EqualUnmodifiableListView) return _editableProfileImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_editableProfileImages);
}


/// Create a copy of ProfileImageUpdateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileImageUpdateStateCopyWith<_ProfileImageUpdateState> get copyWith => __$ProfileImageUpdateStateCopyWithImpl<_ProfileImageUpdateState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileImageUpdateState&&const DeepCollectionEquality().equals(other._editableProfileImages, _editableProfileImages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_editableProfileImages));

@override
String toString() {
  return 'ProfileImageUpdateState(editableProfileImages: $editableProfileImages)';
}


}

/// @nodoc
abstract mixin class _$ProfileImageUpdateStateCopyWith<$Res> implements $ProfileImageUpdateStateCopyWith<$Res> {
  factory _$ProfileImageUpdateStateCopyWith(_ProfileImageUpdateState value, $Res Function(_ProfileImageUpdateState) _then) = __$ProfileImageUpdateStateCopyWithImpl;
@override @useResult
$Res call({
 List<EditableProfileImage?> editableProfileImages
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
@override @pragma('vm:prefer-inline') $Res call({Object? editableProfileImages = null,}) {
  return _then(_ProfileImageUpdateState(
editableProfileImages: null == editableProfileImages ? _self._editableProfileImages : editableProfileImages // ignore: cast_nullable_to_non_nullable
as List<EditableProfileImage?>,
  ));
}


}

// dart format on
