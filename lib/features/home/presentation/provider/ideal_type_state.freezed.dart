// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ideal_type_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IdealTypeState {

 IdealType get idealType; IdealType get originalIdealType; bool get isFilterPossible;
/// Create a copy of IdealTypeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdealTypeStateCopyWith<IdealTypeState> get copyWith => _$IdealTypeStateCopyWithImpl<IdealTypeState>(this as IdealTypeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IdealTypeState&&(identical(other.idealType, idealType) || other.idealType == idealType)&&(identical(other.originalIdealType, originalIdealType) || other.originalIdealType == originalIdealType)&&(identical(other.isFilterPossible, isFilterPossible) || other.isFilterPossible == isFilterPossible));
}


@override
int get hashCode => Object.hash(runtimeType,idealType,originalIdealType,isFilterPossible);

@override
String toString() {
  return 'IdealTypeState(idealType: $idealType, originalIdealType: $originalIdealType, isFilterPossible: $isFilterPossible)';
}


}

/// @nodoc
abstract mixin class $IdealTypeStateCopyWith<$Res>  {
  factory $IdealTypeStateCopyWith(IdealTypeState value, $Res Function(IdealTypeState) _then) = _$IdealTypeStateCopyWithImpl;
@useResult
$Res call({
 IdealType idealType, IdealType originalIdealType, bool isFilterPossible
});


$IdealTypeCopyWith<$Res> get idealType;$IdealTypeCopyWith<$Res> get originalIdealType;

}
/// @nodoc
class _$IdealTypeStateCopyWithImpl<$Res>
    implements $IdealTypeStateCopyWith<$Res> {
  _$IdealTypeStateCopyWithImpl(this._self, this._then);

  final IdealTypeState _self;
  final $Res Function(IdealTypeState) _then;

/// Create a copy of IdealTypeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idealType = null,Object? originalIdealType = null,Object? isFilterPossible = null,}) {
  return _then(_self.copyWith(
idealType: null == idealType ? _self.idealType : idealType // ignore: cast_nullable_to_non_nullable
as IdealType,originalIdealType: null == originalIdealType ? _self.originalIdealType : originalIdealType // ignore: cast_nullable_to_non_nullable
as IdealType,isFilterPossible: null == isFilterPossible ? _self.isFilterPossible : isFilterPossible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of IdealTypeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdealTypeCopyWith<$Res> get idealType {
  
  return $IdealTypeCopyWith<$Res>(_self.idealType, (value) {
    return _then(_self.copyWith(idealType: value));
  });
}/// Create a copy of IdealTypeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdealTypeCopyWith<$Res> get originalIdealType {
  
  return $IdealTypeCopyWith<$Res>(_self.originalIdealType, (value) {
    return _then(_self.copyWith(originalIdealType: value));
  });
}
}


/// Adds pattern-matching-related methods to [IdealTypeState].
extension IdealTypeStatePatterns on IdealTypeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IdealTypeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IdealTypeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IdealTypeState value)  $default,){
final _that = this;
switch (_that) {
case _IdealTypeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IdealTypeState value)?  $default,){
final _that = this;
switch (_that) {
case _IdealTypeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IdealType idealType,  IdealType originalIdealType,  bool isFilterPossible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IdealTypeState() when $default != null:
return $default(_that.idealType,_that.originalIdealType,_that.isFilterPossible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IdealType idealType,  IdealType originalIdealType,  bool isFilterPossible)  $default,) {final _that = this;
switch (_that) {
case _IdealTypeState():
return $default(_that.idealType,_that.originalIdealType,_that.isFilterPossible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IdealType idealType,  IdealType originalIdealType,  bool isFilterPossible)?  $default,) {final _that = this;
switch (_that) {
case _IdealTypeState() when $default != null:
return $default(_that.idealType,_that.originalIdealType,_that.isFilterPossible);case _:
  return null;

}
}

}

/// @nodoc


class _IdealTypeState implements IdealTypeState {
  const _IdealTypeState({required this.idealType, required this.originalIdealType, required this.isFilterPossible});
  

@override final  IdealType idealType;
@override final  IdealType originalIdealType;
@override final  bool isFilterPossible;

/// Create a copy of IdealTypeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdealTypeStateCopyWith<_IdealTypeState> get copyWith => __$IdealTypeStateCopyWithImpl<_IdealTypeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IdealTypeState&&(identical(other.idealType, idealType) || other.idealType == idealType)&&(identical(other.originalIdealType, originalIdealType) || other.originalIdealType == originalIdealType)&&(identical(other.isFilterPossible, isFilterPossible) || other.isFilterPossible == isFilterPossible));
}


@override
int get hashCode => Object.hash(runtimeType,idealType,originalIdealType,isFilterPossible);

@override
String toString() {
  return 'IdealTypeState(idealType: $idealType, originalIdealType: $originalIdealType, isFilterPossible: $isFilterPossible)';
}


}

/// @nodoc
abstract mixin class _$IdealTypeStateCopyWith<$Res> implements $IdealTypeStateCopyWith<$Res> {
  factory _$IdealTypeStateCopyWith(_IdealTypeState value, $Res Function(_IdealTypeState) _then) = __$IdealTypeStateCopyWithImpl;
@override @useResult
$Res call({
 IdealType idealType, IdealType originalIdealType, bool isFilterPossible
});


@override $IdealTypeCopyWith<$Res> get idealType;@override $IdealTypeCopyWith<$Res> get originalIdealType;

}
/// @nodoc
class __$IdealTypeStateCopyWithImpl<$Res>
    implements _$IdealTypeStateCopyWith<$Res> {
  __$IdealTypeStateCopyWithImpl(this._self, this._then);

  final _IdealTypeState _self;
  final $Res Function(_IdealTypeState) _then;

/// Create a copy of IdealTypeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idealType = null,Object? originalIdealType = null,Object? isFilterPossible = null,}) {
  return _then(_IdealTypeState(
idealType: null == idealType ? _self.idealType : idealType // ignore: cast_nullable_to_non_nullable
as IdealType,originalIdealType: null == originalIdealType ? _self.originalIdealType : originalIdealType // ignore: cast_nullable_to_non_nullable
as IdealType,isFilterPossible: null == isFilterPossible ? _self.isFilterPossible : isFilterPossible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of IdealTypeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdealTypeCopyWith<$Res> get idealType {
  
  return $IdealTypeCopyWith<$Res>(_self.idealType, (value) {
    return _then(_self.copyWith(idealType: value));
  });
}/// Create a copy of IdealTypeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdealTypeCopyWith<$Res> get originalIdealType {
  
  return $IdealTypeCopyWith<$Res>(_self.originalIdealType, (value) {
    return _then(_self.copyWith(originalIdealType: value));
  });
}
}

// dart format on
