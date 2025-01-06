import 'package:atwoz_app/features/notification/data/notification_model.dart';
import 'package:atwoz_app/features/notification/domain/notification_repository.dart';

/// 데이터를 가져오는 역할을 담당
/// NotificationRepository를 호출해 데이터를 가져오며, 비즈니스 로직을 캡슐화
class FetchNotificationsUseCase {
  final NotificationRepository repository;

  FetchNotificationsUseCase({required this.repository});

  /// 데이터를 가져오는 메서드
  Future<List<NotificationModel>> execute() async {
    // TODO: api 연결 후 교체 필요
    // return repository.fetchNotifications();
    return repository.fetchTestNotifications();
  }
}

/*
< 사용 예제 > - notification_provider.dart에서 활용
final useCase = FetchNotificationsUseCase(repository: notificationRepository);
final notifications = await useCase.execute();

 */
