// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MessageListState {

 MessageListData get receivedMessages; MessageListData get sentMessages; bool get isLoaded; MessageListErrorType? get error;
/// Create a copy of MessageListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageListStateCopyWith<MessageListState> get copyWith => _$MessageListStateCopyWithImpl<MessageListState>(this as MessageListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageListState&&(identical(other.receivedMessages, receivedMessages) || other.receivedMessages == receivedMessages)&&(identical(other.sentMessages, sentMessages) || other.sentMessages == sentMessages)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,receivedMessages,sentMessages,isLoaded,error);

@override
String toString() {
  return 'MessageListState(receivedMessages: $receivedMessages, sentMessages: $sentMessages, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class $MessageListStateCopyWith<$Res>  {
  factory $MessageListStateCopyWith(MessageListState value, $Res Function(MessageListState) _then) = _$MessageListStateCopyWithImpl;
@useResult
$Res call({
 MessageListData receivedMessages, MessageListData sentMessages, bool isLoaded, MessageListErrorType? error
});




}
/// @nodoc
class _$MessageListStateCopyWithImpl<$Res>
    implements $MessageListStateCopyWith<$Res> {
  _$MessageListStateCopyWithImpl(this._self, this._then);

  final MessageListState _self;
  final $Res Function(MessageListState) _then;

/// Create a copy of MessageListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receivedMessages = null,Object? sentMessages = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
receivedMessages: null == receivedMessages ? _self.receivedMessages : receivedMessages // ignore: cast_nullable_to_non_nullable
as MessageListData,sentMessages: null == sentMessages ? _self.sentMessages : sentMessages // ignore: cast_nullable_to_non_nullable
as MessageListData,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as MessageListErrorType?,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageListState].
extension MessageListStatePatterns on MessageListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageListState value)  $default,){
final _that = this;
switch (_that) {
case _MessageListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageListState value)?  $default,){
final _that = this;
switch (_that) {
case _MessageListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MessageListData receivedMessages,  MessageListData sentMessages,  bool isLoaded,  MessageListErrorType? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageListState() when $default != null:
return $default(_that.receivedMessages,_that.sentMessages,_that.isLoaded,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MessageListData receivedMessages,  MessageListData sentMessages,  bool isLoaded,  MessageListErrorType? error)  $default,) {final _that = this;
switch (_that) {
case _MessageListState():
return $default(_that.receivedMessages,_that.sentMessages,_that.isLoaded,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MessageListData receivedMessages,  MessageListData sentMessages,  bool isLoaded,  MessageListErrorType? error)?  $default,) {final _that = this;
switch (_that) {
case _MessageListState() when $default != null:
return $default(_that.receivedMessages,_that.sentMessages,_that.isLoaded,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _MessageListState extends MessageListState {
  const _MessageListState({this.receivedMessages = const MessageListData(), this.sentMessages = const MessageListData(), this.isLoaded = false, this.error}): super._();
  

@override@JsonKey() final  MessageListData receivedMessages;
@override@JsonKey() final  MessageListData sentMessages;
@override@JsonKey() final  bool isLoaded;
@override final  MessageListErrorType? error;

/// Create a copy of MessageListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageListStateCopyWith<_MessageListState> get copyWith => __$MessageListStateCopyWithImpl<_MessageListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageListState&&(identical(other.receivedMessages, receivedMessages) || other.receivedMessages == receivedMessages)&&(identical(other.sentMessages, sentMessages) || other.sentMessages == sentMessages)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,receivedMessages,sentMessages,isLoaded,error);

@override
String toString() {
  return 'MessageListState(receivedMessages: $receivedMessages, sentMessages: $sentMessages, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class _$MessageListStateCopyWith<$Res> implements $MessageListStateCopyWith<$Res> {
  factory _$MessageListStateCopyWith(_MessageListState value, $Res Function(_MessageListState) _then) = __$MessageListStateCopyWithImpl;
@override @useResult
$Res call({
 MessageListData receivedMessages, MessageListData sentMessages, bool isLoaded, MessageListErrorType? error
});




}
/// @nodoc
class __$MessageListStateCopyWithImpl<$Res>
    implements _$MessageListStateCopyWith<$Res> {
  __$MessageListStateCopyWithImpl(this._self, this._then);

  final _MessageListState _self;
  final $Res Function(_MessageListState) _then;

/// Create a copy of MessageListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receivedMessages = null,Object? sentMessages = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_MessageListState(
receivedMessages: null == receivedMessages ? _self.receivedMessages : receivedMessages // ignore: cast_nullable_to_non_nullable
as MessageListData,sentMessages: null == sentMessages ? _self.sentMessages : sentMessages // ignore: cast_nullable_to_non_nullable
as MessageListData,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as MessageListErrorType?,
  ));
}


}

// dart format on
