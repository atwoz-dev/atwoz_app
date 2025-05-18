import 'package:atwoz_app/features/notification/data/dto/notification_response.dart';
import 'package:atwoz_app/features/notification/data/repository/notification_repository.dart';
import 'package:atwoz_app/features/notification/domain/usecase/notification_fcm_usecase.dart';
import 'package:atwoz_app/features/notification/domain/usecase/notification_fetch_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_provider.g.dart';

/// 알림 데이터를 관리하는 Riverpod 상태 관리 클래스를 정의
/// 유즈케이스를 호출하고, 알림 데이터를 전역적으로 관리
/// NotificationRepository를 Provider로 관리
@Riverpod(keepAlive: true)
NotificationFCMUsecase notificationFCMUsecase(Ref ref) {
  return NotificationFCMUsecase();
}

@Riverpod(keepAlive: true)
NotificationRepository notificationRepository(Ref ref) {
  return NotificationRepository(ref: ref);
}

/// FetchNotificationsUseCase를 Provider로 관리
@Riverpod(keepAlive: false)
NotificationFetchUseCase fetchNotificationsUseCase(Ref ref) {
  final repository = ref.watch(notificationRepositoryProvider);
  return NotificationFetchUseCase(repository: repository);
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

  /// 읽지 않은 알림 가져오기 (유즈케이스 활용)
  Future<List<NotificationModel>> fetchUnreadNotifications() async {
    final fetchNotificationsUseCase =
        ref.watch(fetchNotificationsUseCaseProvider);
    return await fetchNotificationsUseCase.execute(unreadOnly: true);
  }
}
