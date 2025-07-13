import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_settings.freezed.dart';

@freezed
class MySettings with _$MySettings {
  const factory MySettings({
    required String version,
    required Set<UserNotificationType> enabledNotifications,
  }) = _MySettings;

  const MySettings._();

  bool get isAllNotificationsEnabled =>
      enabledNotifications.length == UserNotificationType.values.length;
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
