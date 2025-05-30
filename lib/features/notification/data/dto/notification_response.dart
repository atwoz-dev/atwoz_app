import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:atwoz_app/features/notification/data/dto/notification_type.dart'; // enum 정의 파일 import

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const NotificationModel._();

  const factory NotificationModel({
    required int notificationId,
    required int senderId,
    @NotificationTypeConverter() required NotificationType notificationType,
    required String title,
    required String content,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
