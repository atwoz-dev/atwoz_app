// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ideal_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IdealType {

 int get minAge; int get maxAge; List<Hobby> get hobbies; List<CityAddressItem> get cities; ExtendedSmokingStatus get smokingStatus; ExtendedDrinkingStatus get drinkingStatus; ExtendedReligionStatus get religion;
/// Create a copy of IdealType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdealTypeCopyWith<IdealType> get copyWith => _$IdealTypeCopyWithImpl<IdealType>(this as IdealType, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IdealType&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&const DeepCollectionEquality().equals(other.hobbies, hobbies)&&const DeepCollectionEquality().equals(other.cities, cities)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.religion, religion) || other.religion == religion));
}


@override
int get hashCode => Object.hash(runtimeType,minAge,maxAge,const DeepCollectionEquality().hash(hobbies),const DeepCollectionEquality().hash(cities),smokingStatus,drinkingStatus,religion);

@override
String toString() {
  return 'IdealType(minAge: $minAge, maxAge: $maxAge, hobbies: $hobbies, cities: $cities, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, religion: $religion)';
}


}

/// @nodoc
abstract mixin class $IdealTypeCopyWith<$Res>  {
  factory $IdealTypeCopyWith(IdealType value, $Res Function(IdealType) _then) = _$IdealTypeCopyWithImpl;
@useResult
$Res call({
 int minAge, int maxAge, List<Hobby> hobbies, List<CityAddressItem> cities, ExtendedSmokingStatus smokingStatus, ExtendedDrinkingStatus drinkingStatus, ExtendedReligionStatus religion
});


$ExtendedHomeEnumCopyWith<SmokingStatus, $Res> get smokingStatus;$ExtendedHomeEnumCopyWith<DrinkingStatus, $Res> get drinkingStatus;$ExtendedHomeEnumCopyWith<Religion, $Res> get religion;

}
/// @nodoc
class _$IdealTypeCopyWithImpl<$Res>
    implements $IdealTypeCopyWith<$Res> {
  _$IdealTypeCopyWithImpl(this._self, this._then);

  final IdealType _self;
  final $Res Function(IdealType) _then;

/// Create a copy of IdealType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minAge = null,Object? maxAge = null,Object? hobbies = null,Object? cities = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? religion = null,}) {
  return _then(_self.copyWith(
minAge: null == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int,maxAge: null == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int,hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<Hobby>,cities: null == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as List<CityAddressItem>,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as ExtendedSmokingStatus,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as ExtendedDrinkingStatus,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as ExtendedReligionStatus,
  ));
}
/// Create a copy of IdealType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtendedHomeEnumCopyWith<SmokingStatus, $Res> get smokingStatus {
  
  return $ExtendedHomeEnumCopyWith<SmokingStatus, $Res>(_self.smokingStatus, (value) {
    return _then(_self.copyWith(smokingStatus: value));
  });
}/// Create a copy of IdealType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtendedHomeEnumCopyWith<DrinkingStatus, $Res> get drinkingStatus {
  
  return $ExtendedHomeEnumCopyWith<DrinkingStatus, $Res>(_self.drinkingStatus, (value) {
    return _then(_self.copyWith(drinkingStatus: value));
  });
}/// Create a copy of IdealType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtendedHomeEnumCopyWith<Religion, $Res> get religion {
  
  return $ExtendedHomeEnumCopyWith<Religion, $Res>(_self.religion, (value) {
    return _then(_self.copyWith(religion: value));
  });
}
}


/// Adds pattern-matching-related methods to [IdealType].
extension IdealTypePatterns on IdealType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IdealType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IdealType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IdealType value)  $default,){
final _that = this;
switch (_that) {
case _IdealType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IdealType value)?  $default,){
final _that = this;
switch (_that) {
case _IdealType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int minAge,  int maxAge,  List<Hobby> hobbies,  List<CityAddressItem> cities,  ExtendedSmokingStatus smokingStatus,  ExtendedDrinkingStatus drinkingStatus,  ExtendedReligionStatus religion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IdealType() when $default != null:
return $default(_that.minAge,_that.maxAge,_that.hobbies,_that.cities,_that.smokingStatus,_that.drinkingStatus,_that.religion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int minAge,  int maxAge,  List<Hobby> hobbies,  List<CityAddressItem> cities,  ExtendedSmokingStatus smokingStatus,  ExtendedDrinkingStatus drinkingStatus,  ExtendedReligionStatus religion)  $default,) {final _that = this;
switch (_that) {
case _IdealType():
return $default(_that.minAge,_that.maxAge,_that.hobbies,_that.cities,_that.smokingStatus,_that.drinkingStatus,_that.religion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int minAge,  int maxAge,  List<Hobby> hobbies,  List<CityAddressItem> cities,  ExtendedSmokingStatus smokingStatus,  ExtendedDrinkingStatus drinkingStatus,  ExtendedReligionStatus religion)?  $default,) {final _that = this;
switch (_that) {
case _IdealType() when $default != null:
return $default(_that.minAge,_that.maxAge,_that.hobbies,_that.cities,_that.smokingStatus,_that.drinkingStatus,_that.religion);case _:
  return null;

}
}

}

/// @nodoc


class _IdealType implements IdealType {
  const _IdealType({required this.minAge, required this.maxAge, required final  List<Hobby> hobbies, required final  List<CityAddressItem> cities, required this.smokingStatus, required this.drinkingStatus, required this.religion}): _hobbies = hobbies,_cities = cities;
  

@override final  int minAge;
@override final  int maxAge;
 final  List<Hobby> _hobbies;
@override List<Hobby> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}

 final  List<CityAddressItem> _cities;
@override List<CityAddressItem> get cities {
  if (_cities is EqualUnmodifiableListView) return _cities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cities);
}

@override final  ExtendedSmokingStatus smokingStatus;
@override final  ExtendedDrinkingStatus drinkingStatus;
@override final  ExtendedReligionStatus religion;

/// Create a copy of IdealType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdealTypeCopyWith<_IdealType> get copyWith => __$IdealTypeCopyWithImpl<_IdealType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IdealType&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies)&&const DeepCollectionEquality().equals(other._cities, _cities)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.religion, religion) || other.religion == religion));
}


@override
int get hashCode => Object.hash(runtimeType,minAge,maxAge,const DeepCollectionEquality().hash(_hobbies),const DeepCollectionEquality().hash(_cities),smokingStatus,drinkingStatus,religion);

@override
String toString() {
  return 'IdealType(minAge: $minAge, maxAge: $maxAge, hobbies: $hobbies, cities: $cities, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, religion: $religion)';
}


}

/// @nodoc
abstract mixin class _$IdealTypeCopyWith<$Res> implements $IdealTypeCopyWith<$Res> {
  factory _$IdealTypeCopyWith(_IdealType value, $Res Function(_IdealType) _then) = __$IdealTypeCopyWithImpl;
@override @useResult
$Res call({
 int minAge, int maxAge, List<Hobby> hobbies, List<CityAddressItem> cities, ExtendedSmokingStatus smokingStatus, ExtendedDrinkingStatus drinkingStatus, ExtendedReligionStatus religion
});


@override $ExtendedHomeEnumCopyWith<SmokingStatus, $Res> get smokingStatus;@override $ExtendedHomeEnumCopyWith<DrinkingStatus, $Res> get drinkingStatus;@override $ExtendedHomeEnumCopyWith<Religion, $Res> get religion;

}
/// @nodoc
class __$IdealTypeCopyWithImpl<$Res>
    implements _$IdealTypeCopyWith<$Res> {
  __$IdealTypeCopyWithImpl(this._self, this._then);

  final _IdealType _self;
  final $Res Function(_IdealType) _then;

/// Create a copy of IdealType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minAge = null,Object? maxAge = null,Object? hobbies = null,Object? cities = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? religion = null,}) {
  return _then(_IdealType(
minAge: null == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int,maxAge: null == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int,hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<Hobby>,cities: null == cities ? _self._cities : cities // ignore: cast_nullable_to_non_nullable
as List<CityAddressItem>,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as ExtendedSmokingStatus,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as ExtendedDrinkingStatus,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as ExtendedReligionStatus,
  ));
}

/// Create a copy of IdealType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtendedHomeEnumCopyWith<SmokingStatus, $Res> get smokingStatus {
  
  return $ExtendedHomeEnumCopyWith<SmokingStatus, $Res>(_self.smokingStatus, (value) {
    return _then(_self.copyWith(smokingStatus: value));
  });
}/// Create a copy of IdealType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtendedHomeEnumCopyWith<DrinkingStatus, $Res> get drinkingStatus {
  
  return $ExtendedHomeEnumCopyWith<DrinkingStatus, $Res>(_self.drinkingStatus, (value) {
    return _then(_self.copyWith(drinkingStatus: value));
  });
}/// Create a copy of IdealType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtendedHomeEnumCopyWith<Religion, $Res> get religion {
  
  return $ExtendedHomeEnumCopyWith<Religion, $Res>(_self.religion, (value) {
    return _then(_self.copyWith(religion: value));
  });
}
}

// dart format on
