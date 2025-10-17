// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduced_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroducedProfile {

 int get memberId; String get profileImageUrl;// imageUrl
 List<String> get tags;// 취미 + 종교 + mbti
 String get interviewContent;// 인터뷰 첫 대답
 bool get isIntroduced;// 프로필 소개 여부
 FavoriteType? get favoriteType;
/// Create a copy of IntroducedProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroducedProfileCopyWith<IntroducedProfile> get copyWith => _$IntroducedProfileCopyWithImpl<IntroducedProfile>(this as IntroducedProfile, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroducedProfile&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.interviewContent, interviewContent) || other.interviewContent == interviewContent)&&(identical(other.isIntroduced, isIntroduced) || other.isIntroduced == isIntroduced)&&(identical(other.favoriteType, favoriteType) || other.favoriteType == favoriteType));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,profileImageUrl,const DeepCollectionEquality().hash(tags),interviewContent,isIntroduced,favoriteType);

@override
String toString() {
  return 'IntroducedProfile(memberId: $memberId, profileImageUrl: $profileImageUrl, tags: $tags, interviewContent: $interviewContent, isIntroduced: $isIntroduced, favoriteType: $favoriteType)';
}


}

/// @nodoc
abstract mixin class $IntroducedProfileCopyWith<$Res>  {
  factory $IntroducedProfileCopyWith(IntroducedProfile value, $Res Function(IntroducedProfile) _then) = _$IntroducedProfileCopyWithImpl;
@useResult
$Res call({
 int memberId, String profileImageUrl, List<String> tags, String interviewContent, bool isIntroduced, FavoriteType? favoriteType
});




}
/// @nodoc
class _$IntroducedProfileCopyWithImpl<$Res>
    implements $IntroducedProfileCopyWith<$Res> {
  _$IntroducedProfileCopyWithImpl(this._self, this._then);

  final IntroducedProfile _self;
  final $Res Function(IntroducedProfile) _then;

/// Create a copy of IntroducedProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memberId = null,Object? profileImageUrl = null,Object? tags = null,Object? interviewContent = null,Object? isIntroduced = null,Object? favoriteType = freezed,}) {
  return _then(_self.copyWith(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,interviewContent: null == interviewContent ? _self.interviewContent : interviewContent // ignore: cast_nullable_to_non_nullable
as String,isIntroduced: null == isIntroduced ? _self.isIntroduced : isIntroduced // ignore: cast_nullable_to_non_nullable
as bool,favoriteType: freezed == favoriteType ? _self.favoriteType : favoriteType // ignore: cast_nullable_to_non_nullable
as FavoriteType?,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroducedProfile].
extension IntroducedProfilePatterns on IntroducedProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroducedProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroducedProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroducedProfile value)  $default,){
final _that = this;
switch (_that) {
case _IntroducedProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroducedProfile value)?  $default,){
final _that = this;
switch (_that) {
case _IntroducedProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int memberId,  String profileImageUrl,  List<String> tags,  String interviewContent,  bool isIntroduced,  FavoriteType? favoriteType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroducedProfile() when $default != null:
return $default(_that.memberId,_that.profileImageUrl,_that.tags,_that.interviewContent,_that.isIntroduced,_that.favoriteType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int memberId,  String profileImageUrl,  List<String> tags,  String interviewContent,  bool isIntroduced,  FavoriteType? favoriteType)  $default,) {final _that = this;
switch (_that) {
case _IntroducedProfile():
return $default(_that.memberId,_that.profileImageUrl,_that.tags,_that.interviewContent,_that.isIntroduced,_that.favoriteType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int memberId,  String profileImageUrl,  List<String> tags,  String interviewContent,  bool isIntroduced,  FavoriteType? favoriteType)?  $default,) {final _that = this;
switch (_that) {
case _IntroducedProfile() when $default != null:
return $default(_that.memberId,_that.profileImageUrl,_that.tags,_that.interviewContent,_that.isIntroduced,_that.favoriteType);case _:
  return null;

}
}

}

/// @nodoc


class _IntroducedProfile implements IntroducedProfile {
  const _IntroducedProfile({required this.memberId, required this.profileImageUrl, required final  List<String> tags, required this.interviewContent, required this.isIntroduced, required this.favoriteType}): _tags = tags;
  

@override final  int memberId;
@override final  String profileImageUrl;
// imageUrl
 final  List<String> _tags;
// imageUrl
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

// 취미 + 종교 + mbti
@override final  String interviewContent;
// 인터뷰 첫 대답
@override final  bool isIntroduced;
// 프로필 소개 여부
@override final  FavoriteType? favoriteType;

/// Create a copy of IntroducedProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroducedProfileCopyWith<_IntroducedProfile> get copyWith => __$IntroducedProfileCopyWithImpl<_IntroducedProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroducedProfile&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.interviewContent, interviewContent) || other.interviewContent == interviewContent)&&(identical(other.isIntroduced, isIntroduced) || other.isIntroduced == isIntroduced)&&(identical(other.favoriteType, favoriteType) || other.favoriteType == favoriteType));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,profileImageUrl,const DeepCollectionEquality().hash(_tags),interviewContent,isIntroduced,favoriteType);

@override
String toString() {
  return 'IntroducedProfile(memberId: $memberId, profileImageUrl: $profileImageUrl, tags: $tags, interviewContent: $interviewContent, isIntroduced: $isIntroduced, favoriteType: $favoriteType)';
}


}

/// @nodoc
abstract mixin class _$IntroducedProfileCopyWith<$Res> implements $IntroducedProfileCopyWith<$Res> {
  factory _$IntroducedProfileCopyWith(_IntroducedProfile value, $Res Function(_IntroducedProfile) _then) = __$IntroducedProfileCopyWithImpl;
@override @useResult
$Res call({
 int memberId, String profileImageUrl, List<String> tags, String interviewContent, bool isIntroduced, FavoriteType? favoriteType
});




}
/// @nodoc
class __$IntroducedProfileCopyWithImpl<$Res>
    implements _$IntroducedProfileCopyWith<$Res> {
  __$IntroducedProfileCopyWithImpl(this._self, this._then);

  final _IntroducedProfile _self;
  final $Res Function(_IntroducedProfile) _then;

/// Create a copy of IntroducedProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? profileImageUrl = null,Object? tags = null,Object? interviewContent = null,Object? isIntroduced = null,Object? favoriteType = freezed,}) {
  return _then(_IntroducedProfile(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,interviewContent: null == interviewContent ? _self.interviewContent : interviewContent // ignore: cast_nullable_to_non_nullable
as String,isIntroduced: null == isIntroduced ? _self.isIntroduced : isIntroduced // ignore: cast_nullable_to_non_nullable
as bool,favoriteType: freezed == favoriteType ? _self.favoriteType : favoriteType // ignore: cast_nullable_to_non_nullable
as FavoriteType?,
  ));
}


}

// dart format on
