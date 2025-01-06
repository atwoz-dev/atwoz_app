import 'package:atwoz_app/features/notification/data/notification_model.dart';
import 'package:atwoz_app/core/base/repository/base_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationRepository extends BaseRepository {
  NotificationRepository({required Ref ref}) : super(ref, '/notifications');

  /// 실제 데이터를 서버에서 가져오는 메서드 (fetchData 활용)
  Future<List<NotificationModel>> fetchNotifications() async {
    // TODO: api 연결 후 교체
    // return await fetchData<List<NotificationModel>>(
    //   endpoint: path,
    //   converter: (data) => List<Map<String, dynamic>>.from(data!)
    //       .map(NotificationModel.fromJson)
    //       .toList(),
    // );
    return Future.value([
      const NotificationModel(
          id: 1,
          title: '차은우님이 프로필 교환을 요청하였습니다.',
          date: '2023.12.30',
          type: NotificationType.request,
          from: '차은우'),
      const NotificationModel(
          id: 2,
          title: '마카롱조아님이 관심을 거절하셨습니다.',
          date: '2023.12.30',
          type: NotificationType.reject,
          from: '마카롱조아'),
      const NotificationModel(
          id: 3,
          title: '마카롱조아님과 매칭되었습니다. 축하합니다!',
          date: '2023.12.30',
          type: NotificationType.match,
          from: '마카롱조아'),
      const NotificationModel(
          id: 4,
          title: '보다 더 나를 표현할 수 있는 프로필 사진으로 변경해 보세요.\n프로필 사진만으로도 첫인상이 달라져요.',
          date: '2023.12.30',
          type: NotificationType.notification,
          from: ''),
    ]);
  }
}
