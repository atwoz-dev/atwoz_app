import 'package:atwoz_app/core/util/log.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/notification/domain/provider/notification_provider.dart';

class NotificationFCMUsecase {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  /// iOS 권한 요청 + APNS 토큰 확인 + FCM 토큰 반환
  Future<String?> initAndGetToken() async {
    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    Log.i("알림 권한 상태: ${settings.authorizationStatus}");

    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      Log.w("알림 권한 거부됨");
      return null;
    }

    // iOS 전용: APNs 토큰 확인
    final apnsToken = await _firebaseMessaging.getAPNSToken();
    Log.d("APNs Token: $apnsToken");

    // FCM 토큰 확인
    final token = await _firebaseMessaging.getToken();
    Log.d("FCM Token: $token");
    return token;
  }

  /// 서버에 디바이스 토큰 등록
  Future<void> registerDeviceToken(WidgetRef ref) async {
    final token = await initAndGetToken();
    Log.d('디바이스 토큰: $token');
    if (token != null) {
      final repository = ref.read(notificationRepositoryProvider);
      await repository.registerDeviceToken(token);
      Log.i("디바이스 토큰 서버 등록 완료");
    } else {
      Log.e("FCM 토큰 가져오기 실패 또는 권한 없음");
    }
  }
}
