// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduce_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IntroduceUpdateRequest {

 String get title; String get content;
/// Create a copy of IntroduceUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceUpdateRequestCopyWith<IntroduceUpdateRequest> get copyWith => _$IntroduceUpdateRequestCopyWithImpl<IntroduceUpdateRequest>(this as IntroduceUpdateRequest, _$identity);

  /// Serializes this IntroduceUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceUpdateRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content);

@override
String toString() {
  return 'IntroduceUpdateRequest(title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class $IntroduceUpdateRequestCopyWith<$Res>  {
  factory $IntroduceUpdateRequestCopyWith(IntroduceUpdateRequest value, $Res Function(IntroduceUpdateRequest) _then) = _$IntroduceUpdateRequestCopyWithImpl;
@useResult
$Res call({
 String title, String content
});




}
/// @nodoc
class _$IntroduceUpdateRequestCopyWithImpl<$Res>
    implements $IntroduceUpdateRequestCopyWith<$Res> {
  _$IntroduceUpdateRequestCopyWithImpl(this._self, this._then);

  final IntroduceUpdateRequest _self;
  final $Res Function(IntroduceUpdateRequest) _then;

/// Create a copy of IntroduceUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? content = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroduceUpdateRequest].
extension IntroduceUpdateRequestPatterns on IntroduceUpdateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceUpdateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceUpdateRequest value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceUpdateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceUpdateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceUpdateRequest() when $default != null:
return $default(_that.title,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String content)  $default,) {final _that = this;
switch (_that) {
case _IntroduceUpdateRequest():
return $default(_that.title,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String content)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceUpdateRequest() when $default != null:
return $default(_that.title,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IntroduceUpdateRequest implements IntroduceUpdateRequest {
  const _IntroduceUpdateRequest({required this.title, required this.content});
  factory _IntroduceUpdateRequest.fromJson(Map<String, dynamic> json) => _$IntroduceUpdateRequestFromJson(json);

@override final  String title;
@override final  String content;

/// Create a copy of IntroduceUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceUpdateRequestCopyWith<_IntroduceUpdateRequest> get copyWith => __$IntroduceUpdateRequestCopyWithImpl<_IntroduceUpdateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IntroduceUpdateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceUpdateRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content);

@override
String toString() {
  return 'IntroduceUpdateRequest(title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$IntroduceUpdateRequestCopyWith<$Res> implements $IntroduceUpdateRequestCopyWith<$Res> {
  factory _$IntroduceUpdateRequestCopyWith(_IntroduceUpdateRequest value, $Res Function(_IntroduceUpdateRequest) _then) = __$IntroduceUpdateRequestCopyWithImpl;
@override @useResult
$Res call({
 String title, String content
});




}
/// @nodoc
class __$IntroduceUpdateRequestCopyWithImpl<$Res>
    implements _$IntroduceUpdateRequestCopyWith<$Res> {
  __$IntroduceUpdateRequestCopyWithImpl(this._self, this._then);

  final _IntroduceUpdateRequest _self;
  final $Res Function(_IntroduceUpdateRequest) _then;

/// Create a copy of IntroduceUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? content = null,}) {
  return _then(_IntroduceUpdateRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
