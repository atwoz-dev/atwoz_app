// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageListItemResponse {

 int get likeId; int get opponentId; String? get profileImageUrl; String? get nickname; String? get city; int get age; bool get isMutualLike; DateTime get createdAt;
/// Create a copy of MessageListItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageListItemResponseCopyWith<MessageListItemResponse> get copyWith => _$MessageListItemResponseCopyWithImpl<MessageListItemResponse>(this as MessageListItemResponse, _$identity);

  /// Serializes this MessageListItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageListItemResponse&&(identical(other.likeId, likeId) || other.likeId == likeId)&&(identical(other.opponentId, opponentId) || other.opponentId == opponentId)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.city, city) || other.city == city)&&(identical(other.age, age) || other.age == age)&&(identical(other.isMutualLike, isMutualLike) || other.isMutualLike == isMutualLike)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likeId,opponentId,profileImageUrl,nickname,city,age,isMutualLike,createdAt);

@override
String toString() {
  return 'MessageListItemResponse(likeId: $likeId, opponentId: $opponentId, profileImageUrl: $profileImageUrl, nickname: $nickname, city: $city, age: $age, isMutualLike: $isMutualLike, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MessageListItemResponseCopyWith<$Res>  {
  factory $MessageListItemResponseCopyWith(MessageListItemResponse value, $Res Function(MessageListItemResponse) _then) = _$MessageListItemResponseCopyWithImpl;
@useResult
$Res call({
 int likeId, int opponentId, String? profileImageUrl, String? nickname, String? city, int age, bool isMutualLike, DateTime createdAt
});




}
/// @nodoc
class _$MessageListItemResponseCopyWithImpl<$Res>
    implements $MessageListItemResponseCopyWith<$Res> {
  _$MessageListItemResponseCopyWithImpl(this._self, this._then);

  final MessageListItemResponse _self;
  final $Res Function(MessageListItemResponse) _then;

/// Create a copy of MessageListItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? likeId = null,Object? opponentId = null,Object? profileImageUrl = freezed,Object? nickname = freezed,Object? city = freezed,Object? age = null,Object? isMutualLike = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
likeId: null == likeId ? _self.likeId : likeId // ignore: cast_nullable_to_non_nullable
as int,opponentId: null == opponentId ? _self.opponentId : opponentId // ignore: cast_nullable_to_non_nullable
as int,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,isMutualLike: null == isMutualLike ? _self.isMutualLike : isMutualLike // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageListItemResponse].
extension MessageListItemResponsePatterns on MessageListItemResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageListItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageListItemResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageListItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _MessageListItemResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageListItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MessageListItemResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int likeId,  int opponentId,  String? profileImageUrl,  String? nickname,  String? city,  int age,  bool isMutualLike,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageListItemResponse() when $default != null:
return $default(_that.likeId,_that.opponentId,_that.profileImageUrl,_that.nickname,_that.city,_that.age,_that.isMutualLike,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int likeId,  int opponentId,  String? profileImageUrl,  String? nickname,  String? city,  int age,  bool isMutualLike,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _MessageListItemResponse():
return $default(_that.likeId,_that.opponentId,_that.profileImageUrl,_that.nickname,_that.city,_that.age,_that.isMutualLike,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int likeId,  int opponentId,  String? profileImageUrl,  String? nickname,  String? city,  int age,  bool isMutualLike,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MessageListItemResponse() when $default != null:
return $default(_that.likeId,_that.opponentId,_that.profileImageUrl,_that.nickname,_that.city,_that.age,_that.isMutualLike,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageListItemResponse extends MessageListItemResponse {
  const _MessageListItemResponse({required this.likeId, required this.opponentId, required this.profileImageUrl, required this.nickname, required this.city, required this.age, required this.isMutualLike, required this.createdAt}): super._();
  factory _MessageListItemResponse.fromJson(Map<String, dynamic> json) => _$MessageListItemResponseFromJson(json);

@override final  int likeId;
@override final  int opponentId;
@override final  String? profileImageUrl;
@override final  String? nickname;
@override final  String? city;
@override final  int age;
@override final  bool isMutualLike;
@override final  DateTime createdAt;

/// Create a copy of MessageListItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageListItemResponseCopyWith<_MessageListItemResponse> get copyWith => __$MessageListItemResponseCopyWithImpl<_MessageListItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageListItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageListItemResponse&&(identical(other.likeId, likeId) || other.likeId == likeId)&&(identical(other.opponentId, opponentId) || other.opponentId == opponentId)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.city, city) || other.city == city)&&(identical(other.age, age) || other.age == age)&&(identical(other.isMutualLike, isMutualLike) || other.isMutualLike == isMutualLike)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likeId,opponentId,profileImageUrl,nickname,city,age,isMutualLike,createdAt);

@override
String toString() {
  return 'MessageListItemResponse(likeId: $likeId, opponentId: $opponentId, profileImageUrl: $profileImageUrl, nickname: $nickname, city: $city, age: $age, isMutualLike: $isMutualLike, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MessageListItemResponseCopyWith<$Res> implements $MessageListItemResponseCopyWith<$Res> {
  factory _$MessageListItemResponseCopyWith(_MessageListItemResponse value, $Res Function(_MessageListItemResponse) _then) = __$MessageListItemResponseCopyWithImpl;
@override @useResult
$Res call({
 int likeId, int opponentId, String? profileImageUrl, String? nickname, String? city, int age, bool isMutualLike, DateTime createdAt
});




}
/// @nodoc
class __$MessageListItemResponseCopyWithImpl<$Res>
    implements _$MessageListItemResponseCopyWith<$Res> {
  __$MessageListItemResponseCopyWithImpl(this._self, this._then);

  final _MessageListItemResponse _self;
  final $Res Function(_MessageListItemResponse) _then;

/// Create a copy of MessageListItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? likeId = null,Object? opponentId = null,Object? profileImageUrl = freezed,Object? nickname = freezed,Object? city = freezed,Object? age = null,Object? isMutualLike = null,Object? createdAt = null,}) {
  return _then(_MessageListItemResponse(
likeId: null == likeId ? _self.likeId : likeId // ignore: cast_nullable_to_non_nullable
as int,opponentId: null == opponentId ? _self.opponentId : opponentId // ignore: cast_nullable_to_non_nullable
as int,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,isMutualLike: null == isMutualLike ? _self.isMutualLike : isMutualLike // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$MessageListResponse {

 List<MessageListItemResponse> get likes; bool get hasMore;
/// Create a copy of MessageListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageListResponseCopyWith<MessageListResponse> get copyWith => _$MessageListResponseCopyWithImpl<MessageListResponse>(this as MessageListResponse, _$identity);

  /// Serializes this MessageListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageListResponse&&const DeepCollectionEquality().equals(other.likes, likes)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(likes),hasMore);

@override
String toString() {
  return 'MessageListResponse(likes: $likes, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $MessageListResponseCopyWith<$Res>  {
  factory $MessageListResponseCopyWith(MessageListResponse value, $Res Function(MessageListResponse) _then) = _$MessageListResponseCopyWithImpl;
@useResult
$Res call({
 List<MessageListItemResponse> likes, bool hasMore
});




}
/// @nodoc
class _$MessageListResponseCopyWithImpl<$Res>
    implements $MessageListResponseCopyWith<$Res> {
  _$MessageListResponseCopyWithImpl(this._self, this._then);

  final MessageListResponse _self;
  final $Res Function(MessageListResponse) _then;

/// Create a copy of MessageListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? likes = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as List<MessageListItemResponse>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageListResponse].
extension MessageListResponsePatterns on MessageListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageListResponse value)  $default,){
final _that = this;
switch (_that) {
case _MessageListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MessageListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MessageListItemResponse> likes,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageListResponse() when $default != null:
return $default(_that.likes,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MessageListItemResponse> likes,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _MessageListResponse():
return $default(_that.likes,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MessageListItemResponse> likes,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _MessageListResponse() when $default != null:
return $default(_that.likes,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageListResponse implements MessageListResponse {
  const _MessageListResponse({required final  List<MessageListItemResponse> likes, required this.hasMore}): _likes = likes;
  factory _MessageListResponse.fromJson(Map<String, dynamic> json) => _$MessageListResponseFromJson(json);

 final  List<MessageListItemResponse> _likes;
@override List<MessageListItemResponse> get likes {
  if (_likes is EqualUnmodifiableListView) return _likes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_likes);
}

@override final  bool hasMore;

/// Create a copy of MessageListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageListResponseCopyWith<_MessageListResponse> get copyWith => __$MessageListResponseCopyWithImpl<_MessageListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageListResponse&&const DeepCollectionEquality().equals(other._likes, _likes)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_likes),hasMore);

@override
String toString() {
  return 'MessageListResponse(likes: $likes, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$MessageListResponseCopyWith<$Res> implements $MessageListResponseCopyWith<$Res> {
  factory _$MessageListResponseCopyWith(_MessageListResponse value, $Res Function(_MessageListResponse) _then) = __$MessageListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<MessageListItemResponse> likes, bool hasMore
});




}
/// @nodoc
class __$MessageListResponseCopyWithImpl<$Res>
    implements _$MessageListResponseCopyWith<$Res> {
  __$MessageListResponseCopyWithImpl(this._self, this._then);

  final _MessageListResponse _self;
  final $Res Function(_MessageListResponse) _then;

/// Create a copy of MessageListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? likes = null,Object? hasMore = null,}) {
  return _then(_MessageListResponse(
likes: null == likes ? _self._likes : likes // ignore: cast_nullable_to_non_nullable
as List<MessageListItemResponse>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
