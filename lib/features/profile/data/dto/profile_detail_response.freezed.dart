// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileDetailResponse {

 BasicMemberInformation get memberInfo; MatchInformation? get matchInfo; ProfileExchangeInfo? get profileExchangeInfo; List<ProfileInterview> get interviews;
/// Create a copy of ProfileDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDetailResponseCopyWith<ProfileDetailResponse> get copyWith => _$ProfileDetailResponseCopyWithImpl<ProfileDetailResponse>(this as ProfileDetailResponse, _$identity);

  /// Serializes this ProfileDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDetailResponse&&(identical(other.memberInfo, memberInfo) || other.memberInfo == memberInfo)&&(identical(other.matchInfo, matchInfo) || other.matchInfo == matchInfo)&&(identical(other.profileExchangeInfo, profileExchangeInfo) || other.profileExchangeInfo == profileExchangeInfo)&&const DeepCollectionEquality().equals(other.interviews, interviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberInfo,matchInfo,profileExchangeInfo,const DeepCollectionEquality().hash(interviews));

@override
String toString() {
  return 'ProfileDetailResponse(memberInfo: $memberInfo, matchInfo: $matchInfo, profileExchangeInfo: $profileExchangeInfo, interviews: $interviews)';
}


}

/// @nodoc
abstract mixin class $ProfileDetailResponseCopyWith<$Res>  {
  factory $ProfileDetailResponseCopyWith(ProfileDetailResponse value, $Res Function(ProfileDetailResponse) _then) = _$ProfileDetailResponseCopyWithImpl;
@useResult
$Res call({
 BasicMemberInformation memberInfo, MatchInformation? matchInfo, ProfileExchangeInfo? profileExchangeInfo, List<ProfileInterview> interviews
});


$BasicMemberInformationCopyWith<$Res> get memberInfo;$MatchInformationCopyWith<$Res>? get matchInfo;$ProfileExchangeInfoCopyWith<$Res>? get profileExchangeInfo;

}
/// @nodoc
class _$ProfileDetailResponseCopyWithImpl<$Res>
    implements $ProfileDetailResponseCopyWith<$Res> {
  _$ProfileDetailResponseCopyWithImpl(this._self, this._then);

  final ProfileDetailResponse _self;
  final $Res Function(ProfileDetailResponse) _then;

/// Create a copy of ProfileDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memberInfo = null,Object? matchInfo = freezed,Object? profileExchangeInfo = freezed,Object? interviews = null,}) {
  return _then(_self.copyWith(
memberInfo: null == memberInfo ? _self.memberInfo : memberInfo // ignore: cast_nullable_to_non_nullable
as BasicMemberInformation,matchInfo: freezed == matchInfo ? _self.matchInfo : matchInfo // ignore: cast_nullable_to_non_nullable
as MatchInformation?,profileExchangeInfo: freezed == profileExchangeInfo ? _self.profileExchangeInfo : profileExchangeInfo // ignore: cast_nullable_to_non_nullable
as ProfileExchangeInfo?,interviews: null == interviews ? _self.interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<ProfileInterview>,
  ));
}
/// Create a copy of ProfileDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasicMemberInformationCopyWith<$Res> get memberInfo {
  
  return $BasicMemberInformationCopyWith<$Res>(_self.memberInfo, (value) {
    return _then(_self.copyWith(memberInfo: value));
  });
}/// Create a copy of ProfileDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchInformationCopyWith<$Res>? get matchInfo {
    if (_self.matchInfo == null) {
    return null;
  }

  return $MatchInformationCopyWith<$Res>(_self.matchInfo!, (value) {
    return _then(_self.copyWith(matchInfo: value));
  });
}/// Create a copy of ProfileDetailResponse
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


/// Adds pattern-matching-related methods to [ProfileDetailResponse].
extension ProfileDetailResponsePatterns on ProfileDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProfileDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BasicMemberInformation memberInfo,  MatchInformation? matchInfo,  ProfileExchangeInfo? profileExchangeInfo,  List<ProfileInterview> interviews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileDetailResponse() when $default != null:
return $default(_that.memberInfo,_that.matchInfo,_that.profileExchangeInfo,_that.interviews);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BasicMemberInformation memberInfo,  MatchInformation? matchInfo,  ProfileExchangeInfo? profileExchangeInfo,  List<ProfileInterview> interviews)  $default,) {final _that = this;
switch (_that) {
case _ProfileDetailResponse():
return $default(_that.memberInfo,_that.matchInfo,_that.profileExchangeInfo,_that.interviews);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BasicMemberInformation memberInfo,  MatchInformation? matchInfo,  ProfileExchangeInfo? profileExchangeInfo,  List<ProfileInterview> interviews)?  $default,) {final _that = this;
switch (_that) {
case _ProfileDetailResponse() when $default != null:
return $default(_that.memberInfo,_that.matchInfo,_that.profileExchangeInfo,_that.interviews);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileDetailResponse implements ProfileDetailResponse {
  const _ProfileDetailResponse({required this.memberInfo, required this.matchInfo, required this.profileExchangeInfo, final  List<ProfileInterview> interviews = const []}): _interviews = interviews;
  factory _ProfileDetailResponse.fromJson(Map<String, dynamic> json) => _$ProfileDetailResponseFromJson(json);

@override final  BasicMemberInformation memberInfo;
@override final  MatchInformation? matchInfo;
@override final  ProfileExchangeInfo? profileExchangeInfo;
 final  List<ProfileInterview> _interviews;
@override@JsonKey() List<ProfileInterview> get interviews {
  if (_interviews is EqualUnmodifiableListView) return _interviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviews);
}


/// Create a copy of ProfileDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDetailResponseCopyWith<_ProfileDetailResponse> get copyWith => __$ProfileDetailResponseCopyWithImpl<_ProfileDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDetailResponse&&(identical(other.memberInfo, memberInfo) || other.memberInfo == memberInfo)&&(identical(other.matchInfo, matchInfo) || other.matchInfo == matchInfo)&&(identical(other.profileExchangeInfo, profileExchangeInfo) || other.profileExchangeInfo == profileExchangeInfo)&&const DeepCollectionEquality().equals(other._interviews, _interviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberInfo,matchInfo,profileExchangeInfo,const DeepCollectionEquality().hash(_interviews));

@override
String toString() {
  return 'ProfileDetailResponse(memberInfo: $memberInfo, matchInfo: $matchInfo, profileExchangeInfo: $profileExchangeInfo, interviews: $interviews)';
}


}

/// @nodoc
abstract mixin class _$ProfileDetailResponseCopyWith<$Res> implements $ProfileDetailResponseCopyWith<$Res> {
  factory _$ProfileDetailResponseCopyWith(_ProfileDetailResponse value, $Res Function(_ProfileDetailResponse) _then) = __$ProfileDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 BasicMemberInformation memberInfo, MatchInformation? matchInfo, ProfileExchangeInfo? profileExchangeInfo, List<ProfileInterview> interviews
});


@override $BasicMemberInformationCopyWith<$Res> get memberInfo;@override $MatchInformationCopyWith<$Res>? get matchInfo;@override $ProfileExchangeInfoCopyWith<$Res>? get profileExchangeInfo;

}
/// @nodoc
class __$ProfileDetailResponseCopyWithImpl<$Res>
    implements _$ProfileDetailResponseCopyWith<$Res> {
  __$ProfileDetailResponseCopyWithImpl(this._self, this._then);

  final _ProfileDetailResponse _self;
  final $Res Function(_ProfileDetailResponse) _then;

/// Create a copy of ProfileDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memberInfo = null,Object? matchInfo = freezed,Object? profileExchangeInfo = freezed,Object? interviews = null,}) {
  return _then(_ProfileDetailResponse(
memberInfo: null == memberInfo ? _self.memberInfo : memberInfo // ignore: cast_nullable_to_non_nullable
as BasicMemberInformation,matchInfo: freezed == matchInfo ? _self.matchInfo : matchInfo // ignore: cast_nullable_to_non_nullable
as MatchInformation?,profileExchangeInfo: freezed == profileExchangeInfo ? _self.profileExchangeInfo : profileExchangeInfo // ignore: cast_nullable_to_non_nullable
as ProfileExchangeInfo?,interviews: null == interviews ? _self._interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<ProfileInterview>,
  ));
}

/// Create a copy of ProfileDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasicMemberInformationCopyWith<$Res> get memberInfo {
  
  return $BasicMemberInformationCopyWith<$Res>(_self.memberInfo, (value) {
    return _then(_self.copyWith(memberInfo: value));
  });
}/// Create a copy of ProfileDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchInformationCopyWith<$Res>? get matchInfo {
    if (_self.matchInfo == null) {
    return null;
  }

  return $MatchInformationCopyWith<$Res>(_self.matchInfo!, (value) {
    return _then(_self.copyWith(matchInfo: value));
  });
}/// Create a copy of ProfileDetailResponse
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


/// @nodoc
mixin _$BasicMemberInformation {

 int get id; String get nickname; String get profileImageUrl;// TODO(Han): server non-nullable requirement check
 int? get age; String get gender; int get height; String? get job; List<String> get hobbies; String get mbti;// TODO(Han): server non-nullable requirement check
 String get city; String get district; String get smokingStatus; String get drinkingStatus; String get highestEducation; String? get religion; String? get likeLevel;
/// Create a copy of BasicMemberInformation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasicMemberInformationCopyWith<BasicMemberInformation> get copyWith => _$BasicMemberInformationCopyWithImpl<BasicMemberInformation>(this as BasicMemberInformation, _$identity);

  /// Serializes this BasicMemberInformation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicMemberInformation&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.height, height) || other.height == height)&&(identical(other.job, job) || other.job == job)&&const DeepCollectionEquality().equals(other.hobbies, hobbies)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.highestEducation, highestEducation) || other.highestEducation == highestEducation)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.likeLevel, likeLevel) || other.likeLevel == likeLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nickname,profileImageUrl,age,gender,height,job,const DeepCollectionEquality().hash(hobbies),mbti,city,district,smokingStatus,drinkingStatus,highestEducation,religion,likeLevel);

@override
String toString() {
  return 'BasicMemberInformation(id: $id, nickname: $nickname, profileImageUrl: $profileImageUrl, age: $age, gender: $gender, height: $height, job: $job, hobbies: $hobbies, mbti: $mbti, city: $city, district: $district, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, highestEducation: $highestEducation, religion: $religion, likeLevel: $likeLevel)';
}


}

/// @nodoc
abstract mixin class $BasicMemberInformationCopyWith<$Res>  {
  factory $BasicMemberInformationCopyWith(BasicMemberInformation value, $Res Function(BasicMemberInformation) _then) = _$BasicMemberInformationCopyWithImpl;
@useResult
$Res call({
 int id, String nickname, String profileImageUrl, int? age, String gender, int height, String? job, List<String> hobbies, String mbti, String city, String district, String smokingStatus, String drinkingStatus, String highestEducation, String? religion, String? likeLevel
});




}
/// @nodoc
class _$BasicMemberInformationCopyWithImpl<$Res>
    implements $BasicMemberInformationCopyWith<$Res> {
  _$BasicMemberInformationCopyWithImpl(this._self, this._then);

  final BasicMemberInformation _self;
  final $Res Function(BasicMemberInformation) _then;

/// Create a copy of BasicMemberInformation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nickname = null,Object? profileImageUrl = null,Object? age = freezed,Object? gender = null,Object? height = null,Object? job = freezed,Object? hobbies = null,Object? mbti = null,Object? city = null,Object? district = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? highestEducation = null,Object? religion = freezed,Object? likeLevel = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String?,hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as String,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as String,highestEducation: null == highestEducation ? _self.highestEducation : highestEducation // ignore: cast_nullable_to_non_nullable
as String,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String?,likeLevel: freezed == likeLevel ? _self.likeLevel : likeLevel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BasicMemberInformation].
extension BasicMemberInformationPatterns on BasicMemberInformation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BasicMemberInformation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasicMemberInformation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BasicMemberInformation value)  $default,){
final _that = this;
switch (_that) {
case _BasicMemberInformation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BasicMemberInformation value)?  $default,){
final _that = this;
switch (_that) {
case _BasicMemberInformation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String nickname,  String profileImageUrl,  int? age,  String gender,  int height,  String? job,  List<String> hobbies,  String mbti,  String city,  String district,  String smokingStatus,  String drinkingStatus,  String highestEducation,  String? religion,  String? likeLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasicMemberInformation() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImageUrl,_that.age,_that.gender,_that.height,_that.job,_that.hobbies,_that.mbti,_that.city,_that.district,_that.smokingStatus,_that.drinkingStatus,_that.highestEducation,_that.religion,_that.likeLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String nickname,  String profileImageUrl,  int? age,  String gender,  int height,  String? job,  List<String> hobbies,  String mbti,  String city,  String district,  String smokingStatus,  String drinkingStatus,  String highestEducation,  String? religion,  String? likeLevel)  $default,) {final _that = this;
switch (_that) {
case _BasicMemberInformation():
return $default(_that.id,_that.nickname,_that.profileImageUrl,_that.age,_that.gender,_that.height,_that.job,_that.hobbies,_that.mbti,_that.city,_that.district,_that.smokingStatus,_that.drinkingStatus,_that.highestEducation,_that.religion,_that.likeLevel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String nickname,  String profileImageUrl,  int? age,  String gender,  int height,  String? job,  List<String> hobbies,  String mbti,  String city,  String district,  String smokingStatus,  String drinkingStatus,  String highestEducation,  String? religion,  String? likeLevel)?  $default,) {final _that = this;
switch (_that) {
case _BasicMemberInformation() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImageUrl,_that.age,_that.gender,_that.height,_that.job,_that.hobbies,_that.mbti,_that.city,_that.district,_that.smokingStatus,_that.drinkingStatus,_that.highestEducation,_that.religion,_that.likeLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BasicMemberInformation implements BasicMemberInformation {
  const _BasicMemberInformation({required this.id, required this.nickname, required this.profileImageUrl, required this.age, required this.gender, required this.height, required this.job, required final  List<String> hobbies, required this.mbti, required this.city, required this.district, required this.smokingStatus, required this.drinkingStatus, required this.highestEducation, required this.religion, required this.likeLevel}): _hobbies = hobbies;
  factory _BasicMemberInformation.fromJson(Map<String, dynamic> json) => _$BasicMemberInformationFromJson(json);

@override final  int id;
@override final  String nickname;
@override final  String profileImageUrl;
// TODO(Han): server non-nullable requirement check
@override final  int? age;
@override final  String gender;
@override final  int height;
@override final  String? job;
 final  List<String> _hobbies;
@override List<String> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}

@override final  String mbti;
// TODO(Han): server non-nullable requirement check
@override final  String city;
@override final  String district;
@override final  String smokingStatus;
@override final  String drinkingStatus;
@override final  String highestEducation;
@override final  String? religion;
@override final  String? likeLevel;

/// Create a copy of BasicMemberInformation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasicMemberInformationCopyWith<_BasicMemberInformation> get copyWith => __$BasicMemberInformationCopyWithImpl<_BasicMemberInformation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BasicMemberInformationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasicMemberInformation&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.height, height) || other.height == height)&&(identical(other.job, job) || other.job == job)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.highestEducation, highestEducation) || other.highestEducation == highestEducation)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.likeLevel, likeLevel) || other.likeLevel == likeLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nickname,profileImageUrl,age,gender,height,job,const DeepCollectionEquality().hash(_hobbies),mbti,city,district,smokingStatus,drinkingStatus,highestEducation,religion,likeLevel);

@override
String toString() {
  return 'BasicMemberInformation(id: $id, nickname: $nickname, profileImageUrl: $profileImageUrl, age: $age, gender: $gender, height: $height, job: $job, hobbies: $hobbies, mbti: $mbti, city: $city, district: $district, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, highestEducation: $highestEducation, religion: $religion, likeLevel: $likeLevel)';
}


}

/// @nodoc
abstract mixin class _$BasicMemberInformationCopyWith<$Res> implements $BasicMemberInformationCopyWith<$Res> {
  factory _$BasicMemberInformationCopyWith(_BasicMemberInformation value, $Res Function(_BasicMemberInformation) _then) = __$BasicMemberInformationCopyWithImpl;
@override @useResult
$Res call({
 int id, String nickname, String profileImageUrl, int? age, String gender, int height, String? job, List<String> hobbies, String mbti, String city, String district, String smokingStatus, String drinkingStatus, String highestEducation, String? religion, String? likeLevel
});




}
/// @nodoc
class __$BasicMemberInformationCopyWithImpl<$Res>
    implements _$BasicMemberInformationCopyWith<$Res> {
  __$BasicMemberInformationCopyWithImpl(this._self, this._then);

  final _BasicMemberInformation _self;
  final $Res Function(_BasicMemberInformation) _then;

/// Create a copy of BasicMemberInformation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nickname = null,Object? profileImageUrl = null,Object? age = freezed,Object? gender = null,Object? height = null,Object? job = freezed,Object? hobbies = null,Object? mbti = null,Object? city = null,Object? district = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? highestEducation = null,Object? religion = freezed,Object? likeLevel = freezed,}) {
  return _then(_BasicMemberInformation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String?,hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as String,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as String,highestEducation: null == highestEducation ? _self.highestEducation : highestEducation // ignore: cast_nullable_to_non_nullable
as String,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String?,likeLevel: freezed == likeLevel ? _self.likeLevel : likeLevel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MatchInformation {

 int get matchId; int get requesterId; int get responderId; String? get requestMessage; String? get responseMessage; String get matchStatus; String? get contactType; String? get contact;
/// Create a copy of MatchInformation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchInformationCopyWith<MatchInformation> get copyWith => _$MatchInformationCopyWithImpl<MatchInformation>(this as MatchInformation, _$identity);

  /// Serializes this MatchInformation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchInformation&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.responderId, responderId) || other.responderId == responderId)&&(identical(other.requestMessage, requestMessage) || other.requestMessage == requestMessage)&&(identical(other.responseMessage, responseMessage) || other.responseMessage == responseMessage)&&(identical(other.matchStatus, matchStatus) || other.matchStatus == matchStatus)&&(identical(other.contactType, contactType) || other.contactType == contactType)&&(identical(other.contact, contact) || other.contact == contact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,requesterId,responderId,requestMessage,responseMessage,matchStatus,contactType,contact);

@override
String toString() {
  return 'MatchInformation(matchId: $matchId, requesterId: $requesterId, responderId: $responderId, requestMessage: $requestMessage, responseMessage: $responseMessage, matchStatus: $matchStatus, contactType: $contactType, contact: $contact)';
}


}

/// @nodoc
abstract mixin class $MatchInformationCopyWith<$Res>  {
  factory $MatchInformationCopyWith(MatchInformation value, $Res Function(MatchInformation) _then) = _$MatchInformationCopyWithImpl;
@useResult
$Res call({
 int matchId, int requesterId, int responderId, String? requestMessage, String? responseMessage, String matchStatus, String? contactType, String? contact
});




}
/// @nodoc
class _$MatchInformationCopyWithImpl<$Res>
    implements $MatchInformationCopyWith<$Res> {
  _$MatchInformationCopyWithImpl(this._self, this._then);

  final MatchInformation _self;
  final $Res Function(MatchInformation) _then;

/// Create a copy of MatchInformation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? requesterId = null,Object? responderId = null,Object? requestMessage = freezed,Object? responseMessage = freezed,Object? matchStatus = null,Object? contactType = freezed,Object? contact = freezed,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as int,responderId: null == responderId ? _self.responderId : responderId // ignore: cast_nullable_to_non_nullable
as int,requestMessage: freezed == requestMessage ? _self.requestMessage : requestMessage // ignore: cast_nullable_to_non_nullable
as String?,responseMessage: freezed == responseMessage ? _self.responseMessage : responseMessage // ignore: cast_nullable_to_non_nullable
as String?,matchStatus: null == matchStatus ? _self.matchStatus : matchStatus // ignore: cast_nullable_to_non_nullable
as String,contactType: freezed == contactType ? _self.contactType : contactType // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchInformation].
extension MatchInformationPatterns on MatchInformation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchInformation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchInformation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchInformation value)  $default,){
final _that = this;
switch (_that) {
case _MatchInformation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchInformation value)?  $default,){
final _that = this;
switch (_that) {
case _MatchInformation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int matchId,  int requesterId,  int responderId,  String? requestMessage,  String? responseMessage,  String matchStatus,  String? contactType,  String? contact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchInformation() when $default != null:
return $default(_that.matchId,_that.requesterId,_that.responderId,_that.requestMessage,_that.responseMessage,_that.matchStatus,_that.contactType,_that.contact);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int matchId,  int requesterId,  int responderId,  String? requestMessage,  String? responseMessage,  String matchStatus,  String? contactType,  String? contact)  $default,) {final _that = this;
switch (_that) {
case _MatchInformation():
return $default(_that.matchId,_that.requesterId,_that.responderId,_that.requestMessage,_that.responseMessage,_that.matchStatus,_that.contactType,_that.contact);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int matchId,  int requesterId,  int responderId,  String? requestMessage,  String? responseMessage,  String matchStatus,  String? contactType,  String? contact)?  $default,) {final _that = this;
switch (_that) {
case _MatchInformation() when $default != null:
return $default(_that.matchId,_that.requesterId,_that.responderId,_that.requestMessage,_that.responseMessage,_that.matchStatus,_that.contactType,_that.contact);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchInformation implements MatchInformation {
  const _MatchInformation({required this.matchId, required this.requesterId, required this.responderId, required this.requestMessage, required this.responseMessage, required this.matchStatus, required this.contactType, required this.contact});
  factory _MatchInformation.fromJson(Map<String, dynamic> json) => _$MatchInformationFromJson(json);

@override final  int matchId;
@override final  int requesterId;
@override final  int responderId;
@override final  String? requestMessage;
@override final  String? responseMessage;
@override final  String matchStatus;
@override final  String? contactType;
@override final  String? contact;

/// Create a copy of MatchInformation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchInformationCopyWith<_MatchInformation> get copyWith => __$MatchInformationCopyWithImpl<_MatchInformation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchInformationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchInformation&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.responderId, responderId) || other.responderId == responderId)&&(identical(other.requestMessage, requestMessage) || other.requestMessage == requestMessage)&&(identical(other.responseMessage, responseMessage) || other.responseMessage == responseMessage)&&(identical(other.matchStatus, matchStatus) || other.matchStatus == matchStatus)&&(identical(other.contactType, contactType) || other.contactType == contactType)&&(identical(other.contact, contact) || other.contact == contact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,requesterId,responderId,requestMessage,responseMessage,matchStatus,contactType,contact);

@override
String toString() {
  return 'MatchInformation(matchId: $matchId, requesterId: $requesterId, responderId: $responderId, requestMessage: $requestMessage, responseMessage: $responseMessage, matchStatus: $matchStatus, contactType: $contactType, contact: $contact)';
}


}

/// @nodoc
abstract mixin class _$MatchInformationCopyWith<$Res> implements $MatchInformationCopyWith<$Res> {
  factory _$MatchInformationCopyWith(_MatchInformation value, $Res Function(_MatchInformation) _then) = __$MatchInformationCopyWithImpl;
@override @useResult
$Res call({
 int matchId, int requesterId, int responderId, String? requestMessage, String? responseMessage, String matchStatus, String? contactType, String? contact
});




}
/// @nodoc
class __$MatchInformationCopyWithImpl<$Res>
    implements _$MatchInformationCopyWith<$Res> {
  __$MatchInformationCopyWithImpl(this._self, this._then);

  final _MatchInformation _self;
  final $Res Function(_MatchInformation) _then;

/// Create a copy of MatchInformation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? requesterId = null,Object? responderId = null,Object? requestMessage = freezed,Object? responseMessage = freezed,Object? matchStatus = null,Object? contactType = freezed,Object? contact = freezed,}) {
  return _then(_MatchInformation(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as int,responderId: null == responderId ? _self.responderId : responderId // ignore: cast_nullable_to_non_nullable
as int,requestMessage: freezed == requestMessage ? _self.requestMessage : requestMessage // ignore: cast_nullable_to_non_nullable
as String?,responseMessage: freezed == responseMessage ? _self.responseMessage : responseMessage // ignore: cast_nullable_to_non_nullable
as String?,matchStatus: null == matchStatus ? _self.matchStatus : matchStatus // ignore: cast_nullable_to_non_nullable
as String,contactType: freezed == contactType ? _self.contactType : contactType // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProfileExchangeInfo {

 int get profileExchangeId; int get requesterId; int get responderId; ProfileExchangeStatus get profileExchangeStatus;
/// Create a copy of ProfileExchangeInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileExchangeInfoCopyWith<ProfileExchangeInfo> get copyWith => _$ProfileExchangeInfoCopyWithImpl<ProfileExchangeInfo>(this as ProfileExchangeInfo, _$identity);

  /// Serializes this ProfileExchangeInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileExchangeInfo&&(identical(other.profileExchangeId, profileExchangeId) || other.profileExchangeId == profileExchangeId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.responderId, responderId) || other.responderId == responderId)&&(identical(other.profileExchangeStatus, profileExchangeStatus) || other.profileExchangeStatus == profileExchangeStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileExchangeId,requesterId,responderId,profileExchangeStatus);

@override
String toString() {
  return 'ProfileExchangeInfo(profileExchangeId: $profileExchangeId, requesterId: $requesterId, responderId: $responderId, profileExchangeStatus: $profileExchangeStatus)';
}


}

/// @nodoc
abstract mixin class $ProfileExchangeInfoCopyWith<$Res>  {
  factory $ProfileExchangeInfoCopyWith(ProfileExchangeInfo value, $Res Function(ProfileExchangeInfo) _then) = _$ProfileExchangeInfoCopyWithImpl;
@useResult
$Res call({
 int profileExchangeId, int requesterId, int responderId, ProfileExchangeStatus profileExchangeStatus
});




}
/// @nodoc
class _$ProfileExchangeInfoCopyWithImpl<$Res>
    implements $ProfileExchangeInfoCopyWith<$Res> {
  _$ProfileExchangeInfoCopyWithImpl(this._self, this._then);

  final ProfileExchangeInfo _self;
  final $Res Function(ProfileExchangeInfo) _then;

/// Create a copy of ProfileExchangeInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileExchangeId = null,Object? requesterId = null,Object? responderId = null,Object? profileExchangeStatus = null,}) {
  return _then(_self.copyWith(
profileExchangeId: null == profileExchangeId ? _self.profileExchangeId : profileExchangeId // ignore: cast_nullable_to_non_nullable
as int,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as int,responderId: null == responderId ? _self.responderId : responderId // ignore: cast_nullable_to_non_nullable
as int,profileExchangeStatus: null == profileExchangeStatus ? _self.profileExchangeStatus : profileExchangeStatus // ignore: cast_nullable_to_non_nullable
as ProfileExchangeStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileExchangeInfo].
extension ProfileExchangeInfoPatterns on ProfileExchangeInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileExchangeInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileExchangeInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileExchangeInfo value)  $default,){
final _that = this;
switch (_that) {
case _ProfileExchangeInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileExchangeInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileExchangeInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int profileExchangeId,  int requesterId,  int responderId,  ProfileExchangeStatus profileExchangeStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileExchangeInfo() when $default != null:
return $default(_that.profileExchangeId,_that.requesterId,_that.responderId,_that.profileExchangeStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int profileExchangeId,  int requesterId,  int responderId,  ProfileExchangeStatus profileExchangeStatus)  $default,) {final _that = this;
switch (_that) {
case _ProfileExchangeInfo():
return $default(_that.profileExchangeId,_that.requesterId,_that.responderId,_that.profileExchangeStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int profileExchangeId,  int requesterId,  int responderId,  ProfileExchangeStatus profileExchangeStatus)?  $default,) {final _that = this;
switch (_that) {
case _ProfileExchangeInfo() when $default != null:
return $default(_that.profileExchangeId,_that.requesterId,_that.responderId,_that.profileExchangeStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileExchangeInfo implements ProfileExchangeInfo {
  const _ProfileExchangeInfo({required this.profileExchangeId, required this.requesterId, required this.responderId, required this.profileExchangeStatus});
  factory _ProfileExchangeInfo.fromJson(Map<String, dynamic> json) => _$ProfileExchangeInfoFromJson(json);

@override final  int profileExchangeId;
@override final  int requesterId;
@override final  int responderId;
@override final  ProfileExchangeStatus profileExchangeStatus;

/// Create a copy of ProfileExchangeInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileExchangeInfoCopyWith<_ProfileExchangeInfo> get copyWith => __$ProfileExchangeInfoCopyWithImpl<_ProfileExchangeInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileExchangeInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileExchangeInfo&&(identical(other.profileExchangeId, profileExchangeId) || other.profileExchangeId == profileExchangeId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.responderId, responderId) || other.responderId == responderId)&&(identical(other.profileExchangeStatus, profileExchangeStatus) || other.profileExchangeStatus == profileExchangeStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileExchangeId,requesterId,responderId,profileExchangeStatus);

@override
String toString() {
  return 'ProfileExchangeInfo(profileExchangeId: $profileExchangeId, requesterId: $requesterId, responderId: $responderId, profileExchangeStatus: $profileExchangeStatus)';
}


}

/// @nodoc
abstract mixin class _$ProfileExchangeInfoCopyWith<$Res> implements $ProfileExchangeInfoCopyWith<$Res> {
  factory _$ProfileExchangeInfoCopyWith(_ProfileExchangeInfo value, $Res Function(_ProfileExchangeInfo) _then) = __$ProfileExchangeInfoCopyWithImpl;
@override @useResult
$Res call({
 int profileExchangeId, int requesterId, int responderId, ProfileExchangeStatus profileExchangeStatus
});




}
/// @nodoc
class __$ProfileExchangeInfoCopyWithImpl<$Res>
    implements _$ProfileExchangeInfoCopyWith<$Res> {
  __$ProfileExchangeInfoCopyWithImpl(this._self, this._then);

  final _ProfileExchangeInfo _self;
  final $Res Function(_ProfileExchangeInfo) _then;

/// Create a copy of ProfileExchangeInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileExchangeId = null,Object? requesterId = null,Object? responderId = null,Object? profileExchangeStatus = null,}) {
  return _then(_ProfileExchangeInfo(
profileExchangeId: null == profileExchangeId ? _self.profileExchangeId : profileExchangeId // ignore: cast_nullable_to_non_nullable
as int,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as int,responderId: null == responderId ? _self.responderId : responderId // ignore: cast_nullable_to_non_nullable
as int,profileExchangeStatus: null == profileExchangeStatus ? _self.profileExchangeStatus : profileExchangeStatus // ignore: cast_nullable_to_non_nullable
as ProfileExchangeStatus,
  ));
}


}


/// @nodoc
mixin _$ProfileInterview {

 String get content; String get category; String get answer;
/// Create a copy of ProfileInterview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileInterviewCopyWith<ProfileInterview> get copyWith => _$ProfileInterviewCopyWithImpl<ProfileInterview>(this as ProfileInterview, _$identity);

  /// Serializes this ProfileInterview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileInterview&&(identical(other.content, content) || other.content == content)&&(identical(other.category, category) || other.category == category)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,category,answer);

@override
String toString() {
  return 'ProfileInterview(content: $content, category: $category, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $ProfileInterviewCopyWith<$Res>  {
  factory $ProfileInterviewCopyWith(ProfileInterview value, $Res Function(ProfileInterview) _then) = _$ProfileInterviewCopyWithImpl;
@useResult
$Res call({
 String content, String category, String answer
});




}
/// @nodoc
class _$ProfileInterviewCopyWithImpl<$Res>
    implements $ProfileInterviewCopyWith<$Res> {
  _$ProfileInterviewCopyWithImpl(this._self, this._then);

  final ProfileInterview _self;
  final $Res Function(ProfileInterview) _then;

/// Create a copy of ProfileInterview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? category = null,Object? answer = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileInterview].
extension ProfileInterviewPatterns on ProfileInterview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileInterview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileInterview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileInterview value)  $default,){
final _that = this;
switch (_that) {
case _ProfileInterview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileInterview value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileInterview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  String category,  String answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileInterview() when $default != null:
return $default(_that.content,_that.category,_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  String category,  String answer)  $default,) {final _that = this;
switch (_that) {
case _ProfileInterview():
return $default(_that.content,_that.category,_that.answer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  String category,  String answer)?  $default,) {final _that = this;
switch (_that) {
case _ProfileInterview() when $default != null:
return $default(_that.content,_that.category,_that.answer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileInterview implements ProfileInterview {
  const _ProfileInterview({required this.content, required this.category, required this.answer});
  factory _ProfileInterview.fromJson(Map<String, dynamic> json) => _$ProfileInterviewFromJson(json);

@override final  String content;
@override final  String category;
@override final  String answer;

/// Create a copy of ProfileInterview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileInterviewCopyWith<_ProfileInterview> get copyWith => __$ProfileInterviewCopyWithImpl<_ProfileInterview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileInterviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileInterview&&(identical(other.content, content) || other.content == content)&&(identical(other.category, category) || other.category == category)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,category,answer);

@override
String toString() {
  return 'ProfileInterview(content: $content, category: $category, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$ProfileInterviewCopyWith<$Res> implements $ProfileInterviewCopyWith<$Res> {
  factory _$ProfileInterviewCopyWith(_ProfileInterview value, $Res Function(_ProfileInterview) _then) = __$ProfileInterviewCopyWithImpl;
@override @useResult
$Res call({
 String content, String category, String answer
});




}
/// @nodoc
class __$ProfileInterviewCopyWithImpl<$Res>
    implements _$ProfileInterviewCopyWith<$Res> {
  __$ProfileInterviewCopyWithImpl(this._self, this._then);

  final _ProfileInterview _self;
  final $Res Function(_ProfileInterview) _then;

/// Create a copy of ProfileInterview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? category = null,Object? answer = null,}) {
  return _then(_ProfileInterview(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
