import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

// TODO: API 실제로 연결할 때 실제 데이터 모델에 맞춰야 함
/// 서버에서 가져와 앱 내에서 사용할 알림 데이터의 형식을 지정합니다.
enum NotificationType {
  request,
  message,
  reject,
  match,
  notification,
}

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required int id,
    required String title,
    required String date,
    required NotificationType type, // 열거형 타입으로 수정
    required String from,
    @Default(false) isRead,
  }) = _NotificationModel;

  // JSON 데이터를 NotificationModel로 변환
  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
