// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_upload_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileUploadRequest {

 String get nickname; String get gender; int get yearOfBirth; int get height; String get job; String get district; String get highestEducation; String get mbti; String get smokingStatus; String get drinkingStatus; String get religion; List<String> get hobbies;
/// Create a copy of ProfileUploadRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUploadRequestCopyWith<ProfileUploadRequest> get copyWith => _$ProfileUploadRequestCopyWithImpl<ProfileUploadRequest>(this as ProfileUploadRequest, _$identity);

  /// Serializes this ProfileUploadRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUploadRequest&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.yearOfBirth, yearOfBirth) || other.yearOfBirth == yearOfBirth)&&(identical(other.height, height) || other.height == height)&&(identical(other.job, job) || other.job == job)&&(identical(other.district, district) || other.district == district)&&(identical(other.highestEducation, highestEducation) || other.highestEducation == highestEducation)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.religion, religion) || other.religion == religion)&&const DeepCollectionEquality().equals(other.hobbies, hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname,gender,yearOfBirth,height,job,district,highestEducation,mbti,smokingStatus,drinkingStatus,religion,const DeepCollectionEquality().hash(hobbies));

@override
String toString() {
  return 'ProfileUploadRequest(nickname: $nickname, gender: $gender, yearOfBirth: $yearOfBirth, height: $height, job: $job, district: $district, highestEducation: $highestEducation, mbti: $mbti, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, religion: $religion, hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class $ProfileUploadRequestCopyWith<$Res>  {
  factory $ProfileUploadRequestCopyWith(ProfileUploadRequest value, $Res Function(ProfileUploadRequest) _then) = _$ProfileUploadRequestCopyWithImpl;
@useResult
$Res call({
 String nickname, String gender, int yearOfBirth, int height, String job, String district, String highestEducation, String mbti, String smokingStatus, String drinkingStatus, String religion, List<String> hobbies
});




}
/// @nodoc
class _$ProfileUploadRequestCopyWithImpl<$Res>
    implements $ProfileUploadRequestCopyWith<$Res> {
  _$ProfileUploadRequestCopyWithImpl(this._self, this._then);

  final ProfileUploadRequest _self;
  final $Res Function(ProfileUploadRequest) _then;

/// Create a copy of ProfileUploadRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nickname = null,Object? gender = null,Object? yearOfBirth = null,Object? height = null,Object? job = null,Object? district = null,Object? highestEducation = null,Object? mbti = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? religion = null,Object? hobbies = null,}) {
  return _then(_self.copyWith(
nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,yearOfBirth: null == yearOfBirth ? _self.yearOfBirth : yearOfBirth // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,highestEducation: null == highestEducation ? _self.highestEducation : highestEducation // ignore: cast_nullable_to_non_nullable
as String,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as String,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as String,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String,hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileUploadRequest].
extension ProfileUploadRequestPatterns on ProfileUploadRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileUploadRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileUploadRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileUploadRequest value)  $default,){
final _that = this;
switch (_that) {
case _ProfileUploadRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileUploadRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileUploadRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nickname,  String gender,  int yearOfBirth,  int height,  String job,  String district,  String highestEducation,  String mbti,  String smokingStatus,  String drinkingStatus,  String religion,  List<String> hobbies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileUploadRequest() when $default != null:
return $default(_that.nickname,_that.gender,_that.yearOfBirth,_that.height,_that.job,_that.district,_that.highestEducation,_that.mbti,_that.smokingStatus,_that.drinkingStatus,_that.religion,_that.hobbies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nickname,  String gender,  int yearOfBirth,  int height,  String job,  String district,  String highestEducation,  String mbti,  String smokingStatus,  String drinkingStatus,  String religion,  List<String> hobbies)  $default,) {final _that = this;
switch (_that) {
case _ProfileUploadRequest():
return $default(_that.nickname,_that.gender,_that.yearOfBirth,_that.height,_that.job,_that.district,_that.highestEducation,_that.mbti,_that.smokingStatus,_that.drinkingStatus,_that.religion,_that.hobbies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nickname,  String gender,  int yearOfBirth,  int height,  String job,  String district,  String highestEducation,  String mbti,  String smokingStatus,  String drinkingStatus,  String religion,  List<String> hobbies)?  $default,) {final _that = this;
switch (_that) {
case _ProfileUploadRequest() when $default != null:
return $default(_that.nickname,_that.gender,_that.yearOfBirth,_that.height,_that.job,_that.district,_that.highestEducation,_that.mbti,_that.smokingStatus,_that.drinkingStatus,_that.religion,_that.hobbies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileUploadRequest implements ProfileUploadRequest {
  const _ProfileUploadRequest({required this.nickname, required this.gender, required this.yearOfBirth, required this.height, required this.job, required this.district, required this.highestEducation, required this.mbti, required this.smokingStatus, required this.drinkingStatus, required this.religion, required final  List<String> hobbies}): _hobbies = hobbies;
  factory _ProfileUploadRequest.fromJson(Map<String, dynamic> json) => _$ProfileUploadRequestFromJson(json);

@override final  String nickname;
@override final  String gender;
@override final  int yearOfBirth;
@override final  int height;
@override final  String job;
@override final  String district;
@override final  String highestEducation;
@override final  String mbti;
@override final  String smokingStatus;
@override final  String drinkingStatus;
@override final  String religion;
 final  List<String> _hobbies;
@override List<String> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}


/// Create a copy of ProfileUploadRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileUploadRequestCopyWith<_ProfileUploadRequest> get copyWith => __$ProfileUploadRequestCopyWithImpl<_ProfileUploadRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileUploadRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileUploadRequest&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.yearOfBirth, yearOfBirth) || other.yearOfBirth == yearOfBirth)&&(identical(other.height, height) || other.height == height)&&(identical(other.job, job) || other.job == job)&&(identical(other.district, district) || other.district == district)&&(identical(other.highestEducation, highestEducation) || other.highestEducation == highestEducation)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&(identical(other.smokingStatus, smokingStatus) || other.smokingStatus == smokingStatus)&&(identical(other.drinkingStatus, drinkingStatus) || other.drinkingStatus == drinkingStatus)&&(identical(other.religion, religion) || other.religion == religion)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname,gender,yearOfBirth,height,job,district,highestEducation,mbti,smokingStatus,drinkingStatus,religion,const DeepCollectionEquality().hash(_hobbies));

@override
String toString() {
  return 'ProfileUploadRequest(nickname: $nickname, gender: $gender, yearOfBirth: $yearOfBirth, height: $height, job: $job, district: $district, highestEducation: $highestEducation, mbti: $mbti, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, religion: $religion, hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class _$ProfileUploadRequestCopyWith<$Res> implements $ProfileUploadRequestCopyWith<$Res> {
  factory _$ProfileUploadRequestCopyWith(_ProfileUploadRequest value, $Res Function(_ProfileUploadRequest) _then) = __$ProfileUploadRequestCopyWithImpl;
@override @useResult
$Res call({
 String nickname, String gender, int yearOfBirth, int height, String job, String district, String highestEducation, String mbti, String smokingStatus, String drinkingStatus, String religion, List<String> hobbies
});




}
/// @nodoc
class __$ProfileUploadRequestCopyWithImpl<$Res>
    implements _$ProfileUploadRequestCopyWith<$Res> {
  __$ProfileUploadRequestCopyWithImpl(this._self, this._then);

  final _ProfileUploadRequest _self;
  final $Res Function(_ProfileUploadRequest) _then;

/// Create a copy of ProfileUploadRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nickname = null,Object? gender = null,Object? yearOfBirth = null,Object? height = null,Object? job = null,Object? district = null,Object? highestEducation = null,Object? mbti = null,Object? smokingStatus = null,Object? drinkingStatus = null,Object? religion = null,Object? hobbies = null,}) {
  return _then(_ProfileUploadRequest(
nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,yearOfBirth: null == yearOfBirth ? _self.yearOfBirth : yearOfBirth // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,highestEducation: null == highestEducation ? _self.highestEducation : highestEducation // ignore: cast_nullable_to_non_nullable
as String,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,smokingStatus: null == smokingStatus ? _self.smokingStatus : smokingStatus // ignore: cast_nullable_to_non_nullable
as String,drinkingStatus: null == drinkingStatus ? _self.drinkingStatus : drinkingStatus // ignore: cast_nullable_to_non_nullable
as String,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String,hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
