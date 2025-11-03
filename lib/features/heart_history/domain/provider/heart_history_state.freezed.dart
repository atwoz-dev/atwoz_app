// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HeartHistoryState {

 HeartHistoryData get history; bool get isLoaded; HeartHistoryErrorType? get error;
/// Create a copy of HeartHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeartHistoryStateCopyWith<HeartHistoryState> get copyWith => _$HeartHistoryStateCopyWithImpl<HeartHistoryState>(this as HeartHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeartHistoryState&&(identical(other.history, history) || other.history == history)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,history,isLoaded,error);

@override
String toString() {
  return 'HeartHistoryState(history: $history, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class $HeartHistoryStateCopyWith<$Res>  {
  factory $HeartHistoryStateCopyWith(HeartHistoryState value, $Res Function(HeartHistoryState) _then) = _$HeartHistoryStateCopyWithImpl;
@useResult
$Res call({
 HeartHistoryData history, bool isLoaded, HeartHistoryErrorType? error
});


$HeartHistoryDataCopyWith<$Res> get history;

}
/// @nodoc
class _$HeartHistoryStateCopyWithImpl<$Res>
    implements $HeartHistoryStateCopyWith<$Res> {
  _$HeartHistoryStateCopyWithImpl(this._self, this._then);

  final HeartHistoryState _self;
  final $Res Function(HeartHistoryState) _then;

/// Create a copy of HeartHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? history = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as HeartHistoryData,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as HeartHistoryErrorType?,
  ));
}
/// Create a copy of HeartHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeartHistoryDataCopyWith<$Res> get history {
  
  return $HeartHistoryDataCopyWith<$Res>(_self.history, (value) {
    return _then(_self.copyWith(history: value));
  });
}
}


/// Adds pattern-matching-related methods to [HeartHistoryState].
extension HeartHistoryStatePatterns on HeartHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeartHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeartHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeartHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _HeartHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeartHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _HeartHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HeartHistoryData history,  bool isLoaded,  HeartHistoryErrorType? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeartHistoryState() when $default != null:
return $default(_that.history,_that.isLoaded,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HeartHistoryData history,  bool isLoaded,  HeartHistoryErrorType? error)  $default,) {final _that = this;
switch (_that) {
case _HeartHistoryState():
return $default(_that.history,_that.isLoaded,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HeartHistoryData history,  bool isLoaded,  HeartHistoryErrorType? error)?  $default,) {final _that = this;
switch (_that) {
case _HeartHistoryState() when $default != null:
return $default(_that.history,_that.isLoaded,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _HeartHistoryState extends HeartHistoryState {
  const _HeartHistoryState({this.history = const HeartHistoryData(), this.isLoaded = false, this.error}): super._();
  

@override@JsonKey() final  HeartHistoryData history;
@override@JsonKey() final  bool isLoaded;
@override final  HeartHistoryErrorType? error;

/// Create a copy of HeartHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeartHistoryStateCopyWith<_HeartHistoryState> get copyWith => __$HeartHistoryStateCopyWithImpl<_HeartHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeartHistoryState&&(identical(other.history, history) || other.history == history)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,history,isLoaded,error);

@override
String toString() {
  return 'HeartHistoryState(history: $history, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class _$HeartHistoryStateCopyWith<$Res> implements $HeartHistoryStateCopyWith<$Res> {
  factory _$HeartHistoryStateCopyWith(_HeartHistoryState value, $Res Function(_HeartHistoryState) _then) = __$HeartHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 HeartHistoryData history, bool isLoaded, HeartHistoryErrorType? error
});


@override $HeartHistoryDataCopyWith<$Res> get history;

}
/// @nodoc
class __$HeartHistoryStateCopyWithImpl<$Res>
    implements _$HeartHistoryStateCopyWith<$Res> {
  __$HeartHistoryStateCopyWithImpl(this._self, this._then);

  final _HeartHistoryState _self;
  final $Res Function(_HeartHistoryState) _then;

/// Create a copy of HeartHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? history = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_HeartHistoryState(
history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as HeartHistoryData,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as HeartHistoryErrorType?,
  ));
}

/// Create a copy of HeartHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeartHistoryDataCopyWith<$Res> get history {
  
  return $HeartHistoryDataCopyWith<$Res>(_self.history, (value) {
    return _then(_self.copyWith(history: value));
  });
}
}

// dart format on
