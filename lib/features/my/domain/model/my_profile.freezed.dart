// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyProfile {

 List<MyProfileImage?> get profileImages; Job get job; String get region; Education get education;// constants/enum 재사용
 SmokingStatus get smokingStatus;// profile/domain/enum 재사용
 DrinkingStatus get drinkingStatus;// profile/domain/enum 재사용
 Religion get religion;// profile/domain/enum 재사용
 String get mbti; List<Hobby> get hobbies; String get nickname; int get age; int get height; Gender get gender;// constants/enum 재사용
 String get phoneNum;
/// Create a copy of MyProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyProfileCopyWith<MyProfile> get copyWith => _$MyProfileCopyWithImpl<MyProfile>(this as MyProfile, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyProfile&&const DeepCollectionEquality().equals(other.profileImages, profileImages)&&(identical(other.job, job) || other.job == job)&&(identical(other.region, region) || other.region == region)&&(identical(other.education, education) || other.education == education)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&const DeepCollectionEquality().equals(other.hobbies, hobbies)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phoneNum, phoneNum) || other.phoneNum == phoneNum));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(profileImages),job,region,education,smokingStatus,drinkingStatus,religion,mbti,const DeepCollectionEquality().hash(hobbies),nickname,age,height,gender,phoneNum);

@override
String toString() {
  return 'MyProfile(profileImages: $profileImages, job: $job, region: $region, education: $education, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, religion: $religion, mbti: $mbti, hobbies: $hobbies, nickname: $nickname, age: $age, height: $height, gender: $gender, phoneNum: $phoneNum)';
}


}

/// @nodoc
abstract mixin class $MyProfileCopyWith<$Res>  {
  factory $MyProfileCopyWith(MyProfile value, $Res Function(MyProfile) _then) = _$MyProfileCopyWithImpl;
@useResult
$Res call({
 List<MyProfileImage?> profileImages, Job job, String region, Education education, SmokingStatus smokingStatus, DrinkingStatus drinkingStatus, Religion religion, String mbti, List<Hobby> hobbies, String nickname, int age, int height, Gender gender, String phoneNum
});




}
/// @nodoc
class _$MyProfileCopyWithImpl<$Res>
    implements $MyProfileCopyWith<$Res> {
  _$MyProfileCopyWithImpl(this._self, this._then);

  final MyProfile _self;
  final $Res Function(MyProfile) _then;

/// Create a copy of MyProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileImages = null,Object? job = null,Object? region = null,Object? education = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? religion = null,Object? mbti = null,Object? hobbies = null,Object? nickname = null,Object? age = null,Object? height = null,Object? gender = null,Object? phoneNum = null,}) {
  return _then(_self.copyWith(
profileImages: null == profileImages ? _self.profileImages : profileImages // ignore: cast_nullable_to_non_nullable
as List<MyProfileImage?>,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as Education,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as SmokingStatus,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as DrinkingStatus,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as Religion,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<Hobby>,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,phoneNum: null == phoneNum ? _self.phoneNum : phoneNum // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MyProfile].
extension MyProfilePatterns on MyProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyProfile value)  $default,){
final _that = this;
switch (_that) {
case _MyProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyProfile value)?  $default,){
final _that = this;
switch (_that) {
case _MyProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MyProfileImage?> profileImages,  Job job,  String region,  Education education,  SmokingStatus smokingStatus,  DrinkingStatus drinkingStatus,  Religion religion,  String mbti,  List<Hobby> hobbies,  String nickname,  int age,  int height,  Gender gender,  String phoneNum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyProfile() when $default != null:
return $default(_that.profileImages,_that.job,_that.region,_that.education,_that.smokingStatus,_that.drinkingStatus,_that.religion,_that.mbti,_that.hobbies,_that.nickname,_that.age,_that.height,_that.gender,_that.phoneNum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MyProfileImage?> profileImages,  Job job,  String region,  Education education,  SmokingStatus smokingStatus,  DrinkingStatus drinkingStatus,  Religion religion,  String mbti,  List<Hobby> hobbies,  String nickname,  int age,  int height,  Gender gender,  String phoneNum)  $default,) {final _that = this;
switch (_that) {
case _MyProfile():
return $default(_that.profileImages,_that.job,_that.region,_that.education,_that.smokingStatus,_that.drinkingStatus,_that.religion,_that.mbti,_that.hobbies,_that.nickname,_that.age,_that.height,_that.gender,_that.phoneNum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MyProfileImage?> profileImages,  Job job,  String region,  Education education,  SmokingStatus smokingStatus,  DrinkingStatus drinkingStatus,  Religion religion,  String mbti,  List<Hobby> hobbies,  String nickname,  int age,  int height,  Gender gender,  String phoneNum)?  $default,) {final _that = this;
switch (_that) {
case _MyProfile() when $default != null:
return $default(_that.profileImages,_that.job,_that.region,_that.education,_that.smokingStatus,_that.drinkingStatus,_that.religion,_that.mbti,_that.hobbies,_that.nickname,_that.age,_that.height,_that.gender,_that.phoneNum);case _:
  return null;

}
}

}

/// @nodoc


class _MyProfile implements MyProfile {
  const _MyProfile({required final  List<MyProfileImage?> profileImages, required this.job, required this.region, required this.education, required this.smokingStatus, required this.drinkingStatus, required this.religion, required this.mbti, required final  List<Hobby> hobbies, required this.nickname, required this.age, required this.height, required this.gender, required this.phoneNum}): _profileImages = profileImages,_hobbies = hobbies;
  

 final  List<MyProfileImage?> _profileImages;
@override List<MyProfileImage?> get profileImages {
  if (_profileImages is EqualUnmodifiableListView) return _profileImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profileImages);
}

@override final  Job job;
@override final  String region;
@override final  Education education;
// constants/enum 재사용
@override final  SmokingStatus smokingStatus;
// profile/domain/enum 재사용
@override final  DrinkingStatus drinkingStatus;
// profile/domain/enum 재사용
@override final  Religion religion;
// profile/domain/enum 재사용
@override final  String mbti;
 final  List<Hobby> _hobbies;
@override List<Hobby> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}

@override final  String nickname;
@override final  int age;
@override final  int height;
@override final  Gender gender;
// constants/enum 재사용
@override final  String phoneNum;

/// Create a copy of MyProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyProfileCopyWith<_MyProfile> get copyWith => __$MyProfileCopyWithImpl<_MyProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyProfile&&const DeepCollectionEquality().equals(other._profileImages, _profileImages)&&(identical(other.job, job) || other.job == job)&&(identical(other.region, region) || other.region == region)&&(identical(other.education, education) || other.education == education)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phoneNum, phoneNum) || other.phoneNum == phoneNum));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_profileImages),job,region,education,smokingStatus,drinkingStatus,religion,mbti,const DeepCollectionEquality().hash(_hobbies),nickname,age,height,gender,phoneNum);

@override
String toString() {
  return 'MyProfile(profileImages: $profileImages, job: $job, region: $region, education: $education, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, religion: $religion, mbti: $mbti, hobbies: $hobbies, nickname: $nickname, age: $age, height: $height, gender: $gender, phoneNum: $phoneNum)';
}


}

/// @nodoc
abstract mixin class _$MyProfileCopyWith<$Res> implements $MyProfileCopyWith<$Res> {
  factory _$MyProfileCopyWith(_MyProfile value, $Res Function(_MyProfile) _then) = __$MyProfileCopyWithImpl;
@override @useResult
$Res call({
 List<MyProfileImage?> profileImages, Job job, String region, Education education, SmokingStatus smokingStatus, DrinkingStatus drinkingStatus, Religion religion, String mbti, List<Hobby> hobbies, String nickname, int age, int height, Gender gender, String phoneNum
});




}
/// @nodoc
class __$MyProfileCopyWithImpl<$Res>
    implements _$MyProfileCopyWith<$Res> {
  __$MyProfileCopyWithImpl(this._self, this._then);

  final _MyProfile _self;
  final $Res Function(_MyProfile) _then;

/// Create a copy of MyProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileImages = null,Object? job = null,Object? region = null,Object? education = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? religion = null,Object? mbti = null,Object? hobbies = null,Object? nickname = null,Object? age = null,Object? height = null,Object? gender = null,Object? phoneNum = null,}) {
  return _then(_MyProfile(
profileImages: null == profileImages ? _self._profileImages : profileImages // ignore: cast_nullable_to_non_nullable
as List<MyProfileImage?>,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as Education,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as SmokingStatus,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as DrinkingStatus,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as Religion,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<Hobby>,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,phoneNum: null == phoneNum ? _self.phoneNum : phoneNum // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
