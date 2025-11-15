import 'package:atwoz_app/features/notification/domain/model/server_notification_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_item.g.dart';

@JsonSerializable()
class NotificationItem {
  const NotificationItem({
    required this.notificationId,
    required this.senderId,
    required this.receiverId,
    required this.notificationType,
    required this.title,
    required this.body,
    required this.isRead,
    required this.createdAt,
  });

  final int notificationId;
  final int senderId;
  final int receiverId;
  @JsonKey(fromJson: ServerNotificationType.parse)
  final ServerNotificationType notificationType;
  final String title;
  final String body;
  final bool isRead;
  final DateTime createdAt;

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemFromJson(json);

  NotificationItem copyWith({bool? isRead}) => NotificationItem(
    notificationId: notificationId,
    senderId: senderId,
    receiverId: receiverId,
    notificationType: notificationType,
    title: title,
    body: body,
    isRead: isRead ?? this.isRead,
    createdAt: createdAt,
  );
}
