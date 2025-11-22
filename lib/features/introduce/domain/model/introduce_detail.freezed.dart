// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduce_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroduceDetail {

 String get title; String get content; MemberBasicInfo get memberBasicInfo; FavoriteType? get like; ProfileExchangeStatus get profileExchangeStatus;
/// Create a copy of IntroduceDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceDetailCopyWith<IntroduceDetail> get copyWith => _$IntroduceDetailCopyWithImpl<IntroduceDetail>(this as IntroduceDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceDetail&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.memberBasicInfo, memberBasicInfo) || other.memberBasicInfo == memberBasicInfo)&&(identical(other.like, like) || other.like == like)&&(identical(other.profileExchangeStatus, profileExchangeStatus) || other.profileExchangeStatus == profileExchangeStatus));
}


@override
int get hashCode => Object.hash(runtimeType,title,content,memberBasicInfo,like,profileExchangeStatus);

@override
String toString() {
  return 'IntroduceDetail(title: $title, content: $content, memberBasicInfo: $memberBasicInfo, like: $like, profileExchangeStatus: $profileExchangeStatus)';
}


}

/// @nodoc
abstract mixin class $IntroduceDetailCopyWith<$Res>  {
  factory $IntroduceDetailCopyWith(IntroduceDetail value, $Res Function(IntroduceDetail) _then) = _$IntroduceDetailCopyWithImpl;
@useResult
$Res call({
 String title, String content, MemberBasicInfo memberBasicInfo, FavoriteType? like, ProfileExchangeStatus profileExchangeStatus
});


$MemberBasicInfoCopyWith<$Res> get memberBasicInfo;

}
/// @nodoc
class _$IntroduceDetailCopyWithImpl<$Res>
    implements $IntroduceDetailCopyWith<$Res> {
  _$IntroduceDetailCopyWithImpl(this._self, this._then);

  final IntroduceDetail _self;
  final $Res Function(IntroduceDetail) _then;

/// Create a copy of IntroduceDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? content = null,Object? memberBasicInfo = null,Object? like = freezed,Object? profileExchangeStatus = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,memberBasicInfo: null == memberBasicInfo ? _self.memberBasicInfo : memberBasicInfo // ignore: cast_nullable_to_non_nullable
as MemberBasicInfo,like: freezed == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as FavoriteType?,profileExchangeStatus: null == profileExchangeStatus ? _self.profileExchangeStatus : profileExchangeStatus // ignore: cast_nullable_to_non_nullable
as ProfileExchangeStatus,
  ));
}
/// Create a copy of IntroduceDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberBasicInfoCopyWith<$Res> get memberBasicInfo {
  
  return $MemberBasicInfoCopyWith<$Res>(_self.memberBasicInfo, (value) {
    return _then(_self.copyWith(memberBasicInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [IntroduceDetail].
extension IntroduceDetailPatterns on IntroduceDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceDetail value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceDetail value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String content,  MemberBasicInfo memberBasicInfo,  FavoriteType? like,  ProfileExchangeStatus profileExchangeStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceDetail() when $default != null:
return $default(_that.title,_that.content,_that.memberBasicInfo,_that.like,_that.profileExchangeStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String content,  MemberBasicInfo memberBasicInfo,  FavoriteType? like,  ProfileExchangeStatus profileExchangeStatus)  $default,) {final _that = this;
switch (_that) {
case _IntroduceDetail():
return $default(_that.title,_that.content,_that.memberBasicInfo,_that.like,_that.profileExchangeStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String content,  MemberBasicInfo memberBasicInfo,  FavoriteType? like,  ProfileExchangeStatus profileExchangeStatus)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceDetail() when $default != null:
return $default(_that.title,_that.content,_that.memberBasicInfo,_that.like,_that.profileExchangeStatus);case _:
  return null;

}
}

}

/// @nodoc


class _IntroduceDetail implements IntroduceDetail {
  const _IntroduceDetail({required this.title, required this.content, required this.memberBasicInfo, this.like, required this.profileExchangeStatus});
  

@override final  String title;
@override final  String content;
@override final  MemberBasicInfo memberBasicInfo;
@override final  FavoriteType? like;
@override final  ProfileExchangeStatus profileExchangeStatus;

/// Create a copy of IntroduceDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceDetailCopyWith<_IntroduceDetail> get copyWith => __$IntroduceDetailCopyWithImpl<_IntroduceDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceDetail&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.memberBasicInfo, memberBasicInfo) || other.memberBasicInfo == memberBasicInfo)&&(identical(other.like, like) || other.like == like)&&(identical(other.profileExchangeStatus, profileExchangeStatus) || other.profileExchangeStatus == profileExchangeStatus));
}


@override
int get hashCode => Object.hash(runtimeType,title,content,memberBasicInfo,like,profileExchangeStatus);

@override
String toString() {
  return 'IntroduceDetail(title: $title, content: $content, memberBasicInfo: $memberBasicInfo, like: $like, profileExchangeStatus: $profileExchangeStatus)';
}


}

/// @nodoc
abstract mixin class _$IntroduceDetailCopyWith<$Res> implements $IntroduceDetailCopyWith<$Res> {
  factory _$IntroduceDetailCopyWith(_IntroduceDetail value, $Res Function(_IntroduceDetail) _then) = __$IntroduceDetailCopyWithImpl;
@override @useResult
$Res call({
 String title, String content, MemberBasicInfo memberBasicInfo, FavoriteType? like, ProfileExchangeStatus profileExchangeStatus
});


@override $MemberBasicInfoCopyWith<$Res> get memberBasicInfo;

}
/// @nodoc
class __$IntroduceDetailCopyWithImpl<$Res>
    implements _$IntroduceDetailCopyWith<$Res> {
  __$IntroduceDetailCopyWithImpl(this._self, this._then);

  final _IntroduceDetail _self;
  final $Res Function(_IntroduceDetail) _then;

/// Create a copy of IntroduceDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? content = null,Object? memberBasicInfo = null,Object? like = freezed,Object? profileExchangeStatus = null,}) {
  return _then(_IntroduceDetail(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,memberBasicInfo: null == memberBasicInfo ? _self.memberBasicInfo : memberBasicInfo // ignore: cast_nullable_to_non_nullable
as MemberBasicInfo,like: freezed == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as FavoriteType?,profileExchangeStatus: null == profileExchangeStatus ? _self.profileExchangeStatus : profileExchangeStatus // ignore: cast_nullable_to_non_nullable
as ProfileExchangeStatus,
  ));
}

/// Create a copy of IntroduceDetail
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



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberBasicInfo&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.age, age) || other.age == age)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&const DeepCollectionEquality().equals(other.hobbies, hobbies));
}


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


class _MemberBasicInfo implements MemberBasicInfo {
  const _MemberBasicInfo({required this.memberId, required this.age, required this.nickname, required this.profileImageUrl, required this.city, required this.district, required this.mbti, required final  List<String> hobbies}): _hobbies = hobbies;
  

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
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberBasicInfo&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.age, age) || other.age == age)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.mbti, mbti) || other.mbti == mbti)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies));
}


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
