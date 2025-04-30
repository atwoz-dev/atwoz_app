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

// class NotificationModel with _$NotificationModel {
//   const NotificationModel._();

//   /// 기본 팩토리 생성자
//   const factory NotificationModel({
//     required int notificationId,
//     required int recipientId,
//     required DateTime date,
//     required NotificationType type,
//     String? senderName, // senderName은 타입이 notification이 아닌 경우 필수
//     String? content, // content는 타입이 notification인 경우 필수
//     @Default(false) bool isRead,
//   }) = _NotificationModel;

//   // JSON 데이터를 NotificationModel로 변환
//   factory NotificationModel.fromJson(Map<String, dynamic> json) =>
//       _$NotificationModelFromJson(json);

//   /// 유효성 검사
//   factory NotificationModel.create({
//     required int notificationId,
//     required int recipientId,
//     required DateTime date,
//     required NotificationType type,
//     String? senderName,
//     String? content,
//     bool isRead = false,
//   }) {
//     type.map(
//       request: (_) {
//         if (senderName == null || senderName.isEmpty) {
//           throw ArgumentError('senderName이 없습니다. type: request');
//         }
//       },
//       message: (_) {
//         if (senderName == null || senderName.isEmpty) {
//           throw ArgumentError('senderName이 없습니다. type: message');
//         }
//       },
//       rejectHeart: (_) {
//         if (senderName == null || senderName.isEmpty) {
//           throw ArgumentError('senderName이 없습니다. type: rejectHeart');
//         }
//       },
//       rejectProfile: (_) {
//         if (senderName == null || senderName.isEmpty) {
//           throw ArgumentError('senderName이 없습니다. type: reject');
//         }
//       },
//       match: (_) {
//         if (senderName == null || senderName.isEmpty) {
//           throw ArgumentError('senderName이 없습니다. type: match');
//         }
//       },
//       notification: (_) {
//         if (content == null || content.isEmpty) {
//           throw ArgumentError('content가 없습니다. type: notification');
//         }
//       },
//     );

//     return NotificationModel(
//       notificationId: notificationId,
//       recipientId: recipientId,
//       date: date,
//       type: type,
//       senderName: senderName,
//       content: content,
//       isRead: isRead,
//     );
//   }

//   String get formattedDate => date.toDateString;

//   /// 타입별 설명 반환
//   String describeType() {
//     return type.when(
//       request: () => '$senderName 님이 프로필 교환을 요청하였습니다.',
//       message: () => '$senderName 님에게 메시지가 도착하였습니다.',
//       rejectHeart: () => '$senderName 님이 관심을 거절하셨습니다.',
//       rejectProfile: () => '$senderName 님이 프로필 교환을 거절하셨습니다.',
//       match: () => '$senderName 님과 매칭되었습니다! 축하합니다!',
//       notification: () => content!, // 유효성 검사로 인해 content는 절대 null이 아님
//     );
//   }
// }
