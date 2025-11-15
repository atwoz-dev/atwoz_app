// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduce_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroduceInfo {

 List<String> get preferredCities; int get fromAge; int get toAge; String get gender; int get lastId;
/// Create a copy of IntroduceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceInfoCopyWith<IntroduceInfo> get copyWith => _$IntroduceInfoCopyWithImpl<IntroduceInfo>(this as IntroduceInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceInfo&&const DeepCollectionEquality().equals(other.preferredCities, preferredCities)&&(identical(other.fromAge, fromAge) || other.fromAge == fromAge)&&(identical(other.toAge, toAge) || other.toAge == toAge)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.lastId, lastId) || other.lastId == lastId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(preferredCities),fromAge,toAge,gender,lastId);

@override
String toString() {
  return 'IntroduceInfo(preferredCities: $preferredCities, fromAge: $fromAge, toAge: $toAge, gender: $gender, lastId: $lastId)';
}


}

/// @nodoc
abstract mixin class $IntroduceInfoCopyWith<$Res>  {
  factory $IntroduceInfoCopyWith(IntroduceInfo value, $Res Function(IntroduceInfo) _then) = _$IntroduceInfoCopyWithImpl;
@useResult
$Res call({
 List<String> preferredCities, int fromAge, int toAge, String gender, int lastId
});




}
/// @nodoc
class _$IntroduceInfoCopyWithImpl<$Res>
    implements $IntroduceInfoCopyWith<$Res> {
  _$IntroduceInfoCopyWithImpl(this._self, this._then);

  final IntroduceInfo _self;
  final $Res Function(IntroduceInfo) _then;

/// Create a copy of IntroduceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? preferredCities = null,Object? fromAge = null,Object? toAge = null,Object? gender = null,Object? lastId = null,}) {
  return _then(_self.copyWith(
preferredCities: null == preferredCities ? _self.preferredCities : preferredCities // ignore: cast_nullable_to_non_nullable
as List<String>,fromAge: null == fromAge ? _self.fromAge : fromAge // ignore: cast_nullable_to_non_nullable
as int,toAge: null == toAge ? _self.toAge : toAge // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,lastId: null == lastId ? _self.lastId : lastId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroduceInfo].
extension IntroduceInfoPatterns on IntroduceInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceInfo value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceInfo value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> preferredCities,  int fromAge,  int toAge,  String gender,  int lastId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceInfo() when $default != null:
return $default(_that.preferredCities,_that.fromAge,_that.toAge,_that.gender,_that.lastId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> preferredCities,  int fromAge,  int toAge,  String gender,  int lastId)  $default,) {final _that = this;
switch (_that) {
case _IntroduceInfo():
return $default(_that.preferredCities,_that.fromAge,_that.toAge,_that.gender,_that.lastId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> preferredCities,  int fromAge,  int toAge,  String gender,  int lastId)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceInfo() when $default != null:
return $default(_that.preferredCities,_that.fromAge,_that.toAge,_that.gender,_that.lastId);case _:
  return null;

}
}

}

/// @nodoc


class _IntroduceInfo implements IntroduceInfo {
  const _IntroduceInfo({required final  List<String> preferredCities, required this.fromAge, required this.toAge, required this.gender, required this.lastId}): _preferredCities = preferredCities;
  

 final  List<String> _preferredCities;
@override List<String> get preferredCities {
  if (_preferredCities is EqualUnmodifiableListView) return _preferredCities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_preferredCities);
}

@override final  int fromAge;
@override final  int toAge;
@override final  String gender;
@override final  int lastId;

/// Create a copy of IntroduceInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceInfoCopyWith<_IntroduceInfo> get copyWith => __$IntroduceInfoCopyWithImpl<_IntroduceInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceInfo&&const DeepCollectionEquality().equals(other._preferredCities, _preferredCities)&&(identical(other.fromAge, fromAge) || other.fromAge == fromAge)&&(identical(other.toAge, toAge) || other.toAge == toAge)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.lastId, lastId) || other.lastId == lastId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_preferredCities),fromAge,toAge,gender,lastId);

@override
String toString() {
  return 'IntroduceInfo(preferredCities: $preferredCities, fromAge: $fromAge, toAge: $toAge, gender: $gender, lastId: $lastId)';
}


}

/// @nodoc
abstract mixin class _$IntroduceInfoCopyWith<$Res> implements $IntroduceInfoCopyWith<$Res> {
  factory _$IntroduceInfoCopyWith(_IntroduceInfo value, $Res Function(_IntroduceInfo) _then) = __$IntroduceInfoCopyWithImpl;
@override @useResult
$Res call({
 List<String> preferredCities, int fromAge, int toAge, String gender, int lastId
});




}
/// @nodoc
class __$IntroduceInfoCopyWithImpl<$Res>
    implements _$IntroduceInfoCopyWith<$Res> {
  __$IntroduceInfoCopyWithImpl(this._self, this._then);

  final _IntroduceInfo _self;
  final $Res Function(_IntroduceInfo) _then;

/// Create a copy of IntroduceInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? preferredCities = null,Object? fromAge = null,Object? toAge = null,Object? gender = null,Object? lastId = null,}) {
  return _then(_IntroduceInfo(
preferredCities: null == preferredCities ? _self._preferredCities : preferredCities // ignore: cast_nullable_to_non_nullable
as List<String>,fromAge: null == fromAge ? _self.fromAge : fromAge // ignore: cast_nullable_to_non_nullable
as int,toAge: null == toAge ? _self.toAge : toAge // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,lastId: null == lastId ? _self.lastId : lastId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
