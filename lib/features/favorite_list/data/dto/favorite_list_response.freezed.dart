// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteListItemResponse {

 int get likeId; int get opponentId; String? get profileImageUrl; String? get nickname; String? get city; int get age; bool get isMutualLike; DateTime get createdAt;
/// Create a copy of FavoriteListItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteListItemResponseCopyWith<FavoriteListItemResponse> get copyWith => _$FavoriteListItemResponseCopyWithImpl<FavoriteListItemResponse>(this as FavoriteListItemResponse, _$identity);

  /// Serializes this FavoriteListItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteListItemResponse&&(identical(other.likeId, likeId) || other.likeId == likeId)&&(identical(other.opponentId, opponentId) || other.opponentId == opponentId)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.city, city) || other.city == city)&&(identical(other.age, age) || other.age == age)&&(identical(other.isMutualLike, isMutualLike) || other.isMutualLike == isMutualLike)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likeId,opponentId,profileImageUrl,nickname,city,age,isMutualLike,createdAt);

@override
String toString() {
  return 'FavoriteListItemResponse(likeId: $likeId, opponentId: $opponentId, profileImageUrl: $profileImageUrl, nickname: $nickname, city: $city, age: $age, isMutualLike: $isMutualLike, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FavoriteListItemResponseCopyWith<$Res>  {
  factory $FavoriteListItemResponseCopyWith(FavoriteListItemResponse value, $Res Function(FavoriteListItemResponse) _then) = _$FavoriteListItemResponseCopyWithImpl;
@useResult
$Res call({
 int likeId, int opponentId, String? profileImageUrl, String? nickname, String? city, int age, bool isMutualLike, DateTime createdAt
});




}
/// @nodoc
class _$FavoriteListItemResponseCopyWithImpl<$Res>
    implements $FavoriteListItemResponseCopyWith<$Res> {
  _$FavoriteListItemResponseCopyWithImpl(this._self, this._then);

  final FavoriteListItemResponse _self;
  final $Res Function(FavoriteListItemResponse) _then;

/// Create a copy of FavoriteListItemResponse
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


/// Adds pattern-matching-related methods to [FavoriteListItemResponse].
extension FavoriteListItemResponsePatterns on FavoriteListItemResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteListItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteListItemResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteListItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteListItemResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteListItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteListItemResponse() when $default != null:
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
case _FavoriteListItemResponse() when $default != null:
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
case _FavoriteListItemResponse():
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
case _FavoriteListItemResponse() when $default != null:
return $default(_that.likeId,_that.opponentId,_that.profileImageUrl,_that.nickname,_that.city,_that.age,_that.isMutualLike,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteListItemResponse extends FavoriteListItemResponse {
  const _FavoriteListItemResponse({required this.likeId, required this.opponentId, required this.profileImageUrl, required this.nickname, required this.city, required this.age, required this.isMutualLike, required this.createdAt}): super._();
  factory _FavoriteListItemResponse.fromJson(Map<String, dynamic> json) => _$FavoriteListItemResponseFromJson(json);

@override final  int likeId;
@override final  int opponentId;
@override final  String? profileImageUrl;
@override final  String? nickname;
@override final  String? city;
@override final  int age;
@override final  bool isMutualLike;
@override final  DateTime createdAt;

/// Create a copy of FavoriteListItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteListItemResponseCopyWith<_FavoriteListItemResponse> get copyWith => __$FavoriteListItemResponseCopyWithImpl<_FavoriteListItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteListItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteListItemResponse&&(identical(other.likeId, likeId) || other.likeId == likeId)&&(identical(other.opponentId, opponentId) || other.opponentId == opponentId)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.city, city) || other.city == city)&&(identical(other.age, age) || other.age == age)&&(identical(other.isMutualLike, isMutualLike) || other.isMutualLike == isMutualLike)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likeId,opponentId,profileImageUrl,nickname,city,age,isMutualLike,createdAt);

@override
String toString() {
  return 'FavoriteListItemResponse(likeId: $likeId, opponentId: $opponentId, profileImageUrl: $profileImageUrl, nickname: $nickname, city: $city, age: $age, isMutualLike: $isMutualLike, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FavoriteListItemResponseCopyWith<$Res> implements $FavoriteListItemResponseCopyWith<$Res> {
  factory _$FavoriteListItemResponseCopyWith(_FavoriteListItemResponse value, $Res Function(_FavoriteListItemResponse) _then) = __$FavoriteListItemResponseCopyWithImpl;
@override @useResult
$Res call({
 int likeId, int opponentId, String? profileImageUrl, String? nickname, String? city, int age, bool isMutualLike, DateTime createdAt
});




}
/// @nodoc
class __$FavoriteListItemResponseCopyWithImpl<$Res>
    implements _$FavoriteListItemResponseCopyWith<$Res> {
  __$FavoriteListItemResponseCopyWithImpl(this._self, this._then);

  final _FavoriteListItemResponse _self;
  final $Res Function(_FavoriteListItemResponse) _then;

/// Create a copy of FavoriteListItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? likeId = null,Object? opponentId = null,Object? profileImageUrl = freezed,Object? nickname = freezed,Object? city = freezed,Object? age = null,Object? isMutualLike = null,Object? createdAt = null,}) {
  return _then(_FavoriteListItemResponse(
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
mixin _$FavoriteListResponse {

 List<FavoriteListItemResponse> get likes; bool get hasMore;
/// Create a copy of FavoriteListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteListResponseCopyWith<FavoriteListResponse> get copyWith => _$FavoriteListResponseCopyWithImpl<FavoriteListResponse>(this as FavoriteListResponse, _$identity);

  /// Serializes this FavoriteListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteListResponse&&const DeepCollectionEquality().equals(other.likes, likes)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(likes),hasMore);

@override
String toString() {
  return 'FavoriteListResponse(likes: $likes, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $FavoriteListResponseCopyWith<$Res>  {
  factory $FavoriteListResponseCopyWith(FavoriteListResponse value, $Res Function(FavoriteListResponse) _then) = _$FavoriteListResponseCopyWithImpl;
@useResult
$Res call({
 List<FavoriteListItemResponse> likes, bool hasMore
});




}
/// @nodoc
class _$FavoriteListResponseCopyWithImpl<$Res>
    implements $FavoriteListResponseCopyWith<$Res> {
  _$FavoriteListResponseCopyWithImpl(this._self, this._then);

  final FavoriteListResponse _self;
  final $Res Function(FavoriteListResponse) _then;

/// Create a copy of FavoriteListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? likes = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as List<FavoriteListItemResponse>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteListResponse].
extension FavoriteListResponsePatterns on FavoriteListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteListResponse value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FavoriteListItemResponse> likes,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FavoriteListItemResponse> likes,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _FavoriteListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FavoriteListItemResponse> likes,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteListResponse() when $default != null:
return $default(_that.likes,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteListResponse implements FavoriteListResponse {
  const _FavoriteListResponse({required final  List<FavoriteListItemResponse> likes, required this.hasMore}): _likes = likes;
  factory _FavoriteListResponse.fromJson(Map<String, dynamic> json) => _$FavoriteListResponseFromJson(json);

 final  List<FavoriteListItemResponse> _likes;
@override List<FavoriteListItemResponse> get likes {
  if (_likes is EqualUnmodifiableListView) return _likes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_likes);
}

@override final  bool hasMore;

/// Create a copy of FavoriteListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteListResponseCopyWith<_FavoriteListResponse> get copyWith => __$FavoriteListResponseCopyWithImpl<_FavoriteListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteListResponse&&const DeepCollectionEquality().equals(other._likes, _likes)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_likes),hasMore);

@override
String toString() {
  return 'FavoriteListResponse(likes: $likes, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$FavoriteListResponseCopyWith<$Res> implements $FavoriteListResponseCopyWith<$Res> {
  factory _$FavoriteListResponseCopyWith(_FavoriteListResponse value, $Res Function(_FavoriteListResponse) _then) = __$FavoriteListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<FavoriteListItemResponse> likes, bool hasMore
});




}
/// @nodoc
class __$FavoriteListResponseCopyWithImpl<$Res>
    implements _$FavoriteListResponseCopyWith<$Res> {
  __$FavoriteListResponseCopyWithImpl(this._self, this._then);

  final _FavoriteListResponse _self;
  final $Res Function(_FavoriteListResponse) _then;

/// Create a copy of FavoriteListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? likes = null,Object? hasMore = null,}) {
  return _then(_FavoriteListResponse(
likes: null == likes ? _self._likes : likes // ignore: cast_nullable_to_non_nullable
as List<FavoriteListItemResponse>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
