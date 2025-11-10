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

 IntroduceData get introduceList; bool get isLoaded; IntroduceListErrorType? get error;
/// Create a copy of IntroduceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceStateCopyWith<IntroduceState> get copyWith => _$IntroduceStateCopyWithImpl<IntroduceState>(this as IntroduceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceState&&(identical(other.introduceList, introduceList) || other.introduceList == introduceList)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,introduceList,isLoaded,error);

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
 IntroduceData introduceList, bool isLoaded, IntroduceListErrorType? error
});


$IntroduceDataCopyWith<$Res> get introduceList;

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
as IntroduceData,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as IntroduceListErrorType?,
  ));
}
/// Create a copy of IntroduceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntroduceDataCopyWith<$Res> get introduceList {
  
  return $IntroduceDataCopyWith<$Res>(_self.introduceList, (value) {
    return _then(_self.copyWith(introduceList: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IntroduceData introduceList,  bool isLoaded,  IntroduceListErrorType? error)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IntroduceData introduceList,  bool isLoaded,  IntroduceListErrorType? error)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IntroduceData introduceList,  bool isLoaded,  IntroduceListErrorType? error)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceState() when $default != null:
return $default(_that.introduceList,_that.isLoaded,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _IntroduceState extends IntroduceState {
  const _IntroduceState({this.introduceList = const IntroduceData(), this.isLoaded = false, this.error}): super._();
  

@override@JsonKey() final  IntroduceData introduceList;
@override@JsonKey() final  bool isLoaded;
@override final  IntroduceListErrorType? error;

/// Create a copy of IntroduceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceStateCopyWith<_IntroduceState> get copyWith => __$IntroduceStateCopyWithImpl<_IntroduceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceState&&(identical(other.introduceList, introduceList) || other.introduceList == introduceList)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,introduceList,isLoaded,error);

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
 IntroduceData introduceList, bool isLoaded, IntroduceListErrorType? error
});


@override $IntroduceDataCopyWith<$Res> get introduceList;

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
introduceList: null == introduceList ? _self.introduceList : introduceList // ignore: cast_nullable_to_non_nullable
as IntroduceData,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as IntroduceListErrorType?,
  ));
}

/// Create a copy of IntroduceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntroduceDataCopyWith<$Res> get introduceList {
  
  return $IntroduceDataCopyWith<$Res>(_self.introduceList, (value) {
    return _then(_self.copyWith(introduceList: value));
  });
}
}

/// @nodoc
mixin _$IntroduceData {

 List<IntroduceItem> get introduceList;
/// Create a copy of IntroduceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceDataCopyWith<IntroduceData> get copyWith => _$IntroduceDataCopyWithImpl<IntroduceData>(this as IntroduceData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceData&&const DeepCollectionEquality().equals(other.introduceList, introduceList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(introduceList));

@override
String toString() {
  return 'IntroduceData(introduceList: $introduceList)';
}


}

/// @nodoc
abstract mixin class $IntroduceDataCopyWith<$Res>  {
  factory $IntroduceDataCopyWith(IntroduceData value, $Res Function(IntroduceData) _then) = _$IntroduceDataCopyWithImpl;
@useResult
$Res call({
 List<IntroduceItem> introduceList
});




}
/// @nodoc
class _$IntroduceDataCopyWithImpl<$Res>
    implements $IntroduceDataCopyWith<$Res> {
  _$IntroduceDataCopyWithImpl(this._self, this._then);

  final IntroduceData _self;
  final $Res Function(IntroduceData) _then;

/// Create a copy of IntroduceData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? introduceList = null,}) {
  return _then(_self.copyWith(
introduceList: null == introduceList ? _self.introduceList : introduceList // ignore: cast_nullable_to_non_nullable
as List<IntroduceItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroduceData].
extension IntroduceDataPatterns on IntroduceData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceData value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceData value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<IntroduceItem> introduceList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceData() when $default != null:
return $default(_that.introduceList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<IntroduceItem> introduceList)  $default,) {final _that = this;
switch (_that) {
case _IntroduceData():
return $default(_that.introduceList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<IntroduceItem> introduceList)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceData() when $default != null:
return $default(_that.introduceList);case _:
  return null;

}
}

}

/// @nodoc


class _IntroduceData implements IntroduceData {
  const _IntroduceData({final  List<IntroduceItem> introduceList = const []}): _introduceList = introduceList;
  

 final  List<IntroduceItem> _introduceList;
@override@JsonKey() List<IntroduceItem> get introduceList {
  if (_introduceList is EqualUnmodifiableListView) return _introduceList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_introduceList);
}


/// Create a copy of IntroduceData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceDataCopyWith<_IntroduceData> get copyWith => __$IntroduceDataCopyWithImpl<_IntroduceData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceData&&const DeepCollectionEquality().equals(other._introduceList, _introduceList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_introduceList));

@override
String toString() {
  return 'IntroduceData(introduceList: $introduceList)';
}


}

/// @nodoc
abstract mixin class _$IntroduceDataCopyWith<$Res> implements $IntroduceDataCopyWith<$Res> {
  factory _$IntroduceDataCopyWith(_IntroduceData value, $Res Function(_IntroduceData) _then) = __$IntroduceDataCopyWithImpl;
@override @useResult
$Res call({
 List<IntroduceItem> introduceList
});




}
/// @nodoc
class __$IntroduceDataCopyWithImpl<$Res>
    implements _$IntroduceDataCopyWith<$Res> {
  __$IntroduceDataCopyWithImpl(this._self, this._then);

  final _IntroduceData _self;
  final $Res Function(_IntroduceData) _then;

/// Create a copy of IntroduceData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? introduceList = null,}) {
  return _then(_IntroduceData(
introduceList: null == introduceList ? _self._introduceList : introduceList // ignore: cast_nullable_to_non_nullable
as List<IntroduceItem>,
  ));
}


}

// dart format on
