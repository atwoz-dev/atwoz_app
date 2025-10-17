// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserSignUpRequest {

 int get seq; String get id; String get password; String get nickName; String get email; String get phoneNumber; bool get isReceivingAdvertisemenet; int? get registrationPath; bool get isResign;@ConvertStringToDateTime() DateTime? get createdAt;
/// Create a copy of UserSignUpRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSignUpRequestCopyWith<UserSignUpRequest> get copyWith => _$UserSignUpRequestCopyWithImpl<UserSignUpRequest>(this as UserSignUpRequest, _$identity);

  /// Serializes this UserSignUpRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSignUpRequest&&(identical(other.seq, seq) || other.seq == seq)&&(identical(other.id, id) || other.id == id)&&(identical(other.password, password) || other.password == password)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isReceivingAdvertisemenet, isReceivingAdvertisemenet) || other.isReceivingAdvertisemenet == isReceivingAdvertisemenet)&&(identical(other.registrationPath, registrationPath) || other.registrationPath == registrationPath)&&(identical(other.isResign, isResign) || other.isResign == isResign)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seq,id,password,nickName,email,phoneNumber,isReceivingAdvertisemenet,registrationPath,isResign,createdAt);

@override
String toString() {
  return 'UserSignUpRequest(seq: $seq, id: $id, password: $password, nickName: $nickName, email: $email, phoneNumber: $phoneNumber, isReceivingAdvertisemenet: $isReceivingAdvertisemenet, registrationPath: $registrationPath, isResign: $isResign, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserSignUpRequestCopyWith<$Res>  {
  factory $UserSignUpRequestCopyWith(UserSignUpRequest value, $Res Function(UserSignUpRequest) _then) = _$UserSignUpRequestCopyWithImpl;
@useResult
$Res call({
 int seq, String id, String password, String nickName, String email, String phoneNumber, bool isReceivingAdvertisemenet, int? registrationPath, bool isResign,@ConvertStringToDateTime() DateTime? createdAt
});




}
/// @nodoc
class _$UserSignUpRequestCopyWithImpl<$Res>
    implements $UserSignUpRequestCopyWith<$Res> {
  _$UserSignUpRequestCopyWithImpl(this._self, this._then);

  final UserSignUpRequest _self;
  final $Res Function(UserSignUpRequest) _then;

/// Create a copy of UserSignUpRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seq = null,Object? id = null,Object? password = null,Object? nickName = null,Object? email = null,Object? phoneNumber = null,Object? isReceivingAdvertisemenet = null,Object? registrationPath = freezed,Object? isResign = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
seq: null == seq ? _self.seq : seq // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isReceivingAdvertisemenet: null == isReceivingAdvertisemenet ? _self.isReceivingAdvertisemenet : isReceivingAdvertisemenet // ignore: cast_nullable_to_non_nullable
as bool,registrationPath: freezed == registrationPath ? _self.registrationPath : registrationPath // ignore: cast_nullable_to_non_nullable
as int?,isResign: null == isResign ? _self.isResign : isResign // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSignUpRequest].
extension UserSignUpRequestPatterns on UserSignUpRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSignUpRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSignUpRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSignUpRequest value)  $default,){
final _that = this;
switch (_that) {
case _UserSignUpRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSignUpRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UserSignUpRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int seq,  String id,  String password,  String nickName,  String email,  String phoneNumber,  bool isReceivingAdvertisemenet,  int? registrationPath,  bool isResign, @ConvertStringToDateTime()  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSignUpRequest() when $default != null:
return $default(_that.seq,_that.id,_that.password,_that.nickName,_that.email,_that.phoneNumber,_that.isReceivingAdvertisemenet,_that.registrationPath,_that.isResign,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int seq,  String id,  String password,  String nickName,  String email,  String phoneNumber,  bool isReceivingAdvertisemenet,  int? registrationPath,  bool isResign, @ConvertStringToDateTime()  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _UserSignUpRequest():
return $default(_that.seq,_that.id,_that.password,_that.nickName,_that.email,_that.phoneNumber,_that.isReceivingAdvertisemenet,_that.registrationPath,_that.isResign,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int seq,  String id,  String password,  String nickName,  String email,  String phoneNumber,  bool isReceivingAdvertisemenet,  int? registrationPath,  bool isResign, @ConvertStringToDateTime()  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UserSignUpRequest() when $default != null:
return $default(_that.seq,_that.id,_that.password,_that.nickName,_that.email,_that.phoneNumber,_that.isReceivingAdvertisemenet,_that.registrationPath,_that.isResign,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.screamingSnake)
class _UserSignUpRequest extends UserSignUpRequest {
  const _UserSignUpRequest({required this.seq, required this.id, required this.password, required this.nickName, required this.email, required this.phoneNumber, required this.isReceivingAdvertisemenet, this.registrationPath, required this.isResign, @ConvertStringToDateTime() this.createdAt}): super._();
  factory _UserSignUpRequest.fromJson(Map<String, dynamic> json) => _$UserSignUpRequestFromJson(json);

@override final  int seq;
@override final  String id;
@override final  String password;
@override final  String nickName;
@override final  String email;
@override final  String phoneNumber;
@override final  bool isReceivingAdvertisemenet;
@override final  int? registrationPath;
@override final  bool isResign;
@override@ConvertStringToDateTime() final  DateTime? createdAt;

/// Create a copy of UserSignUpRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSignUpRequestCopyWith<_UserSignUpRequest> get copyWith => __$UserSignUpRequestCopyWithImpl<_UserSignUpRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSignUpRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSignUpRequest&&(identical(other.seq, seq) || other.seq == seq)&&(identical(other.id, id) || other.id == id)&&(identical(other.password, password) || other.password == password)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isReceivingAdvertisemenet, isReceivingAdvertisemenet) || other.isReceivingAdvertisemenet == isReceivingAdvertisemenet)&&(identical(other.registrationPath, registrationPath) || other.registrationPath == registrationPath)&&(identical(other.isResign, isResign) || other.isResign == isResign)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seq,id,password,nickName,email,phoneNumber,isReceivingAdvertisemenet,registrationPath,isResign,createdAt);

@override
String toString() {
  return 'UserSignUpRequest(seq: $seq, id: $id, password: $password, nickName: $nickName, email: $email, phoneNumber: $phoneNumber, isReceivingAdvertisemenet: $isReceivingAdvertisemenet, registrationPath: $registrationPath, isResign: $isResign, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserSignUpRequestCopyWith<$Res> implements $UserSignUpRequestCopyWith<$Res> {
  factory _$UserSignUpRequestCopyWith(_UserSignUpRequest value, $Res Function(_UserSignUpRequest) _then) = __$UserSignUpRequestCopyWithImpl;
@override @useResult
$Res call({
 int seq, String id, String password, String nickName, String email, String phoneNumber, bool isReceivingAdvertisemenet, int? registrationPath, bool isResign,@ConvertStringToDateTime() DateTime? createdAt
});




}
/// @nodoc
class __$UserSignUpRequestCopyWithImpl<$Res>
    implements _$UserSignUpRequestCopyWith<$Res> {
  __$UserSignUpRequestCopyWithImpl(this._self, this._then);

  final _UserSignUpRequest _self;
  final $Res Function(_UserSignUpRequest) _then;

/// Create a copy of UserSignUpRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seq = null,Object? id = null,Object? password = null,Object? nickName = null,Object? email = null,Object? phoneNumber = null,Object? isReceivingAdvertisemenet = null,Object? registrationPath = freezed,Object? isResign = null,Object? createdAt = freezed,}) {
  return _then(_UserSignUpRequest(
seq: null == seq ? _self.seq : seq // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isReceivingAdvertisemenet: null == isReceivingAdvertisemenet ? _self.isReceivingAdvertisemenet : isReceivingAdvertisemenet // ignore: cast_nullable_to_non_nullable
as bool,registrationPath: freezed == registrationPath ? _self.registrationPath : registrationPath // ignore: cast_nullable_to_non_nullable
as int?,isResign: null == isResign ? _self.isResign : isResign // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
