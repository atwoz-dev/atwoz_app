import 'package:atwoz_app/features/notification/data/dto/notification_response.dart';
import 'package:atwoz_app/features/notification/data/notification_fcm_callbacks.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

typedef NotificationReceiveCallback = void Function(NotificationModel model);

NotificationReceiveCallback? notificationStateAddCallback;

/// FCM 초기화 및 알림 리스너
class NotificationFCMInitializer {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    await _createChannel();
    await _initializeLocal();
    await _setupForeground();
    _listenToForegroundMessage();
  }

  /// 알림 채널 생성
  Future<void> _createChannel() async {
    await _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(
          const AndroidNotificationChannel(
            'high_importance_channel',
            'High Importance Notifications',
            importance: Importance.max,
          ),
        );
  }

  /// 로컬 알림 초기화
  Future<void> _initializeLocal() async {
    await _localNotifications.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings("@mipmap/ic_launcher"),
        iOS: DarwinInitializationSettings(),
      ),
      onDidReceiveNotificationResponse: onForegroundNotificationResponse,
      onDidReceiveBackgroundNotificationResponse:
          onBackgroundNotificationResponse,
    );
  }

  /// 포그라운드 알림 설정
  Future<void> _setupForeground() async {
    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  /// 포그라운드 알림 수신 리스너
  void _listenToForegroundMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      final notification = message.notification;
      if (notification != null) {
        _localNotifications.show(
          notification.hashCode,
          notification.title,
          notification.body,
          const NotificationDetails(
            android: AndroidNotificationDetails(
              'high_importance_channel',
              'High Importance Notifications',
              importance: Importance.max,
            ),
            iOS: DarwinNotificationDetails(),
          ),
          payload: message.data['payload'],
        );

        // 여기에서 NotificationModel로 만들어서 전역 상태에 추가해야 함!
        final model = NotificationModel.create(
          notificationId: DateTime.now().millisecondsSinceEpoch, // 임시 ID
          recipientId: 0, // 필요하면 채워줘
          date: DateTime.now(),
          type: const NotificationType.notification(), // 실제 타입으로 파싱 가능하면 파싱해
          content: notification.body,
        );

        // 전역 상태에 추가
        notificationStateAddCallback?.call(model);
      }
    });
  }
}
