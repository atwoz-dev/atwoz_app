// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfile {

 int get id; String get name; String get profileUri; int get age; String get mbti; String get address; List<String> get hobbies; List<SelfIntroductionData> get selfIntroductionItems; SmokingStatus get smokingStatus; DrinkingStatus get drinkingStatus; EducationLevel get educationLevel; Religion get religion; Region get region; double get height; Job get job; MatchStatus get matchStatus; ProfileExchangeInfo? get profileExchangeInfo; FavoriteType? get favoriteType;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileUri, profileUri) || other.profileUri == profileUri)&&(identical(other.age, age) || other.age == age)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.hobbies, hobbies)&&const DeepCollectionEquality().equals(other.selfIntroductionItems, selfIntroductionItems)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.region, region) || other.region == region)&&(identical(other.height, height) || other.height == height)&&(identical(other.job, job) || other.job == job)&&(identical(other.matchStatus, matchStatus) || other.matchStatus == matchStatus)&&(identical(other.profileExchangeInfo, profileExchangeInfo) || other.profileExchangeInfo == profileExchangeInfo)&&(identical(other.favoriteType, favoriteType) || other.favoriteType == favoriteType));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,profileUri,age,mbti,address,const DeepCollectionEquality().hash(hobbies),const DeepCollectionEquality().hash(selfIntroductionItems),smokingStatus,drinkingStatus,educationLevel,religion,region,height,job,matchStatus,profileExchangeInfo,favoriteType);

@override
String toString() {
  return 'UserProfile(id: $id, name: $name, profileUri: $profileUri, age: $age, mbti: $mbti, address: $address, hobbies: $hobbies, selfIntroductionItems: $selfIntroductionItems, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, educationLevel: $educationLevel, religion: $religion, region: $region, height: $height, job: $job, matchStatus: $matchStatus, profileExchangeInfo: $profileExchangeInfo, favoriteType: $favoriteType)';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 int id, String name, String profileUri, int age, String mbti, String address, List<String> hobbies, List<SelfIntroductionData> selfIntroductionItems, SmokingStatus smokingStatus, DrinkingStatus drinkingStatus, EducationLevel educationLevel, Religion religion, Region region, double height, Job job, MatchStatus matchStatus, ProfileExchangeInfo? profileExchangeInfo, FavoriteType? favoriteType
});


$ProfileExchangeInfoCopyWith<$Res>? get profileExchangeInfo;

}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? profileUri = null,Object? age = null,Object? mbti = null,Object? address = null,Object? hobbies = null,Object? selfIntroductionItems = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? educationLevel = null,Object? religion = null,Object? region = null,Object? height = null,Object? job = null,Object? matchStatus = null,Object? profileExchangeInfo = freezed,Object? favoriteType = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profileUri: null == profileUri ? _self.profileUri : profileUri // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,selfIntroductionItems: null == selfIntroductionItems ? _self.selfIntroductionItems : selfIntroductionItems // ignore: cast_nullable_to_non_nullable
as List<SelfIntroductionData>,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as SmokingStatus,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as DrinkingStatus,educationLevel: null == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as EducationLevel,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as Religion,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as Region,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job,matchStatus: null == matchStatus ? _self.matchStatus : matchStatus // ignore: cast_nullable_to_non_nullable
as MatchStatus,profileExchangeInfo: freezed == profileExchangeInfo ? _self.profileExchangeInfo : profileExchangeInfo // ignore: cast_nullable_to_non_nullable
as ProfileExchangeInfo?,favoriteType: freezed == favoriteType ? _self.favoriteType : favoriteType // ignore: cast_nullable_to_non_nullable
as FavoriteType?,
  ));
}
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileExchangeInfoCopyWith<$Res>? get profileExchangeInfo {
    if (_self.profileExchangeInfo == null) {
    return null;
  }

  return $ProfileExchangeInfoCopyWith<$Res>(_self.profileExchangeInfo!, (value) {
    return _then(_self.copyWith(profileExchangeInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String profileUri,  int age,  String mbti,  String address,  List<String> hobbies,  List<SelfIntroductionData> selfIntroductionItems,  SmokingStatus smokingStatus,  DrinkingStatus drinkingStatus,  EducationLevel educationLevel,  Religion religion,  Region region,  double height,  Job job,  MatchStatus matchStatus,  ProfileExchangeInfo? profileExchangeInfo,  FavoriteType? favoriteType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.name,_that.profileUri,_that.age,_that.mbti,_that.address,_that.hobbies,_that.selfIntroductionItems,_that.smokingStatus,_that.drinkingStatus,_that.educationLevel,_that.religion,_that.region,_that.height,_that.job,_that.matchStatus,_that.profileExchangeInfo,_that.favoriteType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String profileUri,  int age,  String mbti,  String address,  List<String> hobbies,  List<SelfIntroductionData> selfIntroductionItems,  SmokingStatus smokingStatus,  DrinkingStatus drinkingStatus,  EducationLevel educationLevel,  Religion religion,  Region region,  double height,  Job job,  MatchStatus matchStatus,  ProfileExchangeInfo? profileExchangeInfo,  FavoriteType? favoriteType)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.id,_that.name,_that.profileUri,_that.age,_that.mbti,_that.address,_that.hobbies,_that.selfIntroductionItems,_that.smokingStatus,_that.drinkingStatus,_that.educationLevel,_that.religion,_that.region,_that.height,_that.job,_that.matchStatus,_that.profileExchangeInfo,_that.favoriteType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String profileUri,  int age,  String mbti,  String address,  List<String> hobbies,  List<SelfIntroductionData> selfIntroductionItems,  SmokingStatus smokingStatus,  DrinkingStatus drinkingStatus,  EducationLevel educationLevel,  Religion religion,  Region region,  double height,  Job job,  MatchStatus matchStatus,  ProfileExchangeInfo? profileExchangeInfo,  FavoriteType? favoriteType)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.name,_that.profileUri,_that.age,_that.mbti,_that.address,_that.hobbies,_that.selfIntroductionItems,_that.smokingStatus,_that.drinkingStatus,_that.educationLevel,_that.religion,_that.region,_that.height,_that.job,_that.matchStatus,_that.profileExchangeInfo,_that.favoriteType);case _:
  return null;

}
}

}

/// @nodoc


class _UserProfile implements UserProfile {
  const _UserProfile({required this.id, required this.name, required this.profileUri, required this.age, required this.mbti, required this.address, required final  List<String> hobbies, required final  List<SelfIntroductionData> selfIntroductionItems, required this.smokingStatus, required this.drinkingStatus, required this.educationLevel, required this.religion, required this.region, required this.height, required this.job, required this.matchStatus, required this.profileExchangeInfo, required this.favoriteType}): _hobbies = hobbies,_selfIntroductionItems = selfIntroductionItems;
  

@override final  int id;
@override final  String name;
@override final  String profileUri;
@override final  int age;
@override final  String mbti;
@override final  String address;
 final  List<String> _hobbies;
@override List<String> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}

 final  List<SelfIntroductionData> _selfIntroductionItems;
@override List<SelfIntroductionData> get selfIntroductionItems {
  if (_selfIntroductionItems is EqualUnmodifiableListView) return _selfIntroductionItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selfIntroductionItems);
}

@override final  SmokingStatus smokingStatus;
@override final  DrinkingStatus drinkingStatus;
@override final  EducationLevel educationLevel;
@override final  Religion religion;
@override final  Region region;
@override final  double height;
@override final  Job job;
@override final  MatchStatus matchStatus;
@override final  ProfileExchangeInfo? profileExchangeInfo;
@override final  FavoriteType? favoriteType;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileUri, profileUri) || other.profileUri == profileUri)&&(identical(other.age, age) || other.age == age)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies)&&const DeepCollectionEquality().equals(other._selfIntroductionItems, _selfIntroductionItems)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.region, region) || other.region == region)&&(identical(other.height, height) || other.height == height)&&(identical(other.job, job) || other.job == job)&&(identical(other.matchStatus, matchStatus) || other.matchStatus == matchStatus)&&(identical(other.profileExchangeInfo, profileExchangeInfo) || other.profileExchangeInfo == profileExchangeInfo)&&(identical(other.favoriteType, favoriteType) || other.favoriteType == favoriteType));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,profileUri,age,mbti,address,const DeepCollectionEquality().hash(_hobbies),const DeepCollectionEquality().hash(_selfIntroductionItems),smokingStatus,drinkingStatus,educationLevel,religion,region,height,job,matchStatus,profileExchangeInfo,favoriteType);

@override
String toString() {
  return 'UserProfile(id: $id, name: $name, profileUri: $profileUri, age: $age, mbti: $mbti, address: $address, hobbies: $hobbies, selfIntroductionItems: $selfIntroductionItems, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, educationLevel: $educationLevel, religion: $religion, region: $region, height: $height, job: $job, matchStatus: $matchStatus, profileExchangeInfo: $profileExchangeInfo, favoriteType: $favoriteType)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String profileUri, int age, String mbti, String address, List<String> hobbies, List<SelfIntroductionData> selfIntroductionItems, SmokingStatus smokingStatus, DrinkingStatus drinkingStatus, EducationLevel educationLevel, Religion religion, Region region, double height, Job job, MatchStatus matchStatus, ProfileExchangeInfo? profileExchangeInfo, FavoriteType? favoriteType
});


@override $ProfileExchangeInfoCopyWith<$Res>? get profileExchangeInfo;

}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? profileUri = null,Object? age = null,Object? mbti = null,Object? address = null,Object? hobbies = null,Object? selfIntroductionItems = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? educationLevel = null,Object? religion = null,Object? region = null,Object? height = null,Object? job = null,Object? matchStatus = null,Object? profileExchangeInfo = freezed,Object? favoriteType = freezed,}) {
  return _then(_UserProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profileUri: null == profileUri ? _self.profileUri : profileUri // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,selfIntroductionItems: null == selfIntroductionItems ? _self._selfIntroductionItems : selfIntroductionItems // ignore: cast_nullable_to_non_nullable
as List<SelfIntroductionData>,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as SmokingStatus,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as DrinkingStatus,educationLevel: null == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as EducationLevel,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as Religion,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as Region,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job,matchStatus: null == matchStatus ? _self.matchStatus : matchStatus // ignore: cast_nullable_to_non_nullable
as MatchStatus,profileExchangeInfo: freezed == profileExchangeInfo ? _self.profileExchangeInfo : profileExchangeInfo // ignore: cast_nullable_to_non_nullable
as ProfileExchangeInfo?,favoriteType: freezed == favoriteType ? _self.favoriteType : favoriteType // ignore: cast_nullable_to_non_nullable
as FavoriteType?,
  ));
}

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileExchangeInfoCopyWith<$Res>? get profileExchangeInfo {
    if (_self.profileExchangeInfo == null) {
    return null;
  }

  return $ProfileExchangeInfoCopyWith<$Res>(_self.profileExchangeInfo!, (value) {
    return _then(_self.copyWith(profileExchangeInfo: value));
  });
}
}

// dart format on
