// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduce_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroduceEditState {

 bool get canSubmit; String? get title; String? get content;
/// Create a copy of IntroduceEditState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceEditStateCopyWith<IntroduceEditState> get copyWith => _$IntroduceEditStateCopyWithImpl<IntroduceEditState>(this as IntroduceEditState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceEditState&&(identical(other.canSubmit, canSubmit) || other.canSubmit == canSubmit)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,canSubmit,title,content);

@override
String toString() {
  return 'IntroduceEditState(canSubmit: $canSubmit, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class $IntroduceEditStateCopyWith<$Res>  {
  factory $IntroduceEditStateCopyWith(IntroduceEditState value, $Res Function(IntroduceEditState) _then) = _$IntroduceEditStateCopyWithImpl;
@useResult
$Res call({
 bool canSubmit, String? title, String? content
});




}
/// @nodoc
class _$IntroduceEditStateCopyWithImpl<$Res>
    implements $IntroduceEditStateCopyWith<$Res> {
  _$IntroduceEditStateCopyWithImpl(this._self, this._then);

  final IntroduceEditState _self;
  final $Res Function(IntroduceEditState) _then;

/// Create a copy of IntroduceEditState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? canSubmit = null,Object? title = freezed,Object? content = freezed,}) {
  return _then(_self.copyWith(
canSubmit: null == canSubmit ? _self.canSubmit : canSubmit // ignore: cast_nullable_to_non_nullable
as bool,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroduceEditState].
extension IntroduceEditStatePatterns on IntroduceEditState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceEditState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceEditState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceEditState value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceEditState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceEditState value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceEditState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool canSubmit,  String? title,  String? content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceEditState() when $default != null:
return $default(_that.canSubmit,_that.title,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool canSubmit,  String? title,  String? content)  $default,) {final _that = this;
switch (_that) {
case _IntroduceEditState():
return $default(_that.canSubmit,_that.title,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool canSubmit,  String? title,  String? content)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceEditState() when $default != null:
return $default(_that.canSubmit,_that.title,_that.content);case _:
  return null;

}
}

}

/// @nodoc


class _IntroduceEditState extends IntroduceEditState {
  const _IntroduceEditState({this.canSubmit = false, this.title = null, this.content = null}): super._();
  

@override@JsonKey() final  bool canSubmit;
@override@JsonKey() final  String? title;
@override@JsonKey() final  String? content;

/// Create a copy of IntroduceEditState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceEditStateCopyWith<_IntroduceEditState> get copyWith => __$IntroduceEditStateCopyWithImpl<_IntroduceEditState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceEditState&&(identical(other.canSubmit, canSubmit) || other.canSubmit == canSubmit)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,canSubmit,title,content);

@override
String toString() {
  return 'IntroduceEditState(canSubmit: $canSubmit, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$IntroduceEditStateCopyWith<$Res> implements $IntroduceEditStateCopyWith<$Res> {
  factory _$IntroduceEditStateCopyWith(_IntroduceEditState value, $Res Function(_IntroduceEditState) _then) = __$IntroduceEditStateCopyWithImpl;
@override @useResult
$Res call({
 bool canSubmit, String? title, String? content
});




}
/// @nodoc
class __$IntroduceEditStateCopyWithImpl<$Res>
    implements _$IntroduceEditStateCopyWith<$Res> {
  __$IntroduceEditStateCopyWithImpl(this._self, this._then);

  final _IntroduceEditState _self;
  final $Res Function(_IntroduceEditState) _then;

/// Create a copy of IntroduceEditState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? canSubmit = null,Object? title = freezed,Object? content = freezed,}) {
  return _then(_IntroduceEditState(
canSubmit: null == canSubmit ? _self.canSubmit : canSubmit // ignore: cast_nullable_to_non_nullable
as bool,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
