import 'package:atwoz_app/features/notification/data/notification_model.dart';
import 'package:atwoz_app/features/notification/domain/notification_repository.dart';
import 'package:atwoz_app/features/notification/domain/fetch_notifications_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_provider.g.dart';

/// 알림 데이터를 관리하는 Riverpod 상태 관리 클래스를 정의
/// 유즈케이스를 호출하고, 알림 데이터를 전역적으로 관리

/// NotificationRepository를 Provider로 관리
@Riverpod(keepAlive: true)
NotificationRepository notificationRepository(Ref ref) {
  return NotificationRepository(ref: ref);
}

/// FetchNotificationsUseCase를 Provider로 관리
@Riverpod(keepAlive: true)
FetchNotificationsUseCase fetchNotificationsUseCase(Ref ref) {
  final repository = ref.watch(notificationRepositoryProvider);
  return FetchNotificationsUseCase(repository: repository);
}

/// 알림 데이터를 관리하는 상태(Provider)를 제공
@Riverpod(keepAlive: true)
class NotificationDataNotifier extends _$NotificationDataNotifier {
  late List<NotificationModel> _notifications;

  @override
  Future<List<NotificationModel>> build() async {
    final fetchNotificationsUseCase =
        ref.watch(fetchNotificationsUseCaseProvider);
    _notifications = await fetchNotificationsUseCase.execute();
    return _notifications;
  }

  /// 모든 알림을 읽음 처리
  void markAllAsRead() {
    _notifications = _notifications
        .map(
          (notification) => notification.copyWith(isRead: true),
        )
        .toList();
    state = AsyncData(_notifications);
  }
}

/*
< 사용 예제 > - notification_page.dart에서 사용
final notifier = ref.read(notificationDataNotifierProvider.notifier);
notifier.markAllAsRead();
 */
