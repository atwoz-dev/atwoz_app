// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CachedUserProfile {

// statusInfo
@HiveField(0) String get activityStatus;@HiveField(1) bool get isVip;@HiveField(2) String? get primaryContactType;// 회원가입 후 연락수단 NULL
// basicInfo
@HiveField(3) String get nickname;@HiveField(4) Gender get gender;@HiveField(5) String? get kakaoId;@HiveField(6) int get age;@HiveField(7) int get height;@HiveField(8) String get phoneNumber;// profileInfo
@HiveField(9) Job get job;@HiveField(10) Education get education;@HiveField(11) String get city;@HiveField(12) String get district;@HiveField(13) String get mbti;@HiveField(14) SmokingStatus get smokingStatus;@HiveField(15) DrinkingStatus get drinkingStatus;@HiveField(16) Religion get religion;@HiveField(17) List<Hobby> get hobbies;// interviewInfo
@HiveField(18) List<InterviewInfo> get interviewInfoView;@HiveField(19) int get myUserId;
/// Create a copy of CachedUserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CachedUserProfileCopyWith<CachedUserProfile> get copyWith => _$CachedUserProfileCopyWithImpl<CachedUserProfile>(this as CachedUserProfile, _$identity);

  /// Serializes this CachedUserProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedUserProfile&&(identical(other.activityStatus, activityStatus) || other.activityStatus == activityStatus)&&(identical(other.isVip, isVip) || other.isVip == isVip)&&(identical(other.primaryContactType, primaryContactType) || other.primaryContactType == primaryContactType)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.kakaoId, kakaoId) || other.kakaoId == kakaoId)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.job, job) || other.job == job)&&(identical(other.education, education) || other.education == education)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.religion, religion) || other.religion == religion)&&const DeepCollectionEquality().equals(other.hobbies, hobbies)&&const DeepCollectionEquality().equals(other.interviewInfoView, interviewInfoView)&&(identical(other.myUserId, myUserId) || other.myUserId == myUserId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,activityStatus,isVip,primaryContactType,nickname,gender,kakaoId,age,height,phoneNumber,job,education,city,district,mbti,smokingStatus,drinkingStatus,religion,const DeepCollectionEquality().hash(hobbies),const DeepCollectionEquality().hash(interviewInfoView),myUserId]);

@override
String toString() {
  return 'CachedUserProfile(activityStatus: $activityStatus, isVip: $isVip, primaryContactType: $primaryContactType, nickname: $nickname, gender: $gender, kakaoId: $kakaoId, age: $age, height: $height, phoneNumber: $phoneNumber, job: $job, education: $education, city: $city, district: $district, mbti: $mbti, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, religion: $religion, hobbies: $hobbies, interviewInfoView: $interviewInfoView, myUserId: $myUserId)';
}


}

/// @nodoc
abstract mixin class $CachedUserProfileCopyWith<$Res>  {
  factory $CachedUserProfileCopyWith(CachedUserProfile value, $Res Function(CachedUserProfile) _then) = _$CachedUserProfileCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String activityStatus,@HiveField(1) bool isVip,@HiveField(2) String? primaryContactType,@HiveField(3) String nickname,@HiveField(4) Gender gender,@HiveField(5) String? kakaoId,@HiveField(6) int age,@HiveField(7) int height,@HiveField(8) String phoneNumber,@HiveField(9) Job job,@HiveField(10) Education education,@HiveField(11) String city,@HiveField(12) String district,@HiveField(13) String mbti,@HiveField(14) SmokingStatus smokingStatus,@HiveField(15) DrinkingStatus drinkingStatus,@HiveField(16) Religion religion,@HiveField(17) List<Hobby> hobbies,@HiveField(18) List<InterviewInfo> interviewInfoView,@HiveField(19) int myUserId
});




}
/// @nodoc
class _$CachedUserProfileCopyWithImpl<$Res>
    implements $CachedUserProfileCopyWith<$Res> {
  _$CachedUserProfileCopyWithImpl(this._self, this._then);

  final CachedUserProfile _self;
  final $Res Function(CachedUserProfile) _then;

/// Create a copy of CachedUserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityStatus = null,Object? isVip = null,Object? primaryContactType = freezed,Object? nickname = null,Object? gender = null,Object? kakaoId = freezed,Object? age = null,Object? height = null,Object? phoneNumber = null,Object? job = null,Object? education = null,Object? city = null,Object? district = null,Object? mbti = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? religion = null,Object? hobbies = null,Object? interviewInfoView = null,Object? myUserId = null,}) {
  return _then(_self.copyWith(
activityStatus: null == activityStatus ? _self.activityStatus : activityStatus // ignore: cast_nullable_to_non_nullable
as String,isVip: null == isVip ? _self.isVip : isVip // ignore: cast_nullable_to_non_nullable
as bool,primaryContactType: freezed == primaryContactType ? _self.primaryContactType : primaryContactType // ignore: cast_nullable_to_non_nullable
as String?,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,kakaoId: freezed == kakaoId ? _self.kakaoId : kakaoId // ignore: cast_nullable_to_non_nullable
as String?,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as Education,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as SmokingStatus,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as DrinkingStatus,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as Religion,hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<Hobby>,interviewInfoView: null == interviewInfoView ? _self.interviewInfoView : interviewInfoView // ignore: cast_nullable_to_non_nullable
as List<InterviewInfo>,myUserId: null == myUserId ? _self.myUserId : myUserId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CachedUserProfile].
extension CachedUserProfilePatterns on CachedUserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CachedUserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CachedUserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CachedUserProfile value)  $default,){
final _that = this;
switch (_that) {
case _CachedUserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CachedUserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _CachedUserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String activityStatus, @HiveField(1)  bool isVip, @HiveField(2)  String? primaryContactType, @HiveField(3)  String nickname, @HiveField(4)  Gender gender, @HiveField(5)  String? kakaoId, @HiveField(6)  int age, @HiveField(7)  int height, @HiveField(8)  String phoneNumber, @HiveField(9)  Job job, @HiveField(10)  Education education, @HiveField(11)  String city, @HiveField(12)  String district, @HiveField(13)  String mbti, @HiveField(14)  SmokingStatus smokingStatus, @HiveField(15)  DrinkingStatus drinkingStatus, @HiveField(16)  Religion religion, @HiveField(17)  List<Hobby> hobbies, @HiveField(18)  List<InterviewInfo> interviewInfoView, @HiveField(19)  int myUserId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CachedUserProfile() when $default != null:
return $default(_that.activityStatus,_that.isVip,_that.primaryContactType,_that.nickname,_that.gender,_that.kakaoId,_that.age,_that.height,_that.phoneNumber,_that.job,_that.education,_that.city,_that.district,_that.mbti,_that.smokingStatus,_that.drinkingStatus,_that.religion,_that.hobbies,_that.interviewInfoView,_that.myUserId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String activityStatus, @HiveField(1)  bool isVip, @HiveField(2)  String? primaryContactType, @HiveField(3)  String nickname, @HiveField(4)  Gender gender, @HiveField(5)  String? kakaoId, @HiveField(6)  int age, @HiveField(7)  int height, @HiveField(8)  String phoneNumber, @HiveField(9)  Job job, @HiveField(10)  Education education, @HiveField(11)  String city, @HiveField(12)  String district, @HiveField(13)  String mbti, @HiveField(14)  SmokingStatus smokingStatus, @HiveField(15)  DrinkingStatus drinkingStatus, @HiveField(16)  Religion religion, @HiveField(17)  List<Hobby> hobbies, @HiveField(18)  List<InterviewInfo> interviewInfoView, @HiveField(19)  int myUserId)  $default,) {final _that = this;
switch (_that) {
case _CachedUserProfile():
return $default(_that.activityStatus,_that.isVip,_that.primaryContactType,_that.nickname,_that.gender,_that.kakaoId,_that.age,_that.height,_that.phoneNumber,_that.job,_that.education,_that.city,_that.district,_that.mbti,_that.smokingStatus,_that.drinkingStatus,_that.religion,_that.hobbies,_that.interviewInfoView,_that.myUserId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String activityStatus, @HiveField(1)  bool isVip, @HiveField(2)  String? primaryContactType, @HiveField(3)  String nickname, @HiveField(4)  Gender gender, @HiveField(5)  String? kakaoId, @HiveField(6)  int age, @HiveField(7)  int height, @HiveField(8)  String phoneNumber, @HiveField(9)  Job job, @HiveField(10)  Education education, @HiveField(11)  String city, @HiveField(12)  String district, @HiveField(13)  String mbti, @HiveField(14)  SmokingStatus smokingStatus, @HiveField(15)  DrinkingStatus drinkingStatus, @HiveField(16)  Religion religion, @HiveField(17)  List<Hobby> hobbies, @HiveField(18)  List<InterviewInfo> interviewInfoView, @HiveField(19)  int myUserId)?  $default,) {final _that = this;
switch (_that) {
case _CachedUserProfile() when $default != null:
return $default(_that.activityStatus,_that.isVip,_that.primaryContactType,_that.nickname,_that.gender,_that.kakaoId,_that.age,_that.height,_that.phoneNumber,_that.job,_that.education,_that.city,_that.district,_that.mbti,_that.smokingStatus,_that.drinkingStatus,_that.religion,_that.hobbies,_that.interviewInfoView,_that.myUserId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CachedUserProfile extends CachedUserProfile {
  const _CachedUserProfile({@HiveField(0) required this.activityStatus, @HiveField(1) required this.isVip, @HiveField(2) this.primaryContactType, @HiveField(3) required this.nickname, @HiveField(4) required this.gender, @HiveField(5) this.kakaoId, @HiveField(6) required this.age, @HiveField(7) required this.height, @HiveField(8) required this.phoneNumber, @HiveField(9) required this.job, @HiveField(10) required this.education, @HiveField(11) required this.city, @HiveField(12) required this.district, @HiveField(13) required this.mbti, @HiveField(14) required this.smokingStatus, @HiveField(15) required this.drinkingStatus, @HiveField(16) required this.religion, @HiveField(17) required final  List<Hobby> hobbies, @HiveField(18) required final  List<InterviewInfo> interviewInfoView, @HiveField(19) this.myUserId = 0}): _hobbies = hobbies,_interviewInfoView = interviewInfoView,super._();
  factory _CachedUserProfile.fromJson(Map<String, dynamic> json) => _$CachedUserProfileFromJson(json);

// statusInfo
@override@HiveField(0) final  String activityStatus;
@override@HiveField(1) final  bool isVip;
@override@HiveField(2) final  String? primaryContactType;
// 회원가입 후 연락수단 NULL
// basicInfo
@override@HiveField(3) final  String nickname;
@override@HiveField(4) final  Gender gender;
@override@HiveField(5) final  String? kakaoId;
@override@HiveField(6) final  int age;
@override@HiveField(7) final  int height;
@override@HiveField(8) final  String phoneNumber;
// profileInfo
@override@HiveField(9) final  Job job;
@override@HiveField(10) final  Education education;
@override@HiveField(11) final  String city;
@override@HiveField(12) final  String district;
@override@HiveField(13) final  String mbti;
@override@HiveField(14) final  SmokingStatus smokingStatus;
@override@HiveField(15) final  DrinkingStatus drinkingStatus;
@override@HiveField(16) final  Religion religion;
 final  List<Hobby> _hobbies;
@override@HiveField(17) List<Hobby> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}

// interviewInfo
 final  List<InterviewInfo> _interviewInfoView;
// interviewInfo
@override@HiveField(18) List<InterviewInfo> get interviewInfoView {
  if (_interviewInfoView is EqualUnmodifiableListView) return _interviewInfoView;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviewInfoView);
}

@override@JsonKey()@HiveField(19) final  int myUserId;

/// Create a copy of CachedUserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CachedUserProfileCopyWith<_CachedUserProfile> get copyWith => __$CachedUserProfileCopyWithImpl<_CachedUserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CachedUserProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CachedUserProfile&&(identical(other.activityStatus, activityStatus) || other.activityStatus == activityStatus)&&(identical(other.isVip, isVip) || other.isVip == isVip)&&(identical(other.primaryContactType, primaryContactType) || other.primaryContactType == primaryContactType)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.kakaoId, kakaoId) || other.kakaoId == kakaoId)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.job, job) || other.job == job)&&(identical(other.education, education) || other.education == education)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.religion, religion) || other.religion == religion)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies)&&const DeepCollectionEquality().equals(other._interviewInfoView, _interviewInfoView)&&(identical(other.myUserId, myUserId) || other.myUserId == myUserId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,activityStatus,isVip,primaryContactType,nickname,gender,kakaoId,age,height,phoneNumber,job,education,city,district,mbti,smokingStatus,drinkingStatus,religion,const DeepCollectionEquality().hash(_hobbies),const DeepCollectionEquality().hash(_interviewInfoView),myUserId]);

@override
String toString() {
  return 'CachedUserProfile(activityStatus: $activityStatus, isVip: $isVip, primaryContactType: $primaryContactType, nickname: $nickname, gender: $gender, kakaoId: $kakaoId, age: $age, height: $height, phoneNumber: $phoneNumber, job: $job, education: $education, city: $city, district: $district, mbti: $mbti, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, religion: $religion, hobbies: $hobbies, interviewInfoView: $interviewInfoView, myUserId: $myUserId)';
}


}

/// @nodoc
abstract mixin class _$CachedUserProfileCopyWith<$Res> implements $CachedUserProfileCopyWith<$Res> {
  factory _$CachedUserProfileCopyWith(_CachedUserProfile value, $Res Function(_CachedUserProfile) _then) = __$CachedUserProfileCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String activityStatus,@HiveField(1) bool isVip,@HiveField(2) String? primaryContactType,@HiveField(3) String nickname,@HiveField(4) Gender gender,@HiveField(5) String? kakaoId,@HiveField(6) int age,@HiveField(7) int height,@HiveField(8) String phoneNumber,@HiveField(9) Job job,@HiveField(10) Education education,@HiveField(11) String city,@HiveField(12) String district,@HiveField(13) String mbti,@HiveField(14) SmokingStatus smokingStatus,@HiveField(15) DrinkingStatus drinkingStatus,@HiveField(16) Religion religion,@HiveField(17) List<Hobby> hobbies,@HiveField(18) List<InterviewInfo> interviewInfoView,@HiveField(19) int myUserId
});




}
/// @nodoc
class __$CachedUserProfileCopyWithImpl<$Res>
    implements _$CachedUserProfileCopyWith<$Res> {
  __$CachedUserProfileCopyWithImpl(this._self, this._then);

  final _CachedUserProfile _self;
  final $Res Function(_CachedUserProfile) _then;

/// Create a copy of CachedUserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityStatus = null,Object? isVip = null,Object? primaryContactType = freezed,Object? nickname = null,Object? gender = null,Object? kakaoId = freezed,Object? age = null,Object? height = null,Object? phoneNumber = null,Object? job = null,Object? education = null,Object? city = null,Object? district = null,Object? mbti = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? religion = null,Object? hobbies = null,Object? interviewInfoView = null,Object? myUserId = null,}) {
  return _then(_CachedUserProfile(
activityStatus: null == activityStatus ? _self.activityStatus : activityStatus // ignore: cast_nullable_to_non_nullable
as String,isVip: null == isVip ? _self.isVip : isVip // ignore: cast_nullable_to_non_nullable
as bool,primaryContactType: freezed == primaryContactType ? _self.primaryContactType : primaryContactType // ignore: cast_nullable_to_non_nullable
as String?,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,kakaoId: freezed == kakaoId ? _self.kakaoId : kakaoId // ignore: cast_nullable_to_non_nullable
as String?,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as Education,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as SmokingStatus,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as DrinkingStatus,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as Religion,hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<Hobby>,interviewInfoView: null == interviewInfoView ? _self._interviewInfoView : interviewInfoView // ignore: cast_nullable_to_non_nullable
as List<InterviewInfo>,myUserId: null == myUserId ? _self.myUserId : myUserId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$InterviewInfo {

@HiveField(0) String get title;@HiveField(1) String get content;
/// Create a copy of InterviewInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewInfoCopyWith<InterviewInfo> get copyWith => _$InterviewInfoCopyWithImpl<InterviewInfo>(this as InterviewInfo, _$identity);

  /// Serializes this InterviewInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewInfo&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content);

@override
String toString() {
  return 'InterviewInfo(title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class $InterviewInfoCopyWith<$Res>  {
  factory $InterviewInfoCopyWith(InterviewInfo value, $Res Function(InterviewInfo) _then) = _$InterviewInfoCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String title,@HiveField(1) String content
});




}
/// @nodoc
class _$InterviewInfoCopyWithImpl<$Res>
    implements $InterviewInfoCopyWith<$Res> {
  _$InterviewInfoCopyWithImpl(this._self, this._then);

  final InterviewInfo _self;
  final $Res Function(InterviewInfo) _then;

/// Create a copy of InterviewInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? content = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InterviewInfo].
extension InterviewInfoPatterns on InterviewInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterviewInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterviewInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterviewInfo value)  $default,){
final _that = this;
switch (_that) {
case _InterviewInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterviewInfo value)?  $default,){
final _that = this;
switch (_that) {
case _InterviewInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String title, @HiveField(1)  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterviewInfo() when $default != null:
return $default(_that.title,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String title, @HiveField(1)  String content)  $default,) {final _that = this;
switch (_that) {
case _InterviewInfo():
return $default(_that.title,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String title, @HiveField(1)  String content)?  $default,) {final _that = this;
switch (_that) {
case _InterviewInfo() when $default != null:
return $default(_that.title,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InterviewInfo implements InterviewInfo {
  const _InterviewInfo({@HiveField(0) required this.title, @HiveField(1) required this.content});
  factory _InterviewInfo.fromJson(Map<String, dynamic> json) => _$InterviewInfoFromJson(json);

@override@HiveField(0) final  String title;
@override@HiveField(1) final  String content;

/// Create a copy of InterviewInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewInfoCopyWith<_InterviewInfo> get copyWith => __$InterviewInfoCopyWithImpl<_InterviewInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InterviewInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewInfo&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content);

@override
String toString() {
  return 'InterviewInfo(title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$InterviewInfoCopyWith<$Res> implements $InterviewInfoCopyWith<$Res> {
  factory _$InterviewInfoCopyWith(_InterviewInfo value, $Res Function(_InterviewInfo) _then) = __$InterviewInfoCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String title,@HiveField(1) String content
});




}
/// @nodoc
class __$InterviewInfoCopyWithImpl<$Res>
    implements _$InterviewInfoCopyWith<$Res> {
  __$InterviewInfoCopyWithImpl(this._self, this._then);

  final _InterviewInfo _self;
  final $Res Function(_InterviewInfo) _then;

/// Create a copy of InterviewInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? content = null,}) {
  return _then(_InterviewInfo(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
