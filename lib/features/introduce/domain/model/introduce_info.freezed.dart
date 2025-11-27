// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduce_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroduceInfo {

 int get id; int get yearOfBirth; String get nickname; String get profileUrl; String get title; DateTime get createdAt;
/// Create a copy of IntroduceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceInfoCopyWith<IntroduceInfo> get copyWith => _$IntroduceInfoCopyWithImpl<IntroduceInfo>(this as IntroduceInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.yearOfBirth, yearOfBirth) || other.yearOfBirth == yearOfBirth)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.title, title) || other.title == title)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,yearOfBirth,nickname,profileUrl,title,createdAt);

@override
String toString() {
  return 'IntroduceInfo(id: $id, yearOfBirth: $yearOfBirth, nickname: $nickname, profileUrl: $profileUrl, title: $title, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $IntroduceInfoCopyWith<$Res>  {
  factory $IntroduceInfoCopyWith(IntroduceInfo value, $Res Function(IntroduceInfo) _then) = _$IntroduceInfoCopyWithImpl;
@useResult
$Res call({
 int id, int yearOfBirth, String nickname, String profileUrl, String title, DateTime createdAt
});




}
/// @nodoc
class _$IntroduceInfoCopyWithImpl<$Res>
    implements $IntroduceInfoCopyWith<$Res> {
  _$IntroduceInfoCopyWithImpl(this._self, this._then);

  final IntroduceInfo _self;
  final $Res Function(IntroduceInfo) _then;

/// Create a copy of IntroduceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? yearOfBirth = null,Object? nickname = null,Object? profileUrl = null,Object? title = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,yearOfBirth: null == yearOfBirth ? _self.yearOfBirth : yearOfBirth // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileUrl: null == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [IntroduceInfo].
extension IntroduceInfoPatterns on IntroduceInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceInfo value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceInfo value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int yearOfBirth,  String nickname,  String profileUrl,  String title,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceInfo() when $default != null:
return $default(_that.id,_that.yearOfBirth,_that.nickname,_that.profileUrl,_that.title,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int yearOfBirth,  String nickname,  String profileUrl,  String title,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _IntroduceInfo():
return $default(_that.id,_that.yearOfBirth,_that.nickname,_that.profileUrl,_that.title,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int yearOfBirth,  String nickname,  String profileUrl,  String title,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceInfo() when $default != null:
return $default(_that.id,_that.yearOfBirth,_that.nickname,_that.profileUrl,_that.title,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _IntroduceInfo implements IntroduceInfo {
  const _IntroduceInfo({required this.id, required this.yearOfBirth, required this.nickname, required this.profileUrl, required this.title, required this.createdAt});
  

@override final  int id;
@override final  int yearOfBirth;
@override final  String nickname;
@override final  String profileUrl;
@override final  String title;
@override final  DateTime createdAt;

/// Create a copy of IntroduceInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceInfoCopyWith<_IntroduceInfo> get copyWith => __$IntroduceInfoCopyWithImpl<_IntroduceInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.yearOfBirth, yearOfBirth) || other.yearOfBirth == yearOfBirth)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.title, title) || other.title == title)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,yearOfBirth,nickname,profileUrl,title,createdAt);

@override
String toString() {
  return 'IntroduceInfo(id: $id, yearOfBirth: $yearOfBirth, nickname: $nickname, profileUrl: $profileUrl, title: $title, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$IntroduceInfoCopyWith<$Res> implements $IntroduceInfoCopyWith<$Res> {
  factory _$IntroduceInfoCopyWith(_IntroduceInfo value, $Res Function(_IntroduceInfo) _then) = __$IntroduceInfoCopyWithImpl;
@override @useResult
$Res call({
 int id, int yearOfBirth, String nickname, String profileUrl, String title, DateTime createdAt
});




}
/// @nodoc
class __$IntroduceInfoCopyWithImpl<$Res>
    implements _$IntroduceInfoCopyWith<$Res> {
  __$IntroduceInfoCopyWithImpl(this._self, this._then);

  final _IntroduceInfo _self;
  final $Res Function(_IntroduceInfo) _then;

/// Create a copy of IntroduceInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? yearOfBirth = null,Object? nickname = null,Object? profileUrl = null,Object? title = null,Object? createdAt = null,}) {
  return _then(_IntroduceInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,yearOfBirth: null == yearOfBirth ? _self.yearOfBirth : yearOfBirth // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileUrl: null == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
