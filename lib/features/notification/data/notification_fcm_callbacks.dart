import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("📩 백그라운드 메시지 수신: ${message.messageId}");
  print("📩 메시지 내용: ${message.notification?.body}");
}

@pragma('vm:entry-point')
void onForegroundNotificationResponse(NotificationResponse details) {
  print("📲 Foreground 알림 클릭됨: ${details.payload}");
}

@pragma('vm:entry-point')
void onBackgroundNotificationResponse(NotificationResponse details) {
  print("📲 Background 알림 클릭됨: ${details.payload}");
}
