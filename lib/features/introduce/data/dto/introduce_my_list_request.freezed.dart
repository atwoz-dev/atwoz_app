// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduce_my_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IntroduceMyListRequest {

 int get lastId;
/// Create a copy of IntroduceMyListRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceMyListRequestCopyWith<IntroduceMyListRequest> get copyWith => _$IntroduceMyListRequestCopyWithImpl<IntroduceMyListRequest>(this as IntroduceMyListRequest, _$identity);

  /// Serializes this IntroduceMyListRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceMyListRequest&&(identical(other.lastId, lastId) || other.lastId == lastId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lastId);

@override
String toString() {
  return 'IntroduceMyListRequest(lastId: $lastId)';
}


}

/// @nodoc
abstract mixin class $IntroduceMyListRequestCopyWith<$Res>  {
  factory $IntroduceMyListRequestCopyWith(IntroduceMyListRequest value, $Res Function(IntroduceMyListRequest) _then) = _$IntroduceMyListRequestCopyWithImpl;
@useResult
$Res call({
 int lastId
});




}
/// @nodoc
class _$IntroduceMyListRequestCopyWithImpl<$Res>
    implements $IntroduceMyListRequestCopyWith<$Res> {
  _$IntroduceMyListRequestCopyWithImpl(this._self, this._then);

  final IntroduceMyListRequest _self;
  final $Res Function(IntroduceMyListRequest) _then;

/// Create a copy of IntroduceMyListRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lastId = null,}) {
  return _then(_self.copyWith(
lastId: null == lastId ? _self.lastId : lastId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroduceMyListRequest].
extension IntroduceMyListRequestPatterns on IntroduceMyListRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceMyListRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceMyListRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceMyListRequest value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceMyListRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceMyListRequest value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceMyListRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int lastId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceMyListRequest() when $default != null:
return $default(_that.lastId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int lastId)  $default,) {final _that = this;
switch (_that) {
case _IntroduceMyListRequest():
return $default(_that.lastId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int lastId)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceMyListRequest() when $default != null:
return $default(_that.lastId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IntroduceMyListRequest implements IntroduceMyListRequest {
  const _IntroduceMyListRequest({required this.lastId});
  factory _IntroduceMyListRequest.fromJson(Map<String, dynamic> json) => _$IntroduceMyListRequestFromJson(json);

@override final  int lastId;

/// Create a copy of IntroduceMyListRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceMyListRequestCopyWith<_IntroduceMyListRequest> get copyWith => __$IntroduceMyListRequestCopyWithImpl<_IntroduceMyListRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IntroduceMyListRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceMyListRequest&&(identical(other.lastId, lastId) || other.lastId == lastId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lastId);

@override
String toString() {
  return 'IntroduceMyListRequest(lastId: $lastId)';
}


}

/// @nodoc
abstract mixin class _$IntroduceMyListRequestCopyWith<$Res> implements $IntroduceMyListRequestCopyWith<$Res> {
  factory _$IntroduceMyListRequestCopyWith(_IntroduceMyListRequest value, $Res Function(_IntroduceMyListRequest) _then) = __$IntroduceMyListRequestCopyWithImpl;
@override @useResult
$Res call({
 int lastId
});




}
/// @nodoc
class __$IntroduceMyListRequestCopyWithImpl<$Res>
    implements _$IntroduceMyListRequestCopyWith<$Res> {
  __$IntroduceMyListRequestCopyWithImpl(this._self, this._then);

  final _IntroduceMyListRequest _self;
  final $Res Function(_IntroduceMyListRequest) _then;

/// Create a copy of IntroduceMyListRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lastId = null,}) {
  return _then(_IntroduceMyListRequest(
lastId: null == lastId ? _self.lastId : lastId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
