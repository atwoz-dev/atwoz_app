// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduce_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IntroduceDetailResponse {

 int get status; String get code; String get message; IntroduceDetailData get data;
/// Create a copy of IntroduceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceDetailResponseCopyWith<IntroduceDetailResponse> get copyWith => _$IntroduceDetailResponseCopyWithImpl<IntroduceDetailResponse>(this as IntroduceDetailResponse, _$identity);

  /// Serializes this IntroduceDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceDetailResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,data);

@override
String toString() {
  return 'IntroduceDetailResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $IntroduceDetailResponseCopyWith<$Res>  {
  factory $IntroduceDetailResponseCopyWith(IntroduceDetailResponse value, $Res Function(IntroduceDetailResponse) _then) = _$IntroduceDetailResponseCopyWithImpl;
@useResult
$Res call({
 int status, String code, String message, IntroduceDetailData data
});


$IntroduceDetailDataCopyWith<$Res> get data;

}
/// @nodoc
class _$IntroduceDetailResponseCopyWithImpl<$Res>
    implements $IntroduceDetailResponseCopyWith<$Res> {
  _$IntroduceDetailResponseCopyWithImpl(this._self, this._then);

  final IntroduceDetailResponse _self;
  final $Res Function(IntroduceDetailResponse) _then;

/// Create a copy of IntroduceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as IntroduceDetailData,
  ));
}
/// Create a copy of IntroduceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntroduceDetailDataCopyWith<$Res> get data {
  
  return $IntroduceDetailDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [IntroduceDetailResponse].
extension IntroduceDetailResponsePatterns on IntroduceDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String code,  String message,  IntroduceDetailData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceDetailResponse() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String code,  String message,  IntroduceDetailData data)  $default,) {final _that = this;
switch (_that) {
case _IntroduceDetailResponse():
return $default(_that.status,_that.code,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String code,  String message,  IntroduceDetailData data)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceDetailResponse() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IntroduceDetailResponse implements IntroduceDetailResponse {
  const _IntroduceDetailResponse({required this.status, required this.code, required this.message, required this.data});
  factory _IntroduceDetailResponse.fromJson(Map<String, dynamic> json) => _$IntroduceDetailResponseFromJson(json);

@override final  int status;
@override final  String code;
@override final  String message;
@override final  IntroduceDetailData data;

/// Create a copy of IntroduceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceDetailResponseCopyWith<_IntroduceDetailResponse> get copyWith => __$IntroduceDetailResponseCopyWithImpl<_IntroduceDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IntroduceDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceDetailResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,data);

@override
String toString() {
  return 'IntroduceDetailResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$IntroduceDetailResponseCopyWith<$Res> implements $IntroduceDetailResponseCopyWith<$Res> {
  factory _$IntroduceDetailResponseCopyWith(_IntroduceDetailResponse value, $Res Function(_IntroduceDetailResponse) _then) = __$IntroduceDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, String code, String message, IntroduceDetailData data
});


@override $IntroduceDetailDataCopyWith<$Res> get data;

}
/// @nodoc
class __$IntroduceDetailResponseCopyWithImpl<$Res>
    implements _$IntroduceDetailResponseCopyWith<$Res> {
  __$IntroduceDetailResponseCopyWithImpl(this._self, this._then);

  final _IntroduceDetailResponse _self;
  final $Res Function(_IntroduceDetailResponse) _then;

/// Create a copy of IntroduceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_IntroduceDetailResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as IntroduceDetailData,
  ));
}

/// Create a copy of IntroduceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntroduceDetailDataCopyWith<$Res> get data {
  
  return $IntroduceDetailDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$IntroduceDetailData {

 String get title; String get content; String? get like; String? get profileExchangeStatus; MemberBasicInfo get memberBasicInfo;
/// Create a copy of IntroduceDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceDetailDataCopyWith<IntroduceDetailData> get copyWith => _$IntroduceDetailDataCopyWithImpl<IntroduceDetailData>(this as IntroduceDetailData, _$identity);

  /// Serializes this IntroduceDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceDetailData&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.like, like) || other.like == like)&&(identical(other.profileExchangeStatus, profileExchangeStatus) || other.profileExchangeStatus == profileExchangeStatus)&&(identical(other.memberBasicInfo, memberBasicInfo) || other.memberBasicInfo == memberBasicInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,like,profileExchangeStatus,memberBasicInfo);

@override
String toString() {
  return 'IntroduceDetailData(title: $title, content: $content, like: $like, profileExchangeStatus: $profileExchangeStatus, memberBasicInfo: $memberBasicInfo)';
}


}

/// @nodoc
abstract mixin class $IntroduceDetailDataCopyWith<$Res>  {
  factory $IntroduceDetailDataCopyWith(IntroduceDetailData value, $Res Function(IntroduceDetailData) _then) = _$IntroduceDetailDataCopyWithImpl;
@useResult
$Res call({
 String title, String content, String? like, String? profileExchangeStatus, MemberBasicInfo memberBasicInfo
});


$MemberBasicInfoCopyWith<$Res> get memberBasicInfo;

}
/// @nodoc
class _$IntroduceDetailDataCopyWithImpl<$Res>
    implements $IntroduceDetailDataCopyWith<$Res> {
  _$IntroduceDetailDataCopyWithImpl(this._self, this._then);

  final IntroduceDetailData _self;
  final $Res Function(IntroduceDetailData) _then;

/// Create a copy of IntroduceDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? content = null,Object? like = freezed,Object? profileExchangeStatus = freezed,Object? memberBasicInfo = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,like: freezed == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as String?,profileExchangeStatus: freezed == profileExchangeStatus ? _self.profileExchangeStatus : profileExchangeStatus // ignore: cast_nullable_to_non_nullable
as String?,memberBasicInfo: null == memberBasicInfo ? _self.memberBasicInfo : memberBasicInfo // ignore: cast_nullable_to_non_nullable
as MemberBasicInfo,
  ));
}
/// Create a copy of IntroduceDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberBasicInfoCopyWith<$Res> get memberBasicInfo {
  
  return $MemberBasicInfoCopyWith<$Res>(_self.memberBasicInfo, (value) {
    return _then(_self.copyWith(memberBasicInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [IntroduceDetailData].
extension IntroduceDetailDataPatterns on IntroduceDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceDetailData value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceDetailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String content,  String? like,  String? profileExchangeStatus,  MemberBasicInfo memberBasicInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceDetailData() when $default != null:
return $default(_that.title,_that.content,_that.like,_that.profileExchangeStatus,_that.memberBasicInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String content,  String? like,  String? profileExchangeStatus,  MemberBasicInfo memberBasicInfo)  $default,) {final _that = this;
switch (_that) {
case _IntroduceDetailData():
return $default(_that.title,_that.content,_that.like,_that.profileExchangeStatus,_that.memberBasicInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String content,  String? like,  String? profileExchangeStatus,  MemberBasicInfo memberBasicInfo)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceDetailData() when $default != null:
return $default(_that.title,_that.content,_that.like,_that.profileExchangeStatus,_that.memberBasicInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IntroduceDetailData implements IntroduceDetailData {
  const _IntroduceDetailData({required this.title, required this.content, this.like, this.profileExchangeStatus, required this.memberBasicInfo});
  factory _IntroduceDetailData.fromJson(Map<String, dynamic> json) => _$IntroduceDetailDataFromJson(json);

@override final  String title;
@override final  String content;
@override final  String? like;
@override final  String? profileExchangeStatus;
@override final  MemberBasicInfo memberBasicInfo;

/// Create a copy of IntroduceDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceDetailDataCopyWith<_IntroduceDetailData> get copyWith => __$IntroduceDetailDataCopyWithImpl<_IntroduceDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IntroduceDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceDetailData&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.like, like) || other.like == like)&&(identical(other.profileExchangeStatus, profileExchangeStatus) || other.profileExchangeStatus == profileExchangeStatus)&&(identical(other.memberBasicInfo, memberBasicInfo) || other.memberBasicInfo == memberBasicInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,like,profileExchangeStatus,memberBasicInfo);

@override
String toString() {
  return 'IntroduceDetailData(title: $title, content: $content, like: $like, profileExchangeStatus: $profileExchangeStatus, memberBasicInfo: $memberBasicInfo)';
}


}

/// @nodoc
abstract mixin class _$IntroduceDetailDataCopyWith<$Res> implements $IntroduceDetailDataCopyWith<$Res> {
  factory _$IntroduceDetailDataCopyWith(_IntroduceDetailData value, $Res Function(_IntroduceDetailData) _then) = __$IntroduceDetailDataCopyWithImpl;
@override @useResult
$Res call({
 String title, String content, String? like, String? profileExchangeStatus, MemberBasicInfo memberBasicInfo
});


@override $MemberBasicInfoCopyWith<$Res> get memberBasicInfo;

}
/// @nodoc
class __$IntroduceDetailDataCopyWithImpl<$Res>
    implements _$IntroduceDetailDataCopyWith<$Res> {
  __$IntroduceDetailDataCopyWithImpl(this._self, this._then);

  final _IntroduceDetailData _self;
  final $Res Function(_IntroduceDetailData) _then;

/// Create a copy of IntroduceDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? content = null,Object? like = freezed,Object? profileExchangeStatus = freezed,Object? memberBasicInfo = null,}) {
  return _then(_IntroduceDetailData(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,like: freezed == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as String?,profileExchangeStatus: freezed == profileExchangeStatus ? _self.profileExchangeStatus : profileExchangeStatus // ignore: cast_nullable_to_non_nullable
as String?,memberBasicInfo: null == memberBasicInfo ? _self.memberBasicInfo : memberBasicInfo // ignore: cast_nullable_to_non_nullable
as MemberBasicInfo,
  ));
}

/// Create a copy of IntroduceDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberBasicInfoCopyWith<$Res> get memberBasicInfo {
  
  return $MemberBasicInfoCopyWith<$Res>(_self.memberBasicInfo, (value) {
    return _then(_self.copyWith(memberBasicInfo: value));
  });
}
}


/// @nodoc
mixin _$MemberBasicInfo {

 int get memberId; int get age; String get nickname; String get profileImageUrl; String get city; String get district; String get mbti; List<String> get hobbies;
/// Create a copy of MemberBasicInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberBasicInfoCopyWith<MemberBasicInfo> get copyWith => _$MemberBasicInfoCopyWithImpl<MemberBasicInfo>(this as MemberBasicInfo, _$identity);

  /// Serializes this MemberBasicInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberBasicInfo&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.age, age) || other.age == age)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&const DeepCollectionEquality().equals(other.hobbies, hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberId,age,nickname,profileImageUrl,city,district,mbti,const DeepCollectionEquality().hash(hobbies));

@override
String toString() {
  return 'MemberBasicInfo(memberId: $memberId, age: $age, nickname: $nickname, profileImageUrl: $profileImageUrl, city: $city, district: $district, mbti: $mbti, hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class $MemberBasicInfoCopyWith<$Res>  {
  factory $MemberBasicInfoCopyWith(MemberBasicInfo value, $Res Function(MemberBasicInfo) _then) = _$MemberBasicInfoCopyWithImpl;
@useResult
$Res call({
 int memberId, int age, String nickname, String profileImageUrl, String city, String district, String mbti, List<String> hobbies
});




}
/// @nodoc
class _$MemberBasicInfoCopyWithImpl<$Res>
    implements $MemberBasicInfoCopyWith<$Res> {
  _$MemberBasicInfoCopyWithImpl(this._self, this._then);

  final MemberBasicInfo _self;
  final $Res Function(MemberBasicInfo) _then;

/// Create a copy of MemberBasicInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memberId = null,Object? age = null,Object? nickname = null,Object? profileImageUrl = null,Object? city = null,Object? district = null,Object? mbti = null,Object? hobbies = null,}) {
  return _then(_self.copyWith(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberBasicInfo].
extension MemberBasicInfoPatterns on MemberBasicInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberBasicInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberBasicInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberBasicInfo value)  $default,){
final _that = this;
switch (_that) {
case _MemberBasicInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberBasicInfo value)?  $default,){
final _that = this;
switch (_that) {
case _MemberBasicInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int memberId,  int age,  String nickname,  String profileImageUrl,  String city,  String district,  String mbti,  List<String> hobbies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberBasicInfo() when $default != null:
return $default(_that.memberId,_that.age,_that.nickname,_that.profileImageUrl,_that.city,_that.district,_that.mbti,_that.hobbies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int memberId,  int age,  String nickname,  String profileImageUrl,  String city,  String district,  String mbti,  List<String> hobbies)  $default,) {final _that = this;
switch (_that) {
case _MemberBasicInfo():
return $default(_that.memberId,_that.age,_that.nickname,_that.profileImageUrl,_that.city,_that.district,_that.mbti,_that.hobbies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int memberId,  int age,  String nickname,  String profileImageUrl,  String city,  String district,  String mbti,  List<String> hobbies)?  $default,) {final _that = this;
switch (_that) {
case _MemberBasicInfo() when $default != null:
return $default(_that.memberId,_that.age,_that.nickname,_that.profileImageUrl,_that.city,_that.district,_that.mbti,_that.hobbies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberBasicInfo implements MemberBasicInfo {
  const _MemberBasicInfo({required this.memberId, required this.age, required this.nickname, required this.profileImageUrl, required this.city, required this.district, required this.mbti, required final  List<String> hobbies}): _hobbies = hobbies;
  factory _MemberBasicInfo.fromJson(Map<String, dynamic> json) => _$MemberBasicInfoFromJson(json);

@override final  int memberId;
@override final  int age;
@override final  String nickname;
@override final  String profileImageUrl;
@override final  String city;
@override final  String district;
@override final  String mbti;
 final  List<String> _hobbies;
@override List<String> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}


/// Create a copy of MemberBasicInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberBasicInfoCopyWith<_MemberBasicInfo> get copyWith => __$MemberBasicInfoCopyWithImpl<_MemberBasicInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberBasicInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberBasicInfo&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.age, age) || other.age == age)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberId,age,nickname,profileImageUrl,city,district,mbti,const DeepCollectionEquality().hash(_hobbies));

@override
String toString() {
  return 'MemberBasicInfo(memberId: $memberId, age: $age, nickname: $nickname, profileImageUrl: $profileImageUrl, city: $city, district: $district, mbti: $mbti, hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class _$MemberBasicInfoCopyWith<$Res> implements $MemberBasicInfoCopyWith<$Res> {
  factory _$MemberBasicInfoCopyWith(_MemberBasicInfo value, $Res Function(_MemberBasicInfo) _then) = __$MemberBasicInfoCopyWithImpl;
@override @useResult
$Res call({
 int memberId, int age, String nickname, String profileImageUrl, String city, String district, String mbti, List<String> hobbies
});




}
/// @nodoc
class __$MemberBasicInfoCopyWithImpl<$Res>
    implements _$MemberBasicInfoCopyWith<$Res> {
  __$MemberBasicInfoCopyWithImpl(this._self, this._then);

  final _MemberBasicInfo _self;
  final $Res Function(_MemberBasicInfo) _then;

/// Create a copy of MemberBasicInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? age = null,Object? nickname = null,Object? profileImageUrl = null,Object? city = null,Object? district = null,Object? mbti = null,Object? hobbies = null,}) {
  return _then(_MemberBasicInfo(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,mbti: null == mbti ? _self.mbti : mbti // ignore: cast_nullable_to_non_nullable
as String,hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
