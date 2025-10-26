// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Member {

 int get id; String get phoneNumber; MemberProfile get memberProfile; bool get isVip; bool get isDatingExamSubmitted; ActivityStatus get activityStatus; HeartBalance get heartBalance;
/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberCopyWith<Member> get copyWith => _$MemberCopyWithImpl<Member>(this as Member, _$identity);

  /// Serializes this Member to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Member&&(identical(other.id, id) || other.id == id)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.memberProfile, memberProfile) || other.memberProfile == memberProfile)&&(identical(other.isVip, isVip) || other.isVip == isVip)&&(identical(other.isDatingExamSubmitted, isDatingExamSubmitted) || other.isDatingExamSubmitted == isDatingExamSubmitted)&&(identical(other.activityStatus, activityStatus) || other.activityStatus == activityStatus)&&(identical(other.heartBalance, heartBalance) || other.heartBalance == heartBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phoneNumber,memberProfile,isVip,isDatingExamSubmitted,activityStatus,heartBalance);

@override
String toString() {
  return 'Member(id: $id, phoneNumber: $phoneNumber, memberProfile: $memberProfile, isVip: $isVip, isDatingExamSubmitted: $isDatingExamSubmitted, activityStatus: $activityStatus, heartBalance: $heartBalance)';
}


}

/// @nodoc
abstract mixin class $MemberCopyWith<$Res>  {
  factory $MemberCopyWith(Member value, $Res Function(Member) _then) = _$MemberCopyWithImpl;
@useResult
$Res call({
 int id, String phoneNumber, MemberProfile memberProfile, bool isVip, bool isDatingExamSubmitted, ActivityStatus activityStatus, HeartBalance heartBalance
});


$MemberProfileCopyWith<$Res> get memberProfile;$HeartBalanceCopyWith<$Res> get heartBalance;

}
/// @nodoc
class _$MemberCopyWithImpl<$Res>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._self, this._then);

  final Member _self;
  final $Res Function(Member) _then;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phoneNumber = null,Object? memberProfile = null,Object? isVip = null,Object? isDatingExamSubmitted = null,Object? activityStatus = null,Object? heartBalance = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,memberProfile: null == memberProfile ? _self.memberProfile : memberProfile // ignore: cast_nullable_to_non_nullable
as MemberProfile,isVip: null == isVip ? _self.isVip : isVip // ignore: cast_nullable_to_non_nullable
as bool,isDatingExamSubmitted: null == isDatingExamSubmitted ? _self.isDatingExamSubmitted : isDatingExamSubmitted // ignore: cast_nullable_to_non_nullable
as bool,activityStatus: null == activityStatus ? _self.activityStatus : activityStatus // ignore: cast_nullable_to_non_nullable
as ActivityStatus,heartBalance: null == heartBalance ? _self.heartBalance : heartBalance // ignore: cast_nullable_to_non_nullable
as HeartBalance,
  ));
}
/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberProfileCopyWith<$Res> get memberProfile {
  
  return $MemberProfileCopyWith<$Res>(_self.memberProfile, (value) {
    return _then(_self.copyWith(memberProfile: value));
  });
}/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeartBalanceCopyWith<$Res> get heartBalance {
  
  return $HeartBalanceCopyWith<$Res>(_self.heartBalance, (value) {
    return _then(_self.copyWith(heartBalance: value));
  });
}
}


/// Adds pattern-matching-related methods to [Member].
extension MemberPatterns on Member {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Member value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Member() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Member value)  $default,){
final _that = this;
switch (_that) {
case _Member():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Member value)?  $default,){
final _that = this;
switch (_that) {
case _Member() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String phoneNumber,  MemberProfile memberProfile,  bool isVip,  bool isDatingExamSubmitted,  ActivityStatus activityStatus,  HeartBalance heartBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Member() when $default != null:
return $default(_that.id,_that.phoneNumber,_that.memberProfile,_that.isVip,_that.isDatingExamSubmitted,_that.activityStatus,_that.heartBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String phoneNumber,  MemberProfile memberProfile,  bool isVip,  bool isDatingExamSubmitted,  ActivityStatus activityStatus,  HeartBalance heartBalance)  $default,) {final _that = this;
switch (_that) {
case _Member():
return $default(_that.id,_that.phoneNumber,_that.memberProfile,_that.isVip,_that.isDatingExamSubmitted,_that.activityStatus,_that.heartBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String phoneNumber,  MemberProfile memberProfile,  bool isVip,  bool isDatingExamSubmitted,  ActivityStatus activityStatus,  HeartBalance heartBalance)?  $default,) {final _that = this;
switch (_that) {
case _Member() when $default != null:
return $default(_that.id,_that.phoneNumber,_that.memberProfile,_that.isVip,_that.isDatingExamSubmitted,_that.activityStatus,_that.heartBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Member implements Member {
  const _Member({required this.id, required this.phoneNumber, required this.memberProfile, required this.isVip, required this.isDatingExamSubmitted, required this.activityStatus, required this.heartBalance});
  factory _Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

@override final  int id;
@override final  String phoneNumber;
@override final  MemberProfile memberProfile;
@override final  bool isVip;
@override final  bool isDatingExamSubmitted;
@override final  ActivityStatus activityStatus;
@override final  HeartBalance heartBalance;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberCopyWith<_Member> get copyWith => __$MemberCopyWithImpl<_Member>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Member&&(identical(other.id, id) || other.id == id)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.memberProfile, memberProfile) || other.memberProfile == memberProfile)&&(identical(other.isVip, isVip) || other.isVip == isVip)&&(identical(other.isDatingExamSubmitted, isDatingExamSubmitted) || other.isDatingExamSubmitted == isDatingExamSubmitted)&&(identical(other.activityStatus, activityStatus) || other.activityStatus == activityStatus)&&(identical(other.heartBalance, heartBalance) || other.heartBalance == heartBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phoneNumber,memberProfile,isVip,isDatingExamSubmitted,activityStatus,heartBalance);

@override
String toString() {
  return 'Member(id: $id, phoneNumber: $phoneNumber, memberProfile: $memberProfile, isVip: $isVip, isDatingExamSubmitted: $isDatingExamSubmitted, activityStatus: $activityStatus, heartBalance: $heartBalance)';
}


}

/// @nodoc
abstract mixin class _$MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$MemberCopyWith(_Member value, $Res Function(_Member) _then) = __$MemberCopyWithImpl;
@override @useResult
$Res call({
 int id, String phoneNumber, MemberProfile memberProfile, bool isVip, bool isDatingExamSubmitted, ActivityStatus activityStatus, HeartBalance heartBalance
});


@override $MemberProfileCopyWith<$Res> get memberProfile;@override $HeartBalanceCopyWith<$Res> get heartBalance;

}
/// @nodoc
class __$MemberCopyWithImpl<$Res>
    implements _$MemberCopyWith<$Res> {
  __$MemberCopyWithImpl(this._self, this._then);

  final _Member _self;
  final $Res Function(_Member) _then;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phoneNumber = null,Object? memberProfile = null,Object? isVip = null,Object? isDatingExamSubmitted = null,Object? activityStatus = null,Object? heartBalance = null,}) {
  return _then(_Member(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,memberProfile: null == memberProfile ? _self.memberProfile : memberProfile // ignore: cast_nullable_to_non_nullable
as MemberProfile,isVip: null == isVip ? _self.isVip : isVip // ignore: cast_nullable_to_non_nullable
as bool,isDatingExamSubmitted: null == isDatingExamSubmitted ? _self.isDatingExamSubmitted : isDatingExamSubmitted // ignore: cast_nullable_to_non_nullable
as bool,activityStatus: null == activityStatus ? _self.activityStatus : activityStatus // ignore: cast_nullable_to_non_nullable
as ActivityStatus,heartBalance: null == heartBalance ? _self.heartBalance : heartBalance // ignore: cast_nullable_to_non_nullable
as HeartBalance,
  ));
}

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberProfileCopyWith<$Res> get memberProfile {
  
  return $MemberProfileCopyWith<$Res>(_self.memberProfile, (value) {
    return _then(_self.copyWith(memberProfile: value));
  });
}/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeartBalanceCopyWith<$Res> get heartBalance {
  
  return $HeartBalanceCopyWith<$Res>(_self.heartBalance, (value) {
    return _then(_self.copyWith(heartBalance: value));
  });
}
}


/// @nodoc
mixin _$MemberProfile {

 String get gender; bool get isProfileSettingNeeded; int get age; int get height;
/// Create a copy of MemberProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberProfileCopyWith<MemberProfile> get copyWith => _$MemberProfileCopyWithImpl<MemberProfile>(this as MemberProfile, _$identity);

  /// Serializes this MemberProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberProfile&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isProfileSettingNeeded, isProfileSettingNeeded) || other.isProfileSettingNeeded == isProfileSettingNeeded)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,isProfileSettingNeeded,age,height);

@override
String toString() {
  return 'MemberProfile(gender: $gender, isProfileSettingNeeded: $isProfileSettingNeeded, age: $age, height: $height)';
}


}

/// @nodoc
abstract mixin class $MemberProfileCopyWith<$Res>  {
  factory $MemberProfileCopyWith(MemberProfile value, $Res Function(MemberProfile) _then) = _$MemberProfileCopyWithImpl;
@useResult
$Res call({
 String gender, bool isProfileSettingNeeded, int age, int height
});




}
/// @nodoc
class _$MemberProfileCopyWithImpl<$Res>
    implements $MemberProfileCopyWith<$Res> {
  _$MemberProfileCopyWithImpl(this._self, this._then);

  final MemberProfile _self;
  final $Res Function(MemberProfile) _then;

/// Create a copy of MemberProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gender = null,Object? isProfileSettingNeeded = null,Object? age = null,Object? height = null,}) {
  return _then(_self.copyWith(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isProfileSettingNeeded: null == isProfileSettingNeeded ? _self.isProfileSettingNeeded : isProfileSettingNeeded // ignore: cast_nullable_to_non_nullable
as bool,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberProfile].
extension MemberProfilePatterns on MemberProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberProfile value)  $default,){
final _that = this;
switch (_that) {
case _MemberProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberProfile value)?  $default,){
final _that = this;
switch (_that) {
case _MemberProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gender,  bool isProfileSettingNeeded,  int age,  int height)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberProfile() when $default != null:
return $default(_that.gender,_that.isProfileSettingNeeded,_that.age,_that.height);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gender,  bool isProfileSettingNeeded,  int age,  int height)  $default,) {final _that = this;
switch (_that) {
case _MemberProfile():
return $default(_that.gender,_that.isProfileSettingNeeded,_that.age,_that.height);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gender,  bool isProfileSettingNeeded,  int age,  int height)?  $default,) {final _that = this;
switch (_that) {
case _MemberProfile() when $default != null:
return $default(_that.gender,_that.isProfileSettingNeeded,_that.age,_that.height);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberProfile implements MemberProfile {
  const _MemberProfile({required this.gender, required this.isProfileSettingNeeded, required this.age, required this.height});
  factory _MemberProfile.fromJson(Map<String, dynamic> json) => _$MemberProfileFromJson(json);

@override final  String gender;
@override final  bool isProfileSettingNeeded;
@override final  int age;
@override final  int height;

/// Create a copy of MemberProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberProfileCopyWith<_MemberProfile> get copyWith => __$MemberProfileCopyWithImpl<_MemberProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberProfile&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isProfileSettingNeeded, isProfileSettingNeeded) || other.isProfileSettingNeeded == isProfileSettingNeeded)&&(identical(other.age, age) || other.age == age)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,isProfileSettingNeeded,age,height);

@override
String toString() {
  return 'MemberProfile(gender: $gender, isProfileSettingNeeded: $isProfileSettingNeeded, age: $age, height: $height)';
}


}

/// @nodoc
abstract mixin class _$MemberProfileCopyWith<$Res> implements $MemberProfileCopyWith<$Res> {
  factory _$MemberProfileCopyWith(_MemberProfile value, $Res Function(_MemberProfile) _then) = __$MemberProfileCopyWithImpl;
@override @useResult
$Res call({
 String gender, bool isProfileSettingNeeded, int age, int height
});




}
/// @nodoc
class __$MemberProfileCopyWithImpl<$Res>
    implements _$MemberProfileCopyWith<$Res> {
  __$MemberProfileCopyWithImpl(this._self, this._then);

  final _MemberProfile _self;
  final $Res Function(_MemberProfile) _then;

/// Create a copy of MemberProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gender = null,Object? isProfileSettingNeeded = null,Object? age = null,Object? height = null,}) {
  return _then(_MemberProfile(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isProfileSettingNeeded: null == isProfileSettingNeeded ? _self.isProfileSettingNeeded : isProfileSettingNeeded // ignore: cast_nullable_to_non_nullable
as bool,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$HeartBalance {

 int get purchaseHeartBalance; int get missionHeartBalance; int get totalHeartBalance;
/// Create a copy of HeartBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeartBalanceCopyWith<HeartBalance> get copyWith => _$HeartBalanceCopyWithImpl<HeartBalance>(this as HeartBalance, _$identity);

  /// Serializes this HeartBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeartBalance&&(identical(other.purchaseHeartBalance, purchaseHeartBalance) || other.purchaseHeartBalance == purchaseHeartBalance)&&(identical(other.missionHeartBalance, missionHeartBalance) || other.missionHeartBalance == missionHeartBalance)&&(identical(other.totalHeartBalance, totalHeartBalance) || other.totalHeartBalance == totalHeartBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purchaseHeartBalance,missionHeartBalance,totalHeartBalance);

@override
String toString() {
  return 'HeartBalance(purchaseHeartBalance: $purchaseHeartBalance, missionHeartBalance: $missionHeartBalance, totalHeartBalance: $totalHeartBalance)';
}


}

/// @nodoc
abstract mixin class $HeartBalanceCopyWith<$Res>  {
  factory $HeartBalanceCopyWith(HeartBalance value, $Res Function(HeartBalance) _then) = _$HeartBalanceCopyWithImpl;
@useResult
$Res call({
 int purchaseHeartBalance, int missionHeartBalance, int totalHeartBalance
});




}
/// @nodoc
class _$HeartBalanceCopyWithImpl<$Res>
    implements $HeartBalanceCopyWith<$Res> {
  _$HeartBalanceCopyWithImpl(this._self, this._then);

  final HeartBalance _self;
  final $Res Function(HeartBalance) _then;

/// Create a copy of HeartBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? purchaseHeartBalance = null,Object? missionHeartBalance = null,Object? totalHeartBalance = null,}) {
  return _then(_self.copyWith(
purchaseHeartBalance: null == purchaseHeartBalance ? _self.purchaseHeartBalance : purchaseHeartBalance // ignore: cast_nullable_to_non_nullable
as int,missionHeartBalance: null == missionHeartBalance ? _self.missionHeartBalance : missionHeartBalance // ignore: cast_nullable_to_non_nullable
as int,totalHeartBalance: null == totalHeartBalance ? _self.totalHeartBalance : totalHeartBalance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HeartBalance].
extension HeartBalancePatterns on HeartBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeartBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeartBalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeartBalance value)  $default,){
final _that = this;
switch (_that) {
case _HeartBalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeartBalance value)?  $default,){
final _that = this;
switch (_that) {
case _HeartBalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int purchaseHeartBalance,  int missionHeartBalance,  int totalHeartBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeartBalance() when $default != null:
return $default(_that.purchaseHeartBalance,_that.missionHeartBalance,_that.totalHeartBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int purchaseHeartBalance,  int missionHeartBalance,  int totalHeartBalance)  $default,) {final _that = this;
switch (_that) {
case _HeartBalance():
return $default(_that.purchaseHeartBalance,_that.missionHeartBalance,_that.totalHeartBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int purchaseHeartBalance,  int missionHeartBalance,  int totalHeartBalance)?  $default,) {final _that = this;
switch (_that) {
case _HeartBalance() when $default != null:
return $default(_that.purchaseHeartBalance,_that.missionHeartBalance,_that.totalHeartBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeartBalance implements HeartBalance {
  const _HeartBalance({required this.purchaseHeartBalance, required this.missionHeartBalance, required this.totalHeartBalance});
  factory _HeartBalance.fromJson(Map<String, dynamic> json) => _$HeartBalanceFromJson(json);

@override final  int purchaseHeartBalance;
@override final  int missionHeartBalance;
@override final  int totalHeartBalance;

/// Create a copy of HeartBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeartBalanceCopyWith<_HeartBalance> get copyWith => __$HeartBalanceCopyWithImpl<_HeartBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeartBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeartBalance&&(identical(other.purchaseHeartBalance, purchaseHeartBalance) || other.purchaseHeartBalance == purchaseHeartBalance)&&(identical(other.missionHeartBalance, missionHeartBalance) || other.missionHeartBalance == missionHeartBalance)&&(identical(other.totalHeartBalance, totalHeartBalance) || other.totalHeartBalance == totalHeartBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purchaseHeartBalance,missionHeartBalance,totalHeartBalance);

@override
String toString() {
  return 'HeartBalance(purchaseHeartBalance: $purchaseHeartBalance, missionHeartBalance: $missionHeartBalance, totalHeartBalance: $totalHeartBalance)';
}


}

/// @nodoc
abstract mixin class _$HeartBalanceCopyWith<$Res> implements $HeartBalanceCopyWith<$Res> {
  factory _$HeartBalanceCopyWith(_HeartBalance value, $Res Function(_HeartBalance) _then) = __$HeartBalanceCopyWithImpl;
@override @useResult
$Res call({
 int purchaseHeartBalance, int missionHeartBalance, int totalHeartBalance
});




}
/// @nodoc
class __$HeartBalanceCopyWithImpl<$Res>
    implements _$HeartBalanceCopyWith<$Res> {
  __$HeartBalanceCopyWithImpl(this._self, this._then);

  final _HeartBalance _self;
  final $Res Function(_HeartBalance) _then;

/// Create a copy of HeartBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? purchaseHeartBalance = null,Object? missionHeartBalance = null,Object? totalHeartBalance = null,}) {
  return _then(_HeartBalance(
purchaseHeartBalance: null == purchaseHeartBalance ? _self.purchaseHeartBalance : purchaseHeartBalance // ignore: cast_nullable_to_non_nullable
as int,missionHeartBalance: null == missionHeartBalance ? _self.missionHeartBalance : missionHeartBalance // ignore: cast_nullable_to_non_nullable
as int,totalHeartBalance: null == totalHeartBalance ? _self.totalHeartBalance : totalHeartBalance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
