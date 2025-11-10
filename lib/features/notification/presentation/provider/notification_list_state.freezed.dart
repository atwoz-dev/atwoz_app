// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationListState {

 List<NotificationItem> get notifications; bool get hasMore; int? get lastId;
/// Create a copy of NotificationListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationListStateCopyWith<NotificationListState> get copyWith => _$NotificationListStateCopyWithImpl<NotificationListState>(this as NotificationListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationListState&&const DeepCollectionEquality().equals(other.notifications, notifications)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.lastId, lastId) || other.lastId == lastId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(notifications),hasMore,lastId);

@override
String toString() {
  return 'NotificationListState(notifications: $notifications, hasMore: $hasMore, lastId: $lastId)';
}


}

/// @nodoc
abstract mixin class $NotificationListStateCopyWith<$Res>  {
  factory $NotificationListStateCopyWith(NotificationListState value, $Res Function(NotificationListState) _then) = _$NotificationListStateCopyWithImpl;
@useResult
$Res call({
 List<NotificationItem> notifications, bool hasMore, int? lastId
});




}
/// @nodoc
class _$NotificationListStateCopyWithImpl<$Res>
    implements $NotificationListStateCopyWith<$Res> {
  _$NotificationListStateCopyWithImpl(this._self, this._then);

  final NotificationListState _self;
  final $Res Function(NotificationListState) _then;

/// Create a copy of NotificationListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifications = null,Object? hasMore = null,Object? lastId = freezed,}) {
  return _then(_self.copyWith(
notifications: null == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<NotificationItem>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,lastId: freezed == lastId ? _self.lastId : lastId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationListState].
extension NotificationListStatePatterns on NotificationListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationListState value)  $default,){
final _that = this;
switch (_that) {
case _NotificationListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationListState value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<NotificationItem> notifications,  bool hasMore,  int? lastId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationListState() when $default != null:
return $default(_that.notifications,_that.hasMore,_that.lastId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<NotificationItem> notifications,  bool hasMore,  int? lastId)  $default,) {final _that = this;
switch (_that) {
case _NotificationListState():
return $default(_that.notifications,_that.hasMore,_that.lastId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<NotificationItem> notifications,  bool hasMore,  int? lastId)?  $default,) {final _that = this;
switch (_that) {
case _NotificationListState() when $default != null:
return $default(_that.notifications,_that.hasMore,_that.lastId);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationListState implements NotificationListState {
  const _NotificationListState({final  List<NotificationItem> notifications = const [], this.hasMore = false, this.lastId}): _notifications = notifications;
  

 final  List<NotificationItem> _notifications;
@override@JsonKey() List<NotificationItem> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

@override@JsonKey() final  bool hasMore;
@override final  int? lastId;

/// Create a copy of NotificationListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationListStateCopyWith<_NotificationListState> get copyWith => __$NotificationListStateCopyWithImpl<_NotificationListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationListState&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.lastId, lastId) || other.lastId == lastId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications),hasMore,lastId);

@override
String toString() {
  return 'NotificationListState(notifications: $notifications, hasMore: $hasMore, lastId: $lastId)';
}


}

/// @nodoc
abstract mixin class _$NotificationListStateCopyWith<$Res> implements $NotificationListStateCopyWith<$Res> {
  factory _$NotificationListStateCopyWith(_NotificationListState value, $Res Function(_NotificationListState) _then) = __$NotificationListStateCopyWithImpl;
@override @useResult
$Res call({
 List<NotificationItem> notifications, bool hasMore, int? lastId
});




}
/// @nodoc
class __$NotificationListStateCopyWithImpl<$Res>
    implements _$NotificationListStateCopyWith<$Res> {
  __$NotificationListStateCopyWithImpl(this._self, this._then);

  final _NotificationListState _self;
  final $Res Function(_NotificationListState) _then;

/// Create a copy of NotificationListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notifications = null,Object? hasMore = null,Object? lastId = freezed,}) {
  return _then(_NotificationListState(
notifications: null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<NotificationItem>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,lastId: freezed == lastId ? _self.lastId : lastId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
