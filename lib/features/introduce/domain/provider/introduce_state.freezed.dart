// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduce_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroduceState {

 List<IntroduceItem> get introduceList; bool get isLoaded; IntroduceListErrorType? get error;
/// Create a copy of IntroduceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceStateCopyWith<IntroduceState> get copyWith => _$IntroduceStateCopyWithImpl<IntroduceState>(this as IntroduceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceState&&const DeepCollectionEquality().equals(other.introduceList, introduceList)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(introduceList),isLoaded,error);

@override
String toString() {
  return 'IntroduceState(introduceList: $introduceList, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class $IntroduceStateCopyWith<$Res>  {
  factory $IntroduceStateCopyWith(IntroduceState value, $Res Function(IntroduceState) _then) = _$IntroduceStateCopyWithImpl;
@useResult
$Res call({
 List<IntroduceItem> introduceList, bool isLoaded, IntroduceListErrorType? error
});




}
/// @nodoc
class _$IntroduceStateCopyWithImpl<$Res>
    implements $IntroduceStateCopyWith<$Res> {
  _$IntroduceStateCopyWithImpl(this._self, this._then);

  final IntroduceState _self;
  final $Res Function(IntroduceState) _then;

/// Create a copy of IntroduceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? introduceList = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
introduceList: null == introduceList ? _self.introduceList : introduceList // ignore: cast_nullable_to_non_nullable
as List<IntroduceItem>,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as IntroduceListErrorType?,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroduceState].
extension IntroduceStatePatterns on IntroduceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceState value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceState value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<IntroduceItem> introduceList,  bool isLoaded,  IntroduceListErrorType? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceState() when $default != null:
return $default(_that.introduceList,_that.isLoaded,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<IntroduceItem> introduceList,  bool isLoaded,  IntroduceListErrorType? error)  $default,) {final _that = this;
switch (_that) {
case _IntroduceState():
return $default(_that.introduceList,_that.isLoaded,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<IntroduceItem> introduceList,  bool isLoaded,  IntroduceListErrorType? error)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceState() when $default != null:
return $default(_that.introduceList,_that.isLoaded,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _IntroduceState extends IntroduceState {
  const _IntroduceState({final  List<IntroduceItem> introduceList = const [], this.isLoaded = false, this.error}): _introduceList = introduceList,super._();
  

 final  List<IntroduceItem> _introduceList;
@override@JsonKey() List<IntroduceItem> get introduceList {
  if (_introduceList is EqualUnmodifiableListView) return _introduceList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_introduceList);
}

@override@JsonKey() final  bool isLoaded;
@override final  IntroduceListErrorType? error;

/// Create a copy of IntroduceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceStateCopyWith<_IntroduceState> get copyWith => __$IntroduceStateCopyWithImpl<_IntroduceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceState&&const DeepCollectionEquality().equals(other._introduceList, _introduceList)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_introduceList),isLoaded,error);

@override
String toString() {
  return 'IntroduceState(introduceList: $introduceList, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class _$IntroduceStateCopyWith<$Res> implements $IntroduceStateCopyWith<$Res> {
  factory _$IntroduceStateCopyWith(_IntroduceState value, $Res Function(_IntroduceState) _then) = __$IntroduceStateCopyWithImpl;
@override @useResult
$Res call({
 List<IntroduceItem> introduceList, bool isLoaded, IntroduceListErrorType? error
});




}
/// @nodoc
class __$IntroduceStateCopyWithImpl<$Res>
    implements _$IntroduceStateCopyWith<$Res> {
  __$IntroduceStateCopyWithImpl(this._self, this._then);

  final _IntroduceState _self;
  final $Res Function(_IntroduceState) _then;

/// Create a copy of IntroduceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? introduceList = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_IntroduceState(
introduceList: null == introduceList ? _self._introduceList : introduceList // ignore: cast_nullable_to_non_nullable
as List<IntroduceItem>,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as IntroduceListErrorType?,
  ));
}


}

// dart format on
