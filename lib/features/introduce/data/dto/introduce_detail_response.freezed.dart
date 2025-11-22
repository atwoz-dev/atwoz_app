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

 int get status; String get code; String get message; IntroduceDetailDTO get data;
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
 int status, String code, String message, IntroduceDetailDTO data
});


$IntroduceDetailDTOCopyWith<$Res> get data;

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
as IntroduceDetailDTO,
  ));
}
/// Create a copy of IntroduceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntroduceDetailDTOCopyWith<$Res> get data {
  
  return $IntroduceDetailDTOCopyWith<$Res>(_self.data, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String code,  String message,  IntroduceDetailDTO data)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String code,  String message,  IntroduceDetailDTO data)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String code,  String message,  IntroduceDetailDTO data)?  $default,) {final _that = this;
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
@override final  IntroduceDetailDTO data;

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
 int status, String code, String message, IntroduceDetailDTO data
});


@override $IntroduceDetailDTOCopyWith<$Res> get data;

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
as IntroduceDetailDTO,
  ));
}

/// Create a copy of IntroduceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntroduceDetailDTOCopyWith<$Res> get data {
  
  return $IntroduceDetailDTOCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$IntroduceDetailDTO {

 String get title; String get content; String? get like; String? get profileExchangeStatus; MemberBasicInfoDTO get memberBasicInfoDto;
/// Create a copy of IntroduceDetailDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceDetailDTOCopyWith<IntroduceDetailDTO> get copyWith => _$IntroduceDetailDTOCopyWithImpl<IntroduceDetailDTO>(this as IntroduceDetailDTO, _$identity);

  /// Serializes this IntroduceDetailDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceDetailDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.like, like) || other.like == like)&&(identical(other.profileExchangeStatus, profileExchangeStatus) || other.profileExchangeStatus == profileExchangeStatus)&&(identical(other.memberBasicInfoDto, memberBasicInfoDto) || other.memberBasicInfoDto == memberBasicInfoDto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,like,profileExchangeStatus,memberBasicInfoDto);

@override
String toString() {
  return 'IntroduceDetailDTO(title: $title, content: $content, like: $like, profileExchangeStatus: $profileExchangeStatus, memberBasicInfoDto: $memberBasicInfoDto)';
}


}

/// @nodoc
abstract mixin class $IntroduceDetailDTOCopyWith<$Res>  {
  factory $IntroduceDetailDTOCopyWith(IntroduceDetailDTO value, $Res Function(IntroduceDetailDTO) _then) = _$IntroduceDetailDTOCopyWithImpl;
@useResult
$Res call({
 String title, String content, String? like, String? profileExchangeStatus, MemberBasicInfoDTO memberBasicInfoDto
});


$MemberBasicInfoDTOCopyWith<$Res> get memberBasicInfoDto;

}
/// @nodoc
class _$IntroduceDetailDTOCopyWithImpl<$Res>
    implements $IntroduceDetailDTOCopyWith<$Res> {
  _$IntroduceDetailDTOCopyWithImpl(this._self, this._then);

  final IntroduceDetailDTO _self;
  final $Res Function(IntroduceDetailDTO) _then;

/// Create a copy of IntroduceDetailDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? content = null,Object? like = freezed,Object? profileExchangeStatus = freezed,Object? memberBasicInfoDto = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,like: freezed == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as String?,profileExchangeStatus: freezed == profileExchangeStatus ? _self.profileExchangeStatus : profileExchangeStatus // ignore: cast_nullable_to_non_nullable
as String?,memberBasicInfoDto: null == memberBasicInfoDto ? _self.memberBasicInfoDto : memberBasicInfoDto // ignore: cast_nullable_to_non_nullable
as MemberBasicInfoDTO,
  ));
}
/// Create a copy of IntroduceDetailDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberBasicInfoDTOCopyWith<$Res> get memberBasicInfoDto {
  
  return $MemberBasicInfoDTOCopyWith<$Res>(_self.memberBasicInfoDto, (value) {
    return _then(_self.copyWith(memberBasicInfoDto: value));
  });
}
}


/// Adds pattern-matching-related methods to [IntroduceDetailDTO].
extension IntroduceDetailDTOPatterns on IntroduceDetailDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceDetailDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceDetailDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceDetailDTO value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceDetailDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceDetailDTO value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceDetailDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String content,  String? like,  String? profileExchangeStatus,  MemberBasicInfoDTO memberBasicInfoDto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceDetailDTO() when $default != null:
return $default(_that.title,_that.content,_that.like,_that.profileExchangeStatus,_that.memberBasicInfoDto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String content,  String? like,  String? profileExchangeStatus,  MemberBasicInfoDTO memberBasicInfoDto)  $default,) {final _that = this;
switch (_that) {
case _IntroduceDetailDTO():
return $default(_that.title,_that.content,_that.like,_that.profileExchangeStatus,_that.memberBasicInfoDto);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String content,  String? like,  String? profileExchangeStatus,  MemberBasicInfoDTO memberBasicInfoDto)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceDetailDTO() when $default != null:
return $default(_that.title,_that.content,_that.like,_that.profileExchangeStatus,_that.memberBasicInfoDto);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IntroduceDetailDTO implements IntroduceDetailDTO {
  const _IntroduceDetailDTO({required this.title, required this.content, this.like, this.profileExchangeStatus, required this.memberBasicInfoDto});
  factory _IntroduceDetailDTO.fromJson(Map<String, dynamic> json) => _$IntroduceDetailDTOFromJson(json);

@override final  String title;
@override final  String content;
@override final  String? like;
@override final  String? profileExchangeStatus;
@override final  MemberBasicInfoDTO memberBasicInfoDto;

/// Create a copy of IntroduceDetailDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceDetailDTOCopyWith<_IntroduceDetailDTO> get copyWith => __$IntroduceDetailDTOCopyWithImpl<_IntroduceDetailDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IntroduceDetailDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceDetailDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.like, like) || other.like == like)&&(identical(other.profileExchangeStatus, profileExchangeStatus) || other.profileExchangeStatus == profileExchangeStatus)&&(identical(other.memberBasicInfoDto, memberBasicInfoDto) || other.memberBasicInfoDto == memberBasicInfoDto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,like,profileExchangeStatus,memberBasicInfoDto);

@override
String toString() {
  return 'IntroduceDetailDTO(title: $title, content: $content, like: $like, profileExchangeStatus: $profileExchangeStatus, memberBasicInfoDto: $memberBasicInfoDto)';
}


}

/// @nodoc
abstract mixin class _$IntroduceDetailDTOCopyWith<$Res> implements $IntroduceDetailDTOCopyWith<$Res> {
  factory _$IntroduceDetailDTOCopyWith(_IntroduceDetailDTO value, $Res Function(_IntroduceDetailDTO) _then) = __$IntroduceDetailDTOCopyWithImpl;
@override @useResult
$Res call({
 String title, String content, String? like, String? profileExchangeStatus, MemberBasicInfoDTO memberBasicInfoDto
});


@override $MemberBasicInfoDTOCopyWith<$Res> get memberBasicInfoDto;

}
/// @nodoc
class __$IntroduceDetailDTOCopyWithImpl<$Res>
    implements _$IntroduceDetailDTOCopyWith<$Res> {
  __$IntroduceDetailDTOCopyWithImpl(this._self, this._then);

  final _IntroduceDetailDTO _self;
  final $Res Function(_IntroduceDetailDTO) _then;

/// Create a copy of IntroduceDetailDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? content = null,Object? like = freezed,Object? profileExchangeStatus = freezed,Object? memberBasicInfoDto = null,}) {
  return _then(_IntroduceDetailDTO(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,like: freezed == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as String?,profileExchangeStatus: freezed == profileExchangeStatus ? _self.profileExchangeStatus : profileExchangeStatus // ignore: cast_nullable_to_non_nullable
as String?,memberBasicInfoDto: null == memberBasicInfoDto ? _self.memberBasicInfoDto : memberBasicInfoDto // ignore: cast_nullable_to_non_nullable
as MemberBasicInfoDTO,
  ));
}

/// Create a copy of IntroduceDetailDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberBasicInfoDTOCopyWith<$Res> get memberBasicInfoDto {
  
  return $MemberBasicInfoDTOCopyWith<$Res>(_self.memberBasicInfoDto, (value) {
    return _then(_self.copyWith(memberBasicInfoDto: value));
  });
}
}


/// @nodoc
mixin _$MemberBasicInfoDTO {

 int get memberId; int get age; String get nickname; String get profileImageUrl; String get city; String get district; String get mbti; List<String> get hobbies;
/// Create a copy of MemberBasicInfoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberBasicInfoDTOCopyWith<MemberBasicInfoDTO> get copyWith => _$MemberBasicInfoDTOCopyWithImpl<MemberBasicInfoDTO>(this as MemberBasicInfoDTO, _$identity);

  /// Serializes this MemberBasicInfoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberBasicInfoDTO&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.age, age) || other.age == age)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&const DeepCollectionEquality().equals(other.hobbies, hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberId,age,nickname,profileImageUrl,city,district,mbti,const DeepCollectionEquality().hash(hobbies));

@override
String toString() {
  return 'MemberBasicInfoDTO(memberId: $memberId, age: $age, nickname: $nickname, profileImageUrl: $profileImageUrl, city: $city, district: $district, mbti: $mbti, hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class $MemberBasicInfoDTOCopyWith<$Res>  {
  factory $MemberBasicInfoDTOCopyWith(MemberBasicInfoDTO value, $Res Function(MemberBasicInfoDTO) _then) = _$MemberBasicInfoDTOCopyWithImpl;
@useResult
$Res call({
 int memberId, int age, String nickname, String profileImageUrl, String city, String district, String mbti, List<String> hobbies
});




}
/// @nodoc
class _$MemberBasicInfoDTOCopyWithImpl<$Res>
    implements $MemberBasicInfoDTOCopyWith<$Res> {
  _$MemberBasicInfoDTOCopyWithImpl(this._self, this._then);

  final MemberBasicInfoDTO _self;
  final $Res Function(MemberBasicInfoDTO) _then;

/// Create a copy of MemberBasicInfoDTO
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


/// Adds pattern-matching-related methods to [MemberBasicInfoDTO].
extension MemberBasicInfoDTOPatterns on MemberBasicInfoDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberBasicInfoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberBasicInfoDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberBasicInfoDTO value)  $default,){
final _that = this;
switch (_that) {
case _MemberBasicInfoDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberBasicInfoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _MemberBasicInfoDTO() when $default != null:
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
case _MemberBasicInfoDTO() when $default != null:
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
case _MemberBasicInfoDTO():
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
case _MemberBasicInfoDTO() when $default != null:
return $default(_that.memberId,_that.age,_that.nickname,_that.profileImageUrl,_that.city,_that.district,_that.mbti,_that.hobbies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberBasicInfoDTO implements MemberBasicInfoDTO {
  const _MemberBasicInfoDTO({required this.memberId, required this.age, required this.nickname, required this.profileImageUrl, required this.city, required this.district, required this.mbti, required final  List<String> hobbies}): _hobbies = hobbies;
  factory _MemberBasicInfoDTO.fromJson(Map<String, dynamic> json) => _$MemberBasicInfoDTOFromJson(json);

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


/// Create a copy of MemberBasicInfoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberBasicInfoDTOCopyWith<_MemberBasicInfoDTO> get copyWith => __$MemberBasicInfoDTOCopyWithImpl<_MemberBasicInfoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberBasicInfoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberBasicInfoDTO&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.age, age) || other.age == age)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,memberId,age,nickname,profileImageUrl,city,district,mbti,const DeepCollectionEquality().hash(_hobbies));

@override
String toString() {
  return 'MemberBasicInfoDTO(memberId: $memberId, age: $age, nickname: $nickname, profileImageUrl: $profileImageUrl, city: $city, district: $district, mbti: $mbti, hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class _$MemberBasicInfoDTOCopyWith<$Res> implements $MemberBasicInfoDTOCopyWith<$Res> {
  factory _$MemberBasicInfoDTOCopyWith(_MemberBasicInfoDTO value, $Res Function(_MemberBasicInfoDTO) _then) = __$MemberBasicInfoDTOCopyWithImpl;
@override @useResult
$Res call({
 int memberId, int age, String nickname, String profileImageUrl, String city, String district, String mbti, List<String> hobbies
});




}
/// @nodoc
class __$MemberBasicInfoDTOCopyWithImpl<$Res>
    implements _$MemberBasicInfoDTOCopyWith<$Res> {
  __$MemberBasicInfoDTOCopyWithImpl(this._self, this._then);

  final _MemberBasicInfoDTO _self;
  final $Res Function(_MemberBasicInfoDTO) _then;

/// Create a copy of MemberBasicInfoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? age = null,Object? nickname = null,Object? profileImageUrl = null,Object? city = null,Object? district = null,Object? mbti = null,Object? hobbies = null,}) {
  return _then(_MemberBasicInfoDTO(
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
