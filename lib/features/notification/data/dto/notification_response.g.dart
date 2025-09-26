// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestTypeImpl _$$RequestTypeImplFromJson(Map<String, dynamic> json) =>
    _$RequestTypeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RequestTypeImplToJson(_$RequestTypeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$MessageTypeImpl _$$MessageTypeImplFromJson(Map<String, dynamic> json) =>
    _$MessageTypeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MessageTypeImplToJson(_$MessageTypeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$RejectHeartTypeImpl _$$RejectHeartTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$RejectHeartTypeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RejectHeartTypeImplToJson(
        _$RejectHeartTypeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$RejectProfileTypeImpl _$$RejectProfileTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$RejectProfileTypeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RejectProfileTypeImplToJson(
        _$RejectProfileTypeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$MatchTypeImpl _$$MatchTypeImplFromJson(Map<String, dynamic> json) =>
    _$MatchTypeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MatchTypeImplToJson(_$MatchTypeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$GeneralNotificationListItemTypeImpl
    _$$GeneralNotificationListItemTypeImplFromJson(Map<String, dynamic> json) =>
        _$GeneralNotificationListItemTypeImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$GeneralNotificationListItemTypeImplToJson(
        _$GeneralNotificationListItemTypeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      notificationId: (json['notificationId'] as num).toInt(),
      recipientId: (json['recipientId'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      type: NotificationListItemType.fromJson(
          json['type'] as Map<String, dynamic>),
      senderName: json['senderName'] as String?,
      content: json['content'] as String?,
      isRead: json['isRead'] as bool? ?? false,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'recipientId': instance.recipientId,
      'date': instance.date.toIso8601String(),
      'type': instance.type,
      'senderName': instance.senderName,
      'content': instance.content,
      'isRead': instance.isRead,
    };
