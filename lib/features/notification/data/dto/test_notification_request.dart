import 'package:atwoz_app/features/notification/data/dto/notification_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_notification_request.freezed.dart';
part 'test_notification_request.g.dart';

@freezed
class TestNotificationRequest with _$TestNotificationRequest {
  const factory TestNotificationRequest({
    required int senderId,
    required String senderType,
    required int receiverId,
    @NotificationTypeConverter() required NotificationType notificationType,
  }) = _TestNotificationRequest;

  factory TestNotificationRequest.fromJson(Map<String, dynamic> json) =>
      _$TestNotificationRequestFromJson(json);
}
