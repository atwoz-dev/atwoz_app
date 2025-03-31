import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/notification/data/dto/notification_response.dart';
import 'package:atwoz_app/features/notification/data/repository/notification_fcm_initializer.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  return NotificationRepository(ref: ref);
});

class NotificationRepository extends BaseRepository {
  NotificationRepository({required Ref ref}) : super(ref, '/notifications');

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final _fcmInitializer = NotificationFCMInitializer();

  /// 전체 초기화
  Future<void> initializeFCM() async {
    await Firebase.initializeApp();
    await _fcmInitializer.initialize();

    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      print("Terminated 상태에서 메시지 수신됨: \${initialMessage.data}");
    }

    final token = await getDeviceToken();
    if (token != null) {
      await registerDeviceToken(token);
      print("디바이스 토큰 서버에 등록됨: \$token");
    }
  }

  /// 디바이스 토큰 반환
  Future<String?> getDeviceToken() async {
    return await _messaging.getToken();
  }

  /// 1. 디바이스 토큰 서버에 전송
  Future<void> registerDeviceToken(String token) async {
    await apiService.patchJson(
      '\$path/settings/device-token',
      data: {'deviceToken': token},
      requiresAccessToken: true,
      requiresRefreshToken: false,
    );
  }

  /// 2. 알림 수신 동의 (opt-in)
  Future<void> optInNotification() async {
    await apiService.patchJson(
      '\$path/settings/opt-in',
      requiresAccessToken: true,
      requiresRefreshToken: false,
    );
  }

  /// 3. 알림 수신 거부 (opt-out)
  Future<void> optOutNotification() async {
    await apiService.patchJson(
      '\$path/settings/opt-out',
      requiresAccessToken: true,
      requiresRefreshToken: false,
    );
  }

  /// 4. 알림 목록 가져오기 (현재는 mock 데이터 사용)
  Future<List<NotificationModel>> fetchNotifications() async {
    return Future.value([
      NotificationModel.create(
        notificationId: 1,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationType.request(),
        senderName: '차은우',
      ),
      NotificationModel.create(
        notificationId: 2,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationType.rejectProfile(),
        senderName: '마카롱조아',
      ),
      NotificationModel.create(
        notificationId: 3,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationType.message(),
        senderName: '차은우',
      ),
      NotificationModel.create(
        notificationId: 4,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationType.rejectHeart(),
        senderName: '마카롱조아',
      ),
      NotificationModel.create(
        notificationId: 5,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationType.match(),
        senderName: '마카롱조아',
      ),
      NotificationModel.create(
        notificationId: 6,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationType.notification(),
        content: '보다 더 나를 표현할 수 있는 프로필 사진으로 변경해 보세요.',
      ),
      NotificationModel.create(
        notificationId: 7,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationType.notification(),
        content: '아직 프로필 소개 글을 작성하지 않으셨네요! 인터뷰를 작성하시면 무료 하트 30개를 지급해 드립니다.',
      ),
      NotificationModel.create(
        notificationId: 8,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationType.notification(),
        content:
            '작성하신 게시글에 부적절한 내용이 포함되어 있습니다. 다른 사용자들에게 불쾌감을 줄 수 있는 게시글은 삭제될 수 있습니다.',
      ),
    ]);
  }
}
