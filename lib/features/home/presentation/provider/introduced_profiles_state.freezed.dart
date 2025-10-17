// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduced_profiles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroducedProfilesState {

 List<IntroducedProfile> get profiles; bool get isLoading;
/// Create a copy of IntroducedProfilesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroducedProfilesStateCopyWith<IntroducedProfilesState> get copyWith => _$IntroducedProfilesStateCopyWithImpl<IntroducedProfilesState>(this as IntroducedProfilesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroducedProfilesState&&const DeepCollectionEquality().equals(other.profiles, profiles)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(profiles),isLoading);

@override
String toString() {
  return 'IntroducedProfilesState(profiles: $profiles, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $IntroducedProfilesStateCopyWith<$Res>  {
  factory $IntroducedProfilesStateCopyWith(IntroducedProfilesState value, $Res Function(IntroducedProfilesState) _then) = _$IntroducedProfilesStateCopyWithImpl;
@useResult
$Res call({
 List<IntroducedProfile> profiles, bool isLoading
});




}
/// @nodoc
class _$IntroducedProfilesStateCopyWithImpl<$Res>
    implements $IntroducedProfilesStateCopyWith<$Res> {
  _$IntroducedProfilesStateCopyWithImpl(this._self, this._then);

  final IntroducedProfilesState _self;
  final $Res Function(IntroducedProfilesState) _then;

/// Create a copy of IntroducedProfilesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profiles = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
profiles: null == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<IntroducedProfile>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroducedProfilesState].
extension IntroducedProfilesStatePatterns on IntroducedProfilesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryProfilesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryProfilesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryProfilesState value)  $default,){
final _that = this;
switch (_that) {
case _CategoryProfilesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryProfilesState value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryProfilesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<IntroducedProfile> profiles,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryProfilesState() when $default != null:
return $default(_that.profiles,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<IntroducedProfile> profiles,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _CategoryProfilesState():
return $default(_that.profiles,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<IntroducedProfile> profiles,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _CategoryProfilesState() when $default != null:
return $default(_that.profiles,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryProfilesState implements IntroducedProfilesState {
  const _CategoryProfilesState({final  List<IntroducedProfile> profiles = const [], this.isLoading = false}): _profiles = profiles;
  

 final  List<IntroducedProfile> _profiles;
@override@JsonKey() List<IntroducedProfile> get profiles {
  if (_profiles is EqualUnmodifiableListView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profiles);
}

@override@JsonKey() final  bool isLoading;

/// Create a copy of IntroducedProfilesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryProfilesStateCopyWith<_CategoryProfilesState> get copyWith => __$CategoryProfilesStateCopyWithImpl<_CategoryProfilesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryProfilesState&&const DeepCollectionEquality().equals(other._profiles, _profiles)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_profiles),isLoading);

@override
String toString() {
  return 'IntroducedProfilesState(profiles: $profiles, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$CategoryProfilesStateCopyWith<$Res> implements $IntroducedProfilesStateCopyWith<$Res> {
  factory _$CategoryProfilesStateCopyWith(_CategoryProfilesState value, $Res Function(_CategoryProfilesState) _then) = __$CategoryProfilesStateCopyWithImpl;
@override @useResult
$Res call({
 List<IntroducedProfile> profiles, bool isLoading
});




}
/// @nodoc
class __$CategoryProfilesStateCopyWithImpl<$Res>
    implements _$CategoryProfilesStateCopyWith<$Res> {
  __$CategoryProfilesStateCopyWithImpl(this._self, this._then);

  final _CategoryProfilesState _self;
  final $Res Function(_CategoryProfilesState) _then;

/// Create a copy of IntroducedProfilesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profiles = null,Object? isLoading = null,}) {
  return _then(_CategoryProfilesState(
profiles: null == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<IntroducedProfile>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
