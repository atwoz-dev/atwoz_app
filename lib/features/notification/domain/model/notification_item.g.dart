// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationItem _$NotificationItemFromJson(Map<String, dynamic> json) =>
    NotificationItem(
      notificationId: (json['notificationId'] as num).toInt(),
      senderId: (json['senderId'] as num).toInt(),
      receiverId: (json['receiverId'] as num).toInt(),
      notificationType:
          ServerNotificationType.parse(json['notificationType'] as String?),
      title: json['title'] as String,
      body: json['body'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$NotificationItemToJson(NotificationItem instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'notificationType':
          _$ServerNotificationTypeEnumMap[instance.notificationType]!,
      'title': instance.title,
      'body': instance.body,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$ServerNotificationTypeEnumMap = {
  ServerNotificationType.unknown: 'unknown',
  ServerNotificationType.matchRequest: 'matchRequest',
  ServerNotificationType.matchAccept: 'matchAccept',
  ServerNotificationType.matchReject: 'matchReject',
  ServerNotificationType.profileExchangeRequest: 'profileExchangeRequest',
  ServerNotificationType.profileExchangeAccept: 'profileExchangeAccept',
  ServerNotificationType.profileExchangeReject: 'profileExchangeReject',
  ServerNotificationType.like: 'like',
  ServerNotificationType.profileImageChangeRequest: 'profileImageChangeRequest',
  ServerNotificationType.interviewWriteRequest: 'interviewWriteRequest',
  ServerNotificationType.inappropriateInterview: 'inappropriateInterview',
  ServerNotificationType.inappropriateProfile: 'inappropriateProfile',
  ServerNotificationType.inappropriateProfileImage: 'inappropriateProfileImage',
  ServerNotificationType.inactivityReminder: 'inactivityReminder',
};
