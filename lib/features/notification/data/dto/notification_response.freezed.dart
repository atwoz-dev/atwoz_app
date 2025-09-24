// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationListItemType _$NotificationListItemTypeFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'request':
      return RequestType.fromJson(json);
    case 'message':
      return MessageType.fromJson(json);
    case 'rejectHeart':
      return RejectHeartType.fromJson(json);
    case 'rejectProfile':
      return RejectProfileType.fromJson(json);
    case 'match':
      return MatchType.fromJson(json);
    case 'notification':
      return GeneralNotificationListItemType.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'NotificationListItemType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NotificationListItemType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() message,
    required TResult Function() rejectHeart,
    required TResult Function() rejectProfile,
    required TResult Function() match,
    required TResult Function() notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? request,
    TResult? Function()? message,
    TResult? Function()? rejectHeart,
    TResult? Function()? rejectProfile,
    TResult? Function()? match,
    TResult? Function()? notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? message,
    TResult Function()? rejectHeart,
    TResult Function()? rejectProfile,
    TResult Function()? match,
    TResult Function()? notification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestType value) request,
    required TResult Function(MessageType value) message,
    required TResult Function(RejectHeartType value) rejectHeart,
    required TResult Function(RejectProfileType value) rejectProfile,
    required TResult Function(MatchType value) match,
    required TResult Function(GeneralNotificationListItemType value)
        notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestType value)? request,
    TResult? Function(MessageType value)? message,
    TResult? Function(RejectHeartType value)? rejectHeart,
    TResult? Function(RejectProfileType value)? rejectProfile,
    TResult? Function(MatchType value)? match,
    TResult? Function(GeneralNotificationListItemType value)? notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestType value)? request,
    TResult Function(MessageType value)? message,
    TResult Function(RejectHeartType value)? rejectHeart,
    TResult Function(RejectProfileType value)? rejectProfile,
    TResult Function(MatchType value)? match,
    TResult Function(GeneralNotificationListItemType value)? notification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this NotificationListItemType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListItemTypeCopyWith<$Res> {
  factory $NotificationListItemTypeCopyWith(NotificationListItemType value,
          $Res Function(NotificationListItemType) then) =
      _$NotificationListItemTypeCopyWithImpl<$Res, NotificationListItemType>;
}

/// @nodoc
class _$NotificationListItemTypeCopyWithImpl<$Res,
        $Val extends NotificationListItemType>
    implements $NotificationListItemTypeCopyWith<$Res> {
  _$NotificationListItemTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationListItemType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RequestTypeImplCopyWith<$Res> {
  factory _$$RequestTypeImplCopyWith(
          _$RequestTypeImpl value, $Res Function(_$RequestTypeImpl) then) =
      __$$RequestTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestTypeImplCopyWithImpl<$Res>
    extends _$NotificationListItemTypeCopyWithImpl<$Res, _$RequestTypeImpl>
    implements _$$RequestTypeImplCopyWith<$Res> {
  __$$RequestTypeImplCopyWithImpl(
      _$RequestTypeImpl _value, $Res Function(_$RequestTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListItemType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$RequestTypeImpl implements RequestType {
  const _$RequestTypeImpl({final String? $type}) : $type = $type ?? 'request';

  factory _$RequestTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestTypeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationListItemType.request()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestTypeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() message,
    required TResult Function() rejectHeart,
    required TResult Function() rejectProfile,
    required TResult Function() match,
    required TResult Function() notification,
  }) {
    return request();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? request,
    TResult? Function()? message,
    TResult? Function()? rejectHeart,
    TResult? Function()? rejectProfile,
    TResult? Function()? match,
    TResult? Function()? notification,
  }) {
    return request?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? message,
    TResult Function()? rejectHeart,
    TResult Function()? rejectProfile,
    TResult Function()? match,
    TResult Function()? notification,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestType value) request,
    required TResult Function(MessageType value) message,
    required TResult Function(RejectHeartType value) rejectHeart,
    required TResult Function(RejectProfileType value) rejectProfile,
    required TResult Function(MatchType value) match,
    required TResult Function(GeneralNotificationListItemType value)
        notification,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestType value)? request,
    TResult? Function(MessageType value)? message,
    TResult? Function(RejectHeartType value)? rejectHeart,
    TResult? Function(RejectProfileType value)? rejectProfile,
    TResult? Function(MatchType value)? match,
    TResult? Function(GeneralNotificationListItemType value)? notification,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestType value)? request,
    TResult Function(MessageType value)? message,
    TResult Function(RejectHeartType value)? rejectHeart,
    TResult Function(RejectProfileType value)? rejectProfile,
    TResult Function(MatchType value)? match,
    TResult Function(GeneralNotificationListItemType value)? notification,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestTypeImplToJson(
      this,
    );
  }
}

abstract class RequestType implements NotificationListItemType {
  const factory RequestType() = _$RequestTypeImpl;

  factory RequestType.fromJson(Map<String, dynamic> json) =
      _$RequestTypeImpl.fromJson;
}

/// @nodoc
abstract class _$$MessageTypeImplCopyWith<$Res> {
  factory _$$MessageTypeImplCopyWith(
          _$MessageTypeImpl value, $Res Function(_$MessageTypeImpl) then) =
      __$$MessageTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageTypeImplCopyWithImpl<$Res>
    extends _$NotificationListItemTypeCopyWithImpl<$Res, _$MessageTypeImpl>
    implements _$$MessageTypeImplCopyWith<$Res> {
  __$$MessageTypeImplCopyWithImpl(
      _$MessageTypeImpl _value, $Res Function(_$MessageTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListItemType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$MessageTypeImpl implements MessageType {
  const _$MessageTypeImpl({final String? $type}) : $type = $type ?? 'message';

  factory _$MessageTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageTypeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationListItemType.message()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageTypeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() message,
    required TResult Function() rejectHeart,
    required TResult Function() rejectProfile,
    required TResult Function() match,
    required TResult Function() notification,
  }) {
    return message();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? request,
    TResult? Function()? message,
    TResult? Function()? rejectHeart,
    TResult? Function()? rejectProfile,
    TResult? Function()? match,
    TResult? Function()? notification,
  }) {
    return message?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? message,
    TResult Function()? rejectHeart,
    TResult Function()? rejectProfile,
    TResult Function()? match,
    TResult Function()? notification,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestType value) request,
    required TResult Function(MessageType value) message,
    required TResult Function(RejectHeartType value) rejectHeart,
    required TResult Function(RejectProfileType value) rejectProfile,
    required TResult Function(MatchType value) match,
    required TResult Function(GeneralNotificationListItemType value)
        notification,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestType value)? request,
    TResult? Function(MessageType value)? message,
    TResult? Function(RejectHeartType value)? rejectHeart,
    TResult? Function(RejectProfileType value)? rejectProfile,
    TResult? Function(MatchType value)? match,
    TResult? Function(GeneralNotificationListItemType value)? notification,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestType value)? request,
    TResult Function(MessageType value)? message,
    TResult Function(RejectHeartType value)? rejectHeart,
    TResult Function(RejectProfileType value)? rejectProfile,
    TResult Function(MatchType value)? match,
    TResult Function(GeneralNotificationListItemType value)? notification,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageTypeImplToJson(
      this,
    );
  }
}

abstract class MessageType implements NotificationListItemType {
  const factory MessageType() = _$MessageTypeImpl;

  factory MessageType.fromJson(Map<String, dynamic> json) =
      _$MessageTypeImpl.fromJson;
}

/// @nodoc
abstract class _$$RejectHeartTypeImplCopyWith<$Res> {
  factory _$$RejectHeartTypeImplCopyWith(_$RejectHeartTypeImpl value,
          $Res Function(_$RejectHeartTypeImpl) then) =
      __$$RejectHeartTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RejectHeartTypeImplCopyWithImpl<$Res>
    extends _$NotificationListItemTypeCopyWithImpl<$Res, _$RejectHeartTypeImpl>
    implements _$$RejectHeartTypeImplCopyWith<$Res> {
  __$$RejectHeartTypeImplCopyWithImpl(
      _$RejectHeartTypeImpl _value, $Res Function(_$RejectHeartTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListItemType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$RejectHeartTypeImpl implements RejectHeartType {
  const _$RejectHeartTypeImpl({final String? $type})
      : $type = $type ?? 'rejectHeart';

  factory _$RejectHeartTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RejectHeartTypeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationListItemType.rejectHeart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RejectHeartTypeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() message,
    required TResult Function() rejectHeart,
    required TResult Function() rejectProfile,
    required TResult Function() match,
    required TResult Function() notification,
  }) {
    return rejectHeart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? request,
    TResult? Function()? message,
    TResult? Function()? rejectHeart,
    TResult? Function()? rejectProfile,
    TResult? Function()? match,
    TResult? Function()? notification,
  }) {
    return rejectHeart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? message,
    TResult Function()? rejectHeart,
    TResult Function()? rejectProfile,
    TResult Function()? match,
    TResult Function()? notification,
    required TResult orElse(),
  }) {
    if (rejectHeart != null) {
      return rejectHeart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestType value) request,
    required TResult Function(MessageType value) message,
    required TResult Function(RejectHeartType value) rejectHeart,
    required TResult Function(RejectProfileType value) rejectProfile,
    required TResult Function(MatchType value) match,
    required TResult Function(GeneralNotificationListItemType value)
        notification,
  }) {
    return rejectHeart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestType value)? request,
    TResult? Function(MessageType value)? message,
    TResult? Function(RejectHeartType value)? rejectHeart,
    TResult? Function(RejectProfileType value)? rejectProfile,
    TResult? Function(MatchType value)? match,
    TResult? Function(GeneralNotificationListItemType value)? notification,
  }) {
    return rejectHeart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestType value)? request,
    TResult Function(MessageType value)? message,
    TResult Function(RejectHeartType value)? rejectHeart,
    TResult Function(RejectProfileType value)? rejectProfile,
    TResult Function(MatchType value)? match,
    TResult Function(GeneralNotificationListItemType value)? notification,
    required TResult orElse(),
  }) {
    if (rejectHeart != null) {
      return rejectHeart(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RejectHeartTypeImplToJson(
      this,
    );
  }
}

abstract class RejectHeartType implements NotificationListItemType {
  const factory RejectHeartType() = _$RejectHeartTypeImpl;

  factory RejectHeartType.fromJson(Map<String, dynamic> json) =
      _$RejectHeartTypeImpl.fromJson;
}

/// @nodoc
abstract class _$$RejectProfileTypeImplCopyWith<$Res> {
  factory _$$RejectProfileTypeImplCopyWith(_$RejectProfileTypeImpl value,
          $Res Function(_$RejectProfileTypeImpl) then) =
      __$$RejectProfileTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RejectProfileTypeImplCopyWithImpl<$Res>
    extends _$NotificationListItemTypeCopyWithImpl<$Res,
        _$RejectProfileTypeImpl>
    implements _$$RejectProfileTypeImplCopyWith<$Res> {
  __$$RejectProfileTypeImplCopyWithImpl(_$RejectProfileTypeImpl _value,
      $Res Function(_$RejectProfileTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListItemType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$RejectProfileTypeImpl implements RejectProfileType {
  const _$RejectProfileTypeImpl({final String? $type})
      : $type = $type ?? 'rejectProfile';

  factory _$RejectProfileTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RejectProfileTypeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationListItemType.rejectProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RejectProfileTypeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() message,
    required TResult Function() rejectHeart,
    required TResult Function() rejectProfile,
    required TResult Function() match,
    required TResult Function() notification,
  }) {
    return rejectProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? request,
    TResult? Function()? message,
    TResult? Function()? rejectHeart,
    TResult? Function()? rejectProfile,
    TResult? Function()? match,
    TResult? Function()? notification,
  }) {
    return rejectProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? message,
    TResult Function()? rejectHeart,
    TResult Function()? rejectProfile,
    TResult Function()? match,
    TResult Function()? notification,
    required TResult orElse(),
  }) {
    if (rejectProfile != null) {
      return rejectProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestType value) request,
    required TResult Function(MessageType value) message,
    required TResult Function(RejectHeartType value) rejectHeart,
    required TResult Function(RejectProfileType value) rejectProfile,
    required TResult Function(MatchType value) match,
    required TResult Function(GeneralNotificationListItemType value)
        notification,
  }) {
    return rejectProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestType value)? request,
    TResult? Function(MessageType value)? message,
    TResult? Function(RejectHeartType value)? rejectHeart,
    TResult? Function(RejectProfileType value)? rejectProfile,
    TResult? Function(MatchType value)? match,
    TResult? Function(GeneralNotificationListItemType value)? notification,
  }) {
    return rejectProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestType value)? request,
    TResult Function(MessageType value)? message,
    TResult Function(RejectHeartType value)? rejectHeart,
    TResult Function(RejectProfileType value)? rejectProfile,
    TResult Function(MatchType value)? match,
    TResult Function(GeneralNotificationListItemType value)? notification,
    required TResult orElse(),
  }) {
    if (rejectProfile != null) {
      return rejectProfile(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RejectProfileTypeImplToJson(
      this,
    );
  }
}

abstract class RejectProfileType implements NotificationListItemType {
  const factory RejectProfileType() = _$RejectProfileTypeImpl;

  factory RejectProfileType.fromJson(Map<String, dynamic> json) =
      _$RejectProfileTypeImpl.fromJson;
}

/// @nodoc
abstract class _$$MatchTypeImplCopyWith<$Res> {
  factory _$$MatchTypeImplCopyWith(
          _$MatchTypeImpl value, $Res Function(_$MatchTypeImpl) then) =
      __$$MatchTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MatchTypeImplCopyWithImpl<$Res>
    extends _$NotificationListItemTypeCopyWithImpl<$Res, _$MatchTypeImpl>
    implements _$$MatchTypeImplCopyWith<$Res> {
  __$$MatchTypeImplCopyWithImpl(
      _$MatchTypeImpl _value, $Res Function(_$MatchTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListItemType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$MatchTypeImpl implements MatchType {
  const _$MatchTypeImpl({final String? $type}) : $type = $type ?? 'match';

  factory _$MatchTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchTypeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationListItemType.match()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MatchTypeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() message,
    required TResult Function() rejectHeart,
    required TResult Function() rejectProfile,
    required TResult Function() match,
    required TResult Function() notification,
  }) {
    return match();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? request,
    TResult? Function()? message,
    TResult? Function()? rejectHeart,
    TResult? Function()? rejectProfile,
    TResult? Function()? match,
    TResult? Function()? notification,
  }) {
    return match?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? message,
    TResult Function()? rejectHeart,
    TResult Function()? rejectProfile,
    TResult Function()? match,
    TResult Function()? notification,
    required TResult orElse(),
  }) {
    if (match != null) {
      return match();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestType value) request,
    required TResult Function(MessageType value) message,
    required TResult Function(RejectHeartType value) rejectHeart,
    required TResult Function(RejectProfileType value) rejectProfile,
    required TResult Function(MatchType value) match,
    required TResult Function(GeneralNotificationListItemType value)
        notification,
  }) {
    return match(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestType value)? request,
    TResult? Function(MessageType value)? message,
    TResult? Function(RejectHeartType value)? rejectHeart,
    TResult? Function(RejectProfileType value)? rejectProfile,
    TResult? Function(MatchType value)? match,
    TResult? Function(GeneralNotificationListItemType value)? notification,
  }) {
    return match?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestType value)? request,
    TResult Function(MessageType value)? message,
    TResult Function(RejectHeartType value)? rejectHeart,
    TResult Function(RejectProfileType value)? rejectProfile,
    TResult Function(MatchType value)? match,
    TResult Function(GeneralNotificationListItemType value)? notification,
    required TResult orElse(),
  }) {
    if (match != null) {
      return match(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchTypeImplToJson(
      this,
    );
  }
}

abstract class MatchType implements NotificationListItemType {
  const factory MatchType() = _$MatchTypeImpl;

  factory MatchType.fromJson(Map<String, dynamic> json) =
      _$MatchTypeImpl.fromJson;
}

/// @nodoc
abstract class _$$GeneralNotificationListItemTypeImplCopyWith<$Res> {
  factory _$$GeneralNotificationListItemTypeImplCopyWith(
          _$GeneralNotificationListItemTypeImpl value,
          $Res Function(_$GeneralNotificationListItemTypeImpl) then) =
      __$$GeneralNotificationListItemTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneralNotificationListItemTypeImplCopyWithImpl<$Res>
    extends _$NotificationListItemTypeCopyWithImpl<$Res,
        _$GeneralNotificationListItemTypeImpl>
    implements _$$GeneralNotificationListItemTypeImplCopyWith<$Res> {
  __$$GeneralNotificationListItemTypeImplCopyWithImpl(
      _$GeneralNotificationListItemTypeImpl _value,
      $Res Function(_$GeneralNotificationListItemTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListItemType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GeneralNotificationListItemTypeImpl
    implements GeneralNotificationListItemType {
  const _$GeneralNotificationListItemTypeImpl({final String? $type})
      : $type = $type ?? 'notification';

  factory _$GeneralNotificationListItemTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GeneralNotificationListItemTypeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationListItemType.notification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralNotificationListItemTypeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() message,
    required TResult Function() rejectHeart,
    required TResult Function() rejectProfile,
    required TResult Function() match,
    required TResult Function() notification,
  }) {
    return notification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? request,
    TResult? Function()? message,
    TResult? Function()? rejectHeart,
    TResult? Function()? rejectProfile,
    TResult? Function()? match,
    TResult? Function()? notification,
  }) {
    return notification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? message,
    TResult Function()? rejectHeart,
    TResult Function()? rejectProfile,
    TResult Function()? match,
    TResult Function()? notification,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestType value) request,
    required TResult Function(MessageType value) message,
    required TResult Function(RejectHeartType value) rejectHeart,
    required TResult Function(RejectProfileType value) rejectProfile,
    required TResult Function(MatchType value) match,
    required TResult Function(GeneralNotificationListItemType value)
        notification,
  }) {
    return notification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestType value)? request,
    TResult? Function(MessageType value)? message,
    TResult? Function(RejectHeartType value)? rejectHeart,
    TResult? Function(RejectProfileType value)? rejectProfile,
    TResult? Function(MatchType value)? match,
    TResult? Function(GeneralNotificationListItemType value)? notification,
  }) {
    return notification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestType value)? request,
    TResult Function(MessageType value)? message,
    TResult Function(RejectHeartType value)? rejectHeart,
    TResult Function(RejectProfileType value)? rejectProfile,
    TResult Function(MatchType value)? match,
    TResult Function(GeneralNotificationListItemType value)? notification,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralNotificationListItemTypeImplToJson(
      this,
    );
  }
}

abstract class GeneralNotificationListItemType
    implements NotificationListItemType {
  const factory GeneralNotificationListItemType() =
      _$GeneralNotificationListItemTypeImpl;

  factory GeneralNotificationListItemType.fromJson(Map<String, dynamic> json) =
      _$GeneralNotificationListItemTypeImpl.fromJson;
}

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  int get notificationId => throw _privateConstructorUsedError;
  int get recipientId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  NotificationListItemType get type => throw _privateConstructorUsedError;
  String? get senderName =>
      throw _privateConstructorUsedError; // senderName은 타입이 notification이 아닌 경우 필수
  String? get content =>
      throw _privateConstructorUsedError; // content는 타입이 notification인 경우 필수
  bool get isRead => throw _privateConstructorUsedError;

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {int notificationId,
      int recipientId,
      DateTime date,
      NotificationListItemType type,
      String? senderName,
      String? content,
      bool isRead});

  $NotificationListItemTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? recipientId = null,
    Object? date = null,
    Object? type = null,
    Object? senderName = freezed,
    Object? content = freezed,
    Object? isRead = null,
  }) {
    return _then(_value.copyWith(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationListItemType,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationListItemTypeCopyWith<$Res> get type {
    return $NotificationListItemTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int notificationId,
      int recipientId,
      DateTime date,
      NotificationListItemType type,
      String? senderName,
      String? content,
      bool isRead});

  @override
  $NotificationListItemTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? recipientId = null,
    Object? date = null,
    Object? type = null,
    Object? senderName = freezed,
    Object? content = freezed,
    Object? isRead = null,
  }) {
    return _then(_$NotificationModelImpl(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationListItemType,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl extends _NotificationModel {
  const _$NotificationModelImpl(
      {required this.notificationId,
      required this.recipientId,
      required this.date,
      required this.type,
      this.senderName,
      this.content,
      this.isRead = false})
      : super._();

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  final int notificationId;
  @override
  final int recipientId;
  @override
  final DateTime date;
  @override
  final NotificationListItemType type;
  @override
  final String? senderName;
// senderName은 타입이 notification이 아닌 경우 필수
  @override
  final String? content;
// content는 타입이 notification인 경우 필수
  @override
  @JsonKey()
  final bool isRead;

  @override
  String toString() {
    return 'NotificationModel(notificationId: $notificationId, recipientId: $recipientId, date: $date, type: $type, senderName: $senderName, content: $content, isRead: $isRead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notificationId, recipientId,
      date, type, senderName, content, isRead);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel extends NotificationModel {
  const factory _NotificationModel(
      {required final int notificationId,
      required final int recipientId,
      required final DateTime date,
      required final NotificationListItemType type,
      final String? senderName,
      final String? content,
      final bool isRead}) = _$NotificationModelImpl;
  const _NotificationModel._() : super._();

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  int get notificationId;
  @override
  int get recipientId;
  @override
  DateTime get date;
  @override
  NotificationListItemType get type;
  @override
  String? get senderName; // senderName은 타입이 notification이 아닌 경우 필수
  @override
  String? get content; // content는 타입이 notification인 경우 필수
  @override
  bool get isRead;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
