// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_photo_upload_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfilePhotoUploadRequest {

 String? get id;// 새 이미지면 null
 bool get isPrimary;// 대표 이미지 여부
 int get order;
/// Create a copy of ProfilePhotoUploadRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilePhotoUploadRequestCopyWith<ProfilePhotoUploadRequest> get copyWith => _$ProfilePhotoUploadRequestCopyWithImpl<ProfilePhotoUploadRequest>(this as ProfilePhotoUploadRequest, _$identity);

  /// Serializes this ProfilePhotoUploadRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePhotoUploadRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isPrimary,order);

@override
String toString() {
  return 'ProfilePhotoUploadRequest(id: $id, isPrimary: $isPrimary, order: $order)';
}


}

/// @nodoc
abstract mixin class $ProfilePhotoUploadRequestCopyWith<$Res>  {
  factory $ProfilePhotoUploadRequestCopyWith(ProfilePhotoUploadRequest value, $Res Function(ProfilePhotoUploadRequest) _then) = _$ProfilePhotoUploadRequestCopyWithImpl;
@useResult
$Res call({
 String? id, bool isPrimary, int order
});




}
/// @nodoc
class _$ProfilePhotoUploadRequestCopyWithImpl<$Res>
    implements $ProfilePhotoUploadRequestCopyWith<$Res> {
  _$ProfilePhotoUploadRequestCopyWithImpl(this._self, this._then);

  final ProfilePhotoUploadRequest _self;
  final $Res Function(ProfilePhotoUploadRequest) _then;

/// Create a copy of ProfilePhotoUploadRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? isPrimary = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfilePhotoUploadRequest].
extension ProfilePhotoUploadRequestPatterns on ProfilePhotoUploadRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfilePhotoUploadRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfilePhotoUploadRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfilePhotoUploadRequest value)  $default,){
final _that = this;
switch (_that) {
case _ProfilePhotoUploadRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfilePhotoUploadRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ProfilePhotoUploadRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  bool isPrimary,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfilePhotoUploadRequest() when $default != null:
return $default(_that.id,_that.isPrimary,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  bool isPrimary,  int order)  $default,) {final _that = this;
switch (_that) {
case _ProfilePhotoUploadRequest():
return $default(_that.id,_that.isPrimary,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  bool isPrimary,  int order)?  $default,) {final _that = this;
switch (_that) {
case _ProfilePhotoUploadRequest() when $default != null:
return $default(_that.id,_that.isPrimary,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfilePhotoUploadRequest implements ProfilePhotoUploadRequest {
  const _ProfilePhotoUploadRequest({this.id, required this.isPrimary, required this.order});
  factory _ProfilePhotoUploadRequest.fromJson(Map<String, dynamic> json) => _$ProfilePhotoUploadRequestFromJson(json);

@override final  String? id;
// 새 이미지면 null
@override final  bool isPrimary;
// 대표 이미지 여부
@override final  int order;

/// Create a copy of ProfilePhotoUploadRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfilePhotoUploadRequestCopyWith<_ProfilePhotoUploadRequest> get copyWith => __$ProfilePhotoUploadRequestCopyWithImpl<_ProfilePhotoUploadRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfilePhotoUploadRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfilePhotoUploadRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isPrimary,order);

@override
String toString() {
  return 'ProfilePhotoUploadRequest(id: $id, isPrimary: $isPrimary, order: $order)';
}


}

/// @nodoc
abstract mixin class _$ProfilePhotoUploadRequestCopyWith<$Res> implements $ProfilePhotoUploadRequestCopyWith<$Res> {
  factory _$ProfilePhotoUploadRequestCopyWith(_ProfilePhotoUploadRequest value, $Res Function(_ProfilePhotoUploadRequest) _then) = __$ProfilePhotoUploadRequestCopyWithImpl;
@override @useResult
$Res call({
 String? id, bool isPrimary, int order
});




}
/// @nodoc
class __$ProfilePhotoUploadRequestCopyWithImpl<$Res>
    implements _$ProfilePhotoUploadRequestCopyWith<$Res> {
  __$ProfilePhotoUploadRequestCopyWithImpl(this._self, this._then);

  final _ProfilePhotoUploadRequest _self;
  final $Res Function(_ProfilePhotoUploadRequest) _then;

/// Create a copy of ProfilePhotoUploadRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? isPrimary = null,Object? order = null,}) {
  return _then(_ProfilePhotoUploadRequest(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
