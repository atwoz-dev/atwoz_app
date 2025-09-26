import 'package:atwoz_app/features/notification/domain/model/server_notification_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class FcmNotification {
  const FcmNotification({
    required this.senderId,
    required this.senderType,
    required this.notificationType,
  });

  @JsonKey(fromJson: _dynamicToInteger)
  final int? senderId;
  @JsonKey(unknownEnumValue: FcmSenderType.unknown)
  final FcmSenderType senderType;
  @JsonKey(fromJson: ServerNotificationType.parse)
  final ServerNotificationType notificationType;

  factory FcmNotification.fromJson(Map<String, dynamic> json) =>
      _$FcmNotificationFromJson(json);
}

enum FcmSenderType {
  @JsonValue('UNKNOWN')
  unknown,
  @JsonValue('SYSTEM')
  system,
  @JsonValue('MEMBER')
  member,

}

int? _dynamicToInteger(dynamic value) {
  if (value is num) return value.toInt();
  if (value is String) return int.tryParse(value);
  return null;
}
