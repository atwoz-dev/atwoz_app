import 'package:atwoz_app/features/notification/data/dto/notification_response.dart';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationRepository extends BaseRepository {
  NotificationRepository({required Ref ref}) : super(ref, '/notifications');

  /// 실제 데이터를 서버에서 가져오는 메서드 (fetchData 활용)
  Future<List<NotificationModel>> fetchNotifications() async {
    // TODO: api 연결 후 교체
    // return await fetchData<List<NotificationModel>>(
    //   endpoint: path,
    //   converter: (data) {
    //     // JSON 데이터를 `NotificationModel` 리스트로 변환
    //     return List<Map<String, dynamic>>.from(data!)
    //         .map((json) => NotificationModel.fromJson(json))
    //         .toList();
    //   },
    // );
    return Future.value([
      NotificationModel.create(
        notificationId: 1,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationListItemType.request(),
        senderName: '차은우',
      ),
      NotificationModel.create(
        notificationId: 2,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationListItemType.rejectProfile(),
        senderName: '마카롱조아',
      ),
      NotificationModel.create(
        notificationId: 3,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationListItemType.message(),
        senderName: '차은우',
      ),
      NotificationModel.create(
        notificationId: 4,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationListItemType.rejectHeart(),
        senderName: '마카롱조아',
      ),
      NotificationModel.create(
        notificationId: 5,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationListItemType.match(),
        senderName: '마카롱조아',
      ),
      NotificationModel.create(
        notificationId: 6,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationListItemType.notification(),
        content: '보다 더 나를 표현할 수 있는 프로필 사진으로 변경해 보세요.',
      ),
      NotificationModel.create(
        notificationId: 7,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationListItemType.notification(),
        content: '아직 프로필 소개 글을 작성하지 않으셨네요! 인터뷰를 작성하시면 무료 하트 30개를 지급해 드립니다.',
      ),
      NotificationModel.create(
        notificationId: 8,
        recipientId: 101,
        date: DateTime.now(),
        type: const NotificationListItemType.notification(),
        content:
            '작성하신 게시글에 부적절한 내용이 포함되어 있습니다. 다른 사용자들에게 불쾌감을 줄 수 있는 게시글은 삭제될 수 있습니다.',
      ),
    ]);
  }
}
