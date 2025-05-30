import 'package:atwoz_app/features/notification/domain/provider/notification_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/notification/data/repository/notification_repository.dart';

class ToggleNotificationUseCase {
  final NotificationRepository repository;
  ToggleNotificationUseCase(this.repository);

  Future<void> toggle(bool enabled) async {
    if (enabled) {
      await repository.notificationOptIn();
    } else {
      await repository.notificationOptOut();
    }
  }
}

final toggleNotificationUseCaseProvider = Provider((ref) {
  return ToggleNotificationUseCase(ref.read(notificationRepositoryProvider));
});
