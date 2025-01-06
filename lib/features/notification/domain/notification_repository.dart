import 'package:atwoz_app/features/notification/data/notification_model.dart';
import 'package:atwoz_app/core/base/repository/base_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationRepository extends BaseRepository {
  NotificationRepository({required Ref ref}) : super(ref, '/notifications');

  /// 실제 데이터를 서버에서 가져오는 메서드 (fetchData 활용)
  Future<List<NotificationModel>> fetchNotifications() async {
    return await fetchData<List<NotificationModel>>(
      endpoint: path,
      converter: (data) => List<Map<String, dynamic>>.from(data!)
          .map(NotificationModel.fromJson)
          .toList(),
    );
  }

  /// 테스트 데이터를 반환하는 메서드
  Future<List<NotificationModel>> fetchTestNotifications() async {
    return [
      const NotificationModel(
        id: 1,
        title: '차은우님이 프로필 교환을 요청하였습니다.',
        date: '2025-01-06',
        type: NotificationType.request,
        from: '차은우',
        isRead: false,
      ),
      const NotificationModel(
        id: 2,
        title: '마카롱조아님이 관심을 거절하셨습니다.',
        date: '2025-01-06',
        type: NotificationType.reject,
        from: '마카롱조아',
        isRead: false,
      ),
    ];
  }
}
