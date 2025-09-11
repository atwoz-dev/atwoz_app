import 'dart:async';
import 'dart:convert'; // jsonEncode 및 jsonDecode를 위해 추가
import 'dart:math';

import 'package:atwoz_app/core/notification/notification_model.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/core/util/shared_preference/shared_preference_key.dart';
import 'package:atwoz_app/core/util/shared_preference/shared_preference_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../config/firebase_options.dart';

class FirebaseManager {
  static final FirebaseManager _instance = FirebaseManager._internal();
  final _initialized = Completer();

  factory FirebaseManager() => _instance;

  final _messageListeners = <ValueChanged<FcmNotification>>[];

  FirebaseManager._internal();

  Future<void> initialize() async {
    if (_initialized.isCompleted) return;

    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      await _registerFcmHandlers();

      // 권한 요청 및 토큰 발급
      final settings = await FirebaseMessaging.instance.requestPermission();
      SharedPreferenceManager.setValue(
        SharedPreferenceKeys.notificationAllowed,
        settings.authorizationStatus.isAllowed,
      );
      await _initializeLocalNotifications();
      _initialized.complete();
    } catch (e, stack) {
      if (!_initialized.isCompleted) {
        _initialized.completeError(e, stack);
      }
      rethrow;
    }
    return _initialized.future;
  }

  void addMessageListener(ValueChanged<FcmNotification> listener) {
    _messageListeners.add(listener);
  }

  void removeMessageListener(ValueChanged<FcmNotification> listener) {
    _messageListeners.remove(listener);
  }

  Future<NotificationSettings> requestNotificationPermission({
    bool provisional = true,
  }) async {
    await _initialized.future;
    return await FirebaseMessaging.instance
        .requestPermission(provisional: provisional);
  }

  Future<AuthorizationStatus> getNotificationPermissionStatus() async {
    await _initialized.future;
    final settings = await FirebaseMessaging.instance.getNotificationSettings();
    return settings.authorizationStatus;
  }

  Future<String?> getFcmToken() async {
    final token = await FirebaseMessaging.instance.getToken(
      vapidKey: 'BHYbT4bWQqQx2MtDVhlbSjLrmz2fowcmt-'
          'o6h1igZFwoEzF4iEBrDTPs7DMlIfAajiktoYMPwxvvkUnU8IwaBlc',
    );
    return token;
  }

  Future<void> _registerFcmHandlers() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessage.listen(_firebaseMessagingForegroundHandler);
    FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
      // TODO: 서버에 토큰 저장 로직 추가
      debugPrint('FCM Token refreshed: $newToken');
    });
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {
    _handleFcmNotification(message.data);
  }

  static void _firebaseMessagingForegroundHandler(RemoteMessage message) {
    final notification = message.notification;

    if (notification == null) return;

    final payload = jsonEncode(message.data);

    _localNotificationsPlugin.show(
      Random().nextInt(1000),
      notification.title,
      notification.body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          _defaultChannelId,
          'urgent notification',
          importance: Importance.max,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      payload: payload, // Store fcm data in payload
    );
  }

  // Helper function to handle FcmNotification logic
  static void _handleFcmNotification(Map<String, dynamic> data) {
    try {
      final fcmData = FcmNotification.fromJson(data);
      for (final listener in _instance._messageListeners) {
        listener(fcmData);
      }
    } catch (e) {
      Log.e(
        'Error handling FCM data: $data, error: $e',
      );
    }
  }
}

extension AuthorizationStatusX on AuthorizationStatus {
  bool get isAllowed =>
      this == AuthorizationStatus.authorized ||
      this == AuthorizationStatus.provisional;

  bool get isDenied => this == AuthorizationStatus.denied;

  bool get isNotDetermined => this == AuthorizationStatus.notDetermined;
}

final FlutterLocalNotificationsPlugin _localNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _initializeLocalNotifications() async {
  await _localNotificationsPlugin.initialize(
    const InitializationSettings(
      android: AndroidInitializationSettings('@drawable/ic_app'),
      iOS: DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      ),
    ),
    onDidReceiveNotificationResponse: _onDidReceiveLocalNotificationResponse,
  );
}

// Handler for when a local notification is tapped
void _onDidReceiveLocalNotificationResponse(
    NotificationResponse notificationResponse) async {
  final payload = notificationResponse.payload;
  if (payload != null && payload.isNotEmpty) {
    try {
      final data = jsonDecode(payload);
      FirebaseManager._handleFcmNotification(data); // Reuse FCM handling logic
    } catch (e) {
      Log.e('Error handling local notification payload: $payload, error: $e');
    }
  }
}

const _defaultChannelId = 'com.atwoz_app.urgent';