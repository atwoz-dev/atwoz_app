// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_profile_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyProfileImage {

@HiveField(0) int get id;@HiveField(1) String get imageUrl;
/// Create a copy of MyProfileImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyProfileImageCopyWith<MyProfileImage> get copyWith => _$MyProfileImageCopyWithImpl<MyProfileImage>(this as MyProfileImage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyProfileImage&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl);

@override
String toString() {
  return 'MyProfileImage(id: $id, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $MyProfileImageCopyWith<$Res>  {
  factory $MyProfileImageCopyWith(MyProfileImage value, $Res Function(MyProfileImage) _then) = _$MyProfileImageCopyWithImpl;
@useResult
$Res call({
@HiveField(0) int id,@HiveField(1) String imageUrl
});




}
/// @nodoc
class _$MyProfileImageCopyWithImpl<$Res>
    implements $MyProfileImageCopyWith<$Res> {
  _$MyProfileImageCopyWithImpl(this._self, this._then);

  final MyProfileImage _self;
  final $Res Function(MyProfileImage) _then;

/// Create a copy of MyProfileImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MyProfileImage].
extension MyProfileImagePatterns on MyProfileImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyProfileImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyProfileImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyProfileImage value)  $default,){
final _that = this;
switch (_that) {
case _MyProfileImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyProfileImage value)?  $default,){
final _that = this;
switch (_that) {
case _MyProfileImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  int id, @HiveField(1)  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyProfileImage() when $default != null:
return $default(_that.id,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  int id, @HiveField(1)  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _MyProfileImage():
return $default(_that.id,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  int id, @HiveField(1)  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _MyProfileImage() when $default != null:
return $default(_that.id,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _MyProfileImage implements MyProfileImage {
  const _MyProfileImage({@HiveField(0) required this.id, @HiveField(1) required this.imageUrl});
  

@override@HiveField(0) final  int id;
@override@HiveField(1) final  String imageUrl;

/// Create a copy of MyProfileImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyProfileImageCopyWith<_MyProfileImage> get copyWith => __$MyProfileImageCopyWithImpl<_MyProfileImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyProfileImage&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl);

@override
String toString() {
  return 'MyProfileImage(id: $id, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$MyProfileImageCopyWith<$Res> implements $MyProfileImageCopyWith<$Res> {
  factory _$MyProfileImageCopyWith(_MyProfileImage value, $Res Function(_MyProfileImage) _then) = __$MyProfileImageCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) int id,@HiveField(1) String imageUrl
});




}
/// @nodoc
class __$MyProfileImageCopyWithImpl<$Res>
    implements _$MyProfileImageCopyWith<$Res> {
  __$MyProfileImageCopyWithImpl(this._self, this._then);

  final _MyProfileImage _self;
  final $Res Function(_MyProfileImage) _then;

/// Create a copy of MyProfileImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,}) {
  return _then(_MyProfileImage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
