// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfilePhoto {

 String? get imageUrl; XFile? get imageFile; bool get isUpdated;
/// Create a copy of ProfilePhoto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilePhotoCopyWith<ProfilePhoto> get copyWith => _$ProfilePhotoCopyWithImpl<ProfilePhoto>(this as ProfilePhoto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePhoto&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile)&&(identical(other.isUpdated, isUpdated) || other.isUpdated == isUpdated));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,imageFile,isUpdated);

@override
String toString() {
  return 'ProfilePhoto(imageUrl: $imageUrl, imageFile: $imageFile, isUpdated: $isUpdated)';
}


}

/// @nodoc
abstract mixin class $ProfilePhotoCopyWith<$Res>  {
  factory $ProfilePhotoCopyWith(ProfilePhoto value, $Res Function(ProfilePhoto) _then) = _$ProfilePhotoCopyWithImpl;
@useResult
$Res call({
 String? imageUrl, XFile? imageFile, bool isUpdated
});




}
/// @nodoc
class _$ProfilePhotoCopyWithImpl<$Res>
    implements $ProfilePhotoCopyWith<$Res> {
  _$ProfilePhotoCopyWithImpl(this._self, this._then);

  final ProfilePhoto _self;
  final $Res Function(ProfilePhoto) _then;

/// Create a copy of ProfilePhoto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = freezed,Object? imageFile = freezed,Object? isUpdated = null,}) {
  return _then(_self.copyWith(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as XFile?,isUpdated: null == isUpdated ? _self.isUpdated : isUpdated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfilePhoto].
extension ProfilePhotoPatterns on ProfilePhoto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfilePhoto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfilePhoto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfilePhoto value)  $default,){
final _that = this;
switch (_that) {
case _ProfilePhoto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfilePhoto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfilePhoto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imageUrl,  XFile? imageFile,  bool isUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfilePhoto() when $default != null:
return $default(_that.imageUrl,_that.imageFile,_that.isUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imageUrl,  XFile? imageFile,  bool isUpdated)  $default,) {final _that = this;
switch (_that) {
case _ProfilePhoto():
return $default(_that.imageUrl,_that.imageFile,_that.isUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imageUrl,  XFile? imageFile,  bool isUpdated)?  $default,) {final _that = this;
switch (_that) {
case _ProfilePhoto() when $default != null:
return $default(_that.imageUrl,_that.imageFile,_that.isUpdated);case _:
  return null;

}
}

}

/// @nodoc


class _ProfilePhoto implements ProfilePhoto {
  const _ProfilePhoto({this.imageUrl, this.imageFile, required this.isUpdated});
  

@override final  String? imageUrl;
@override final  XFile? imageFile;
@override final  bool isUpdated;

/// Create a copy of ProfilePhoto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfilePhotoCopyWith<_ProfilePhoto> get copyWith => __$ProfilePhotoCopyWithImpl<_ProfilePhoto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfilePhoto&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile)&&(identical(other.isUpdated, isUpdated) || other.isUpdated == isUpdated));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,imageFile,isUpdated);

@override
String toString() {
  return 'ProfilePhoto(imageUrl: $imageUrl, imageFile: $imageFile, isUpdated: $isUpdated)';
}


}

/// @nodoc
abstract mixin class _$ProfilePhotoCopyWith<$Res> implements $ProfilePhotoCopyWith<$Res> {
  factory _$ProfilePhotoCopyWith(_ProfilePhoto value, $Res Function(_ProfilePhoto) _then) = __$ProfilePhotoCopyWithImpl;
@override @useResult
$Res call({
 String? imageUrl, XFile? imageFile, bool isUpdated
});




}
/// @nodoc
class __$ProfilePhotoCopyWithImpl<$Res>
    implements _$ProfilePhotoCopyWith<$Res> {
  __$ProfilePhotoCopyWithImpl(this._self, this._then);

  final _ProfilePhoto _self;
  final $Res Function(_ProfilePhoto) _then;

/// Create a copy of ProfilePhoto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = freezed,Object? imageFile = freezed,Object? isUpdated = null,}) {
  return _then(_ProfilePhoto(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as XFile?,isUpdated: null == isUpdated ? _self.isUpdated : isUpdated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
