// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FcmNotification _$FcmNotificationFromJson(Map<String, dynamic> json) =>
    FcmNotification(
      senderId: _dynamicToInteger(json['senderId']),
      senderType: $enumDecode(
        _$FcmSenderTypeEnumMap,
        json['senderType'],
        unknownValue: FcmSenderType.unknown,
      ),
      notificationType: ServerNotificationType.parse(
        json['notificationType'] as String?,
      ),
    );

Map<String, dynamic> _$FcmNotificationToJson(FcmNotification instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'senderType': _$FcmSenderTypeEnumMap[instance.senderType]!,
      'notificationType':
          _$ServerNotificationTypeEnumMap[instance.notificationType]!,
    };

const _$FcmSenderTypeEnumMap = {
  FcmSenderType.unknown: 'UNKNOWN',
  FcmSenderType.system: 'SYSTEM',
  FcmSenderType.member: 'MEMBER',
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
