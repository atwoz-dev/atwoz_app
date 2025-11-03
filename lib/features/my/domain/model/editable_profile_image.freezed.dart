// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editable_profile_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditableProfileImage {

 int? get id; String? get imageUrl; XFile? get imageFile; int get order; bool get isPrimary; ProfileImageStatus get status;
/// Create a copy of EditableProfileImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditableProfileImageCopyWith<EditableProfileImage> get copyWith => _$EditableProfileImageCopyWithImpl<EditableProfileImage>(this as EditableProfileImage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditableProfileImage&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile)&&(identical(other.order, order) || other.order == order)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,imageFile,order,isPrimary,status);

@override
String toString() {
  return 'EditableProfileImage(id: $id, imageUrl: $imageUrl, imageFile: $imageFile, order: $order, isPrimary: $isPrimary, status: $status)';
}


}

/// @nodoc
abstract mixin class $EditableProfileImageCopyWith<$Res>  {
  factory $EditableProfileImageCopyWith(EditableProfileImage value, $Res Function(EditableProfileImage) _then) = _$EditableProfileImageCopyWithImpl;
@useResult
$Res call({
 int? id, String? imageUrl, XFile? imageFile, int order, bool isPrimary, ProfileImageStatus status
});




}
/// @nodoc
class _$EditableProfileImageCopyWithImpl<$Res>
    implements $EditableProfileImageCopyWith<$Res> {
  _$EditableProfileImageCopyWithImpl(this._self, this._then);

  final EditableProfileImage _self;
  final $Res Function(EditableProfileImage) _then;

/// Create a copy of EditableProfileImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? imageUrl = freezed,Object? imageFile = freezed,Object? order = null,Object? isPrimary = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as XFile?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileImageStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [EditableProfileImage].
extension EditableProfileImagePatterns on EditableProfileImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditableProfileImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditableProfileImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditableProfileImage value)  $default,){
final _that = this;
switch (_that) {
case _EditableProfileImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditableProfileImage value)?  $default,){
final _that = this;
switch (_that) {
case _EditableProfileImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? imageUrl,  XFile? imageFile,  int order,  bool isPrimary,  ProfileImageStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditableProfileImage() when $default != null:
return $default(_that.id,_that.imageUrl,_that.imageFile,_that.order,_that.isPrimary,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? imageUrl,  XFile? imageFile,  int order,  bool isPrimary,  ProfileImageStatus status)  $default,) {final _that = this;
switch (_that) {
case _EditableProfileImage():
return $default(_that.id,_that.imageUrl,_that.imageFile,_that.order,_that.isPrimary,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? imageUrl,  XFile? imageFile,  int order,  bool isPrimary,  ProfileImageStatus status)?  $default,) {final _that = this;
switch (_that) {
case _EditableProfileImage() when $default != null:
return $default(_that.id,_that.imageUrl,_that.imageFile,_that.order,_that.isPrimary,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _EditableProfileImage implements EditableProfileImage {
  const _EditableProfileImage({this.id, this.imageUrl, this.imageFile, required this.order, required this.isPrimary, required this.status});
  

@override final  int? id;
@override final  String? imageUrl;
@override final  XFile? imageFile;
@override final  int order;
@override final  bool isPrimary;
@override final  ProfileImageStatus status;

/// Create a copy of EditableProfileImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditableProfileImageCopyWith<_EditableProfileImage> get copyWith => __$EditableProfileImageCopyWithImpl<_EditableProfileImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditableProfileImage&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile)&&(identical(other.order, order) || other.order == order)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,imageFile,order,isPrimary,status);

@override
String toString() {
  return 'EditableProfileImage(id: $id, imageUrl: $imageUrl, imageFile: $imageFile, order: $order, isPrimary: $isPrimary, status: $status)';
}


}

/// @nodoc
abstract mixin class _$EditableProfileImageCopyWith<$Res> implements $EditableProfileImageCopyWith<$Res> {
  factory _$EditableProfileImageCopyWith(_EditableProfileImage value, $Res Function(_EditableProfileImage) _then) = __$EditableProfileImageCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? imageUrl, XFile? imageFile, int order, bool isPrimary, ProfileImageStatus status
});




}
/// @nodoc
class __$EditableProfileImageCopyWithImpl<$Res>
    implements _$EditableProfileImageCopyWith<$Res> {
  __$EditableProfileImageCopyWithImpl(this._self, this._then);

  final _EditableProfileImage _self;
  final $Res Function(_EditableProfileImage) _then;

/// Create a copy of EditableProfileImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? imageUrl = freezed,Object? imageFile = freezed,Object? order = null,Object? isPrimary = null,Object? status = null,}) {
  return _then(_EditableProfileImage(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as XFile?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileImageStatus,
  ));
}


}

// dart format on
