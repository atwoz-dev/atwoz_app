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
mixin _$MessageMatchItem {

 int get matchId; int get opponentId; String? get opponentMessage; String? get myMessage; String get nickName; String get profileImageUrl; String get city; String get matchStatus; DateTime get createdAt;
/// Create a copy of MessageMatchItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageMatchItemCopyWith<MessageMatchItem> get copyWith => _$MessageMatchItemCopyWithImpl<MessageMatchItem>(this as MessageMatchItem, _$identity);

  /// Serializes this MessageMatchItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageMatchItem&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.opponentId, opponentId) || other.opponentId == opponentId)&&(identical(other.opponentMessage, opponentMessage) || other.opponentMessage == opponentMessage)&&(identical(other.myMessage, myMessage) || other.myMessage == myMessage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.city, city) || other.city == city)&&(identical(other.matchStatus, matchStatus) || other.matchStatus == matchStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,opponentId,opponentMessage,myMessage,nickName,profileImageUrl,city,matchStatus,createdAt);

@override
String toString() {
  return 'MessageMatchItem(matchId: $matchId, opponentId: $opponentId, opponentMessage: $opponentMessage, myMessage: $myMessage, nickName: $nickName, profileImageUrl: $profileImageUrl, city: $city, matchStatus: $matchStatus, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MessageMatchItemCopyWith<$Res>  {
  factory $MessageMatchItemCopyWith(MessageMatchItem value, $Res Function(MessageMatchItem) _then) = _$MessageMatchItemCopyWithImpl;
@useResult
$Res call({
 int matchId, int opponentId, String? opponentMessage, String? myMessage, String nickName, String profileImageUrl, String city, String matchStatus, DateTime createdAt
});




}
/// @nodoc
class _$MessageMatchItemCopyWithImpl<$Res>
    implements $MessageMatchItemCopyWith<$Res> {
  _$MessageMatchItemCopyWithImpl(this._self, this._then);

  final MessageMatchItem _self;
  final $Res Function(MessageMatchItem) _then;

/// Create a copy of MessageMatchItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? opponentId = null,Object? opponentMessage = freezed,Object? myMessage = freezed,Object? nickName = null,Object? profileImageUrl = null,Object? city = null,Object? matchStatus = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,opponentId: null == opponentId ? _self.opponentId : opponentId // ignore: cast_nullable_to_non_nullable
as int,opponentMessage: freezed == opponentMessage ? _self.opponentMessage : opponentMessage // ignore: cast_nullable_to_non_nullable
as String?,myMessage: freezed == myMessage ? _self.myMessage : myMessage // ignore: cast_nullable_to_non_nullable
as String?,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,matchStatus: null == matchStatus ? _self.matchStatus : matchStatus // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageMatchItem].
extension MessageMatchItemPatterns on MessageMatchItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageMatchItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageMatchItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageMatchItem value)  $default,){
final _that = this;
switch (_that) {
case _MessageMatchItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageMatchItem value)?  $default,){
final _that = this;
switch (_that) {
case _MessageMatchItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int matchId,  int opponentId,  String? opponentMessage,  String? myMessage,  String nickName,  String profileImageUrl,  String city,  String matchStatus,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageMatchItem() when $default != null:
return $default(_that.matchId,_that.opponentId,_that.opponentMessage,_that.myMessage,_that.nickName,_that.profileImageUrl,_that.city,_that.matchStatus,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int matchId,  int opponentId,  String? opponentMessage,  String? myMessage,  String nickName,  String profileImageUrl,  String city,  String matchStatus,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _MessageMatchItem():
return $default(_that.matchId,_that.opponentId,_that.opponentMessage,_that.myMessage,_that.nickName,_that.profileImageUrl,_that.city,_that.matchStatus,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int matchId,  int opponentId,  String? opponentMessage,  String? myMessage,  String nickName,  String profileImageUrl,  String city,  String matchStatus,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MessageMatchItem() when $default != null:
return $default(_that.matchId,_that.opponentId,_that.opponentMessage,_that.myMessage,_that.nickName,_that.profileImageUrl,_that.city,_that.matchStatus,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageMatchItem implements MessageMatchItem {
  const _MessageMatchItem({required this.matchId, required this.opponentId, required this.opponentMessage, required this.myMessage, required this.nickName, required this.profileImageUrl, required this.city, required this.matchStatus, required this.createdAt});
  factory _MessageMatchItem.fromJson(Map<String, dynamic> json) => _$MessageMatchItemFromJson(json);

@override final  int matchId;
@override final  int opponentId;
@override final  String? opponentMessage;
@override final  String? myMessage;
@override final  String nickName;
@override final  String profileImageUrl;
@override final  String city;
@override final  String matchStatus;
@override final  DateTime createdAt;

/// Create a copy of MessageMatchItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageMatchItemCopyWith<_MessageMatchItem> get copyWith => __$MessageMatchItemCopyWithImpl<_MessageMatchItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageMatchItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageMatchItem&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.opponentId, opponentId) || other.opponentId == opponentId)&&(identical(other.opponentMessage, opponentMessage) || other.opponentMessage == opponentMessage)&&(identical(other.myMessage, myMessage) || other.myMessage == myMessage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.city, city) || other.city == city)&&(identical(other.matchStatus, matchStatus) || other.matchStatus == matchStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,opponentId,opponentMessage,myMessage,nickName,profileImageUrl,city,matchStatus,createdAt);

@override
String toString() {
  return 'MessageMatchItem(matchId: $matchId, opponentId: $opponentId, opponentMessage: $opponentMessage, myMessage: $myMessage, nickName: $nickName, profileImageUrl: $profileImageUrl, city: $city, matchStatus: $matchStatus, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MessageMatchItemCopyWith<$Res> implements $MessageMatchItemCopyWith<$Res> {
  factory _$MessageMatchItemCopyWith(_MessageMatchItem value, $Res Function(_MessageMatchItem) _then) = __$MessageMatchItemCopyWithImpl;
@override @useResult
$Res call({
 int matchId, int opponentId, String? opponentMessage, String? myMessage, String nickName, String profileImageUrl, String city, String matchStatus, DateTime createdAt
});




}
/// @nodoc
class __$MessageMatchItemCopyWithImpl<$Res>
    implements _$MessageMatchItemCopyWith<$Res> {
  __$MessageMatchItemCopyWithImpl(this._self, this._then);

  final _MessageMatchItem _self;
  final $Res Function(_MessageMatchItem) _then;

/// Create a copy of MessageMatchItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? opponentId = null,Object? opponentMessage = freezed,Object? myMessage = freezed,Object? nickName = null,Object? profileImageUrl = null,Object? city = null,Object? matchStatus = null,Object? createdAt = null,}) {
  return _then(_MessageMatchItem(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,opponentId: null == opponentId ? _self.opponentId : opponentId // ignore: cast_nullable_to_non_nullable
as int,opponentMessage: freezed == opponentMessage ? _self.opponentMessage : opponentMessage // ignore: cast_nullable_to_non_nullable
as String?,myMessage: freezed == myMessage ? _self.myMessage : myMessage // ignore: cast_nullable_to_non_nullable
as String?,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,matchStatus: null == matchStatus ? _self.matchStatus : matchStatus // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$MessageListResponse {

 List<MessageMatchItem> get matches; bool get hasMore;
/// Create a copy of MessageListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageListResponseCopyWith<MessageListResponse> get copyWith => _$MessageListResponseCopyWithImpl<MessageListResponse>(this as MessageListResponse, _$identity);

  /// Serializes this MessageListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageListResponse&&const DeepCollectionEquality().equals(other.matches, matches)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(matches),hasMore);

@override
String toString() {
  return 'MessageListResponse(matches: $matches, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $MessageListResponseCopyWith<$Res>  {
  factory $MessageListResponseCopyWith(MessageListResponse value, $Res Function(MessageListResponse) _then) = _$MessageListResponseCopyWithImpl;
@useResult
$Res call({
 List<MessageMatchItem> matches, bool hasMore
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
@pragma('vm:prefer-inline') @override $Res call({Object? matches = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
matches: null == matches ? _self.matches : matches // ignore: cast_nullable_to_non_nullable
as List<MessageMatchItem>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MessageMatchItem> matches,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageListResponse() when $default != null:
return $default(_that.matches,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MessageMatchItem> matches,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _MessageListResponse():
return $default(_that.matches,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MessageMatchItem> matches,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _MessageListResponse() when $default != null:
return $default(_that.matches,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageListResponse implements MessageListResponse {
  const _MessageListResponse({required final  List<MessageMatchItem> matches, required this.hasMore}): _matches = matches;
  factory _MessageListResponse.fromJson(Map<String, dynamic> json) => _$MessageListResponseFromJson(json);

 final  List<MessageMatchItem> _matches;
@override List<MessageMatchItem> get matches {
  if (_matches is EqualUnmodifiableListView) return _matches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matches);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageListResponse&&const DeepCollectionEquality().equals(other._matches, _matches)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_matches),hasMore);

@override
String toString() {
  return 'MessageListResponse(matches: $matches, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$MessageListResponseCopyWith<$Res> implements $MessageListResponseCopyWith<$Res> {
  factory _$MessageListResponseCopyWith(_MessageListResponse value, $Res Function(_MessageListResponse) _then) = __$MessageListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<MessageMatchItem> matches, bool hasMore
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
@override @pragma('vm:prefer-inline') $Res call({Object? matches = null,Object? hasMore = null,}) {
  return _then(_MessageListResponse(
matches: null == matches ? _self._matches : matches // ignore: cast_nullable_to_non_nullable
as List<MessageMatchItem>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
