import 'package:atwoz_app/features/notification/data/dto/notification_response.dart';
import 'package:atwoz_app/features/notification/data/repository/notification_repository.dart';

/// 데이터를 가져오는 역할을 담당
/// NotificationRepository를 호출해 데이터를 가져오며, 비즈니스 로직을 캡슐화
class NotificationFetchUseCase {
  final NotificationRepository repository;

  NotificationFetchUseCase({required this.repository});

  /// 데이터를 가져오는 메서드
  Future<List<NotificationModel>> execute({bool unreadOnly = false}) async {
    final notifications = await repository.fetchNotifications();

    // 현재 모델에는 isRead 필드가 없음
    // TODO: 추후 필드가 추가되면 아래 필터링 로직 사용 (아예 추가 안 되면 삭제)
    // return unreadOnly
    //     ? notifications.where((notification) => !notification.isRead).toList()
    //     : notifications;

    return notifications;
  }
}

/*
< 사용 예제 >
import 'package:atwoz_app/features/notification/domain/fetch_notifications_usecase.dart';
import 'package:atwoz_app/features/notification/domain/notification_repository.dart';

// 알림 데이터를 가져오는 예제
Future<void> fetchNotificationsExample() async {
  // NotificationRepository 초기화 (Provider로 관리되는 경우 context에서 가져옴)
  final notificationRepository = NotificationRepository(ref: yourRefInstance);

  // FetchNotificationsUseCase 초기화
  final fetchNotificationsUseCase = FetchNotificationsUseCase(
    repository: notificationRepository,
  );

  // 전체 알림 가져오기
  final allNotifications = await fetchNotificationsUseCase.execute();
  print('전체 알림: $allNotifications');

  // 읽지 않은 알림만 가져오기
  final unreadNotifications =
      await fetchNotificationsUseCase.execute(unreadOnly: true);
  print('읽지 않은 알림: $unreadNotifications');
}

 */
