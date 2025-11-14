// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduce_add_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroduceAddState {

 bool get canSubmit; String? get title; String? get content;
/// Create a copy of IntroduceAddState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceAddStateCopyWith<IntroduceAddState> get copyWith => _$IntroduceAddStateCopyWithImpl<IntroduceAddState>(this as IntroduceAddState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceAddState&&(identical(other.canSubmit, canSubmit) || other.canSubmit == canSubmit)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,canSubmit,title,content);

@override
String toString() {
  return 'IntroduceAddState(canSubmit: $canSubmit, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class $IntroduceAddStateCopyWith<$Res>  {
  factory $IntroduceAddStateCopyWith(IntroduceAddState value, $Res Function(IntroduceAddState) _then) = _$IntroduceAddStateCopyWithImpl;
@useResult
$Res call({
 bool canSubmit, String? title, String? content
});




}
/// @nodoc
class _$IntroduceAddStateCopyWithImpl<$Res>
    implements $IntroduceAddStateCopyWith<$Res> {
  _$IntroduceAddStateCopyWithImpl(this._self, this._then);

  final IntroduceAddState _self;
  final $Res Function(IntroduceAddState) _then;

/// Create a copy of IntroduceAddState
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


/// Adds pattern-matching-related methods to [IntroduceAddState].
extension IntroduceAddStatePatterns on IntroduceAddState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceAddState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceAddState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceAddState value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceAddState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceAddState value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceAddState() when $default != null:
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
case _IntroduceAddState() when $default != null:
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
case _IntroduceAddState():
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
case _IntroduceAddState() when $default != null:
return $default(_that.canSubmit,_that.title,_that.content);case _:
  return null;

}
}

}

/// @nodoc


class _IntroduceAddState extends IntroduceAddState {
  const _IntroduceAddState({this.canSubmit = false, this.title = null, this.content = null}): super._();
  

@override@JsonKey() final  bool canSubmit;
@override@JsonKey() final  String? title;
@override@JsonKey() final  String? content;

/// Create a copy of IntroduceAddState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceAddStateCopyWith<_IntroduceAddState> get copyWith => __$IntroduceAddStateCopyWithImpl<_IntroduceAddState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceAddState&&(identical(other.canSubmit, canSubmit) || other.canSubmit == canSubmit)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,canSubmit,title,content);

@override
String toString() {
  return 'IntroduceAddState(canSubmit: $canSubmit, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$IntroduceAddStateCopyWith<$Res> implements $IntroduceAddStateCopyWith<$Res> {
  factory _$IntroduceAddStateCopyWith(_IntroduceAddState value, $Res Function(_IntroduceAddState) _then) = __$IntroduceAddStateCopyWithImpl;
@override @useResult
$Res call({
 bool canSubmit, String? title, String? content
});




}
/// @nodoc
class __$IntroduceAddStateCopyWithImpl<$Res>
    implements _$IntroduceAddStateCopyWith<$Res> {
  __$IntroduceAddStateCopyWithImpl(this._self, this._then);

  final _IntroduceAddState _self;
  final $Res Function(_IntroduceAddState) _then;

/// Create a copy of IntroduceAddState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? canSubmit = null,Object? title = freezed,Object? content = freezed,}) {
  return _then(_IntroduceAddState(
canSubmit: null == canSubmit ? _self.canSubmit : canSubmit // ignore: cast_nullable_to_non_nullable
as bool,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
