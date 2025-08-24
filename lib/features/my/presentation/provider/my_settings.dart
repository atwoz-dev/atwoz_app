import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:atwoz_app/features/my/data/dto/server_notification_type.dart';

part 'my_settings.freezed.dart';

@freezed
class MySettings with _$MySettings {
  /// enabledNotifications is always a Set<UserNotificationType> for type safety
  const factory MySettings({
    required String version,
    required Set<UserNotificationType> enabledNotifications,
    required bool notificationEnabled,
  }) = _MySettings;

  const MySettings._();
}

enum UserNotificationType {
  receivedLike('내가받은 호감'),
  newMessage('새 메시지'),
  profileExchangeRequest('프로필 교환 요청'),
  profilePhotoChange('프로필 사진 변경'),
  longTermInactivityNotice('장기간 미접속 안내'),
  interviewWritingEncouragement('인터뷰 작성 권유');

  final String description;

  const UserNotificationType(this.description);

  static final Map<String, UserNotificationType> _byValue = {
    for (final category in UserNotificationType.values)
      category.name.toUpperCase(): category,
  };

  static UserNotificationType? tryParse(String? value) =>
      _byValue[value?.toUpperCase()];
}

/// UserNotificationType과 ServerNotificationType 간의 변환을 담당하는 extension
extension NotificationTypeConverter on UserNotificationType {
  /// UserNotificationType을 ServerNotificationType으로 변환
  List<ServerNotificationType> toServerTypes() {
    return switch (this) {
      UserNotificationType.receivedLike => [ServerNotificationType.like],
      UserNotificationType.newMessage => [
          ServerNotificationType.matchAccept,
          ServerNotificationType.matchReject,
        ],
      UserNotificationType.profileExchangeRequest => [
          ServerNotificationType.profileExchangeRequest,
        ],
      UserNotificationType.profilePhotoChange => [
          ServerNotificationType.profileImageChangeRequest,
        ],
      UserNotificationType.interviewWritingEncouragement => [
          ServerNotificationType.interviewWriteRequest,
        ],
      UserNotificationType.longTermInactivityNotice => [
          ServerNotificationType.inactivityReminder,
        ],
    };
  }
}

/// ServerNotificationType을 UserNotificationType으로 변환하는 extension
extension ServerNotificationTypeConverter on ServerNotificationType {
  /// ServerNotificationType을 UserNotificationType으로 변환
  UserNotificationType? toUserType() {
    return switch (this) {
      ServerNotificationType.like => UserNotificationType.receivedLike,
      ServerNotificationType.matchAccept ||
      ServerNotificationType.matchReject =>
        UserNotificationType.newMessage,
      ServerNotificationType.profileExchangeRequest =>
        UserNotificationType.profileExchangeRequest,
      ServerNotificationType.profileImageChangeRequest =>
        UserNotificationType.profilePhotoChange,
      ServerNotificationType.interviewWriteRequest =>
        UserNotificationType.interviewWritingEncouragement,
      ServerNotificationType.inactivityReminder =>
        UserNotificationType.longTermInactivityNotice,
      _ => null,
    };
  }
}
