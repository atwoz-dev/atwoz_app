import 'package:atwoz_app/features/my/data/dto/server_notification_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class FcmNotification {
  const FcmNotification({
    required this.senderId,
    required this.senderType,
    required this.notificationType,
  });

  final int? senderId;
  final FcmSenderType senderType;
  @JsonKey(fromJson: ServerNotificationType.parse)
  final ServerNotificationType notificationType;

  factory FcmNotification.fromJson(Map<String, dynamic> json) =>
      _$FcmNotificationFromJson(json);
}

enum FcmSenderType {
  @JsonValue('SYSTEM')
  system,
  @JsonValue('MEMBER')
  member;
}
