import 'package:freezed_annotation/freezed_annotation.dart';

/// API 요청용 enum
enum NotificationType {
  matchRequested,
  matchAccepted,
  matchRejected,
  profileExchangeRequested,
  profileExchangeAccepted,
  profileExchangeRejected,
  profileImageChangeRequested,
  inappropriateContent,
  interviewRequested,
  loginRequested,
  likeSent,
}

/// enum ↔ string 매핑
extension NotificationTypeX on NotificationType {
  String get apiValue {
    switch (this) {
      case NotificationType.matchRequested:
        return 'MATCH_REQUESTED';
      case NotificationType.matchAccepted:
        return 'MATCH_ACCEPTED';
      case NotificationType.matchRejected:
        return 'MATCH_REJECTED';
      case NotificationType.profileExchangeRequested:
        return 'PROFILE_EXCHANGE_REQUESTED';
      case NotificationType.profileExchangeAccepted:
        return 'PROFILE_EXCHANGE_ACCEPTED';
      case NotificationType.profileExchangeRejected:
        return 'PROFILE_EXCHANGE_REJECTED';
      case NotificationType.profileImageChangeRequested:
        return 'PROFILE_IMAGE_CHANGE_REQUESTED';
      case NotificationType.inappropriateContent:
        return 'INAPPROPRIATE_CONTENT';
      case NotificationType.interviewRequested:
        return 'INTERVIEW_REQUESTED';
      case NotificationType.loginRequested:
        return 'LOGIN_REQUESTED';
      case NotificationType.likeSent:
        return 'LIKE_SENT';
    }
  }

  static NotificationType fromApiValue(String value) {
    return NotificationType.values.firstWhere(
      (e) => e.apiValue == value,
      orElse: () => throw ArgumentError('Unknown NotificationType: $value'),
    );
  }
}

class NotificationTypeConverter
    extends JsonConverter<NotificationType, String> {
  const NotificationTypeConverter();

  @override
  NotificationType fromJson(String json) =>
      NotificationTypeX.fromApiValue(json);

  @override
  String toJson(NotificationType object) => object.apiValue;
}
