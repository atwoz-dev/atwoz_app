import 'package:atwoz_app/features/notification/data/dto/notification_response.dart';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/notification/data/dto/test_notification_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationRepository extends BaseRepository {
  NotificationRepository({required Ref ref}) : super(ref, '/notifications');
  Future<void> registerDeviceToken(String token) async {
    await apiService.patchJson('$path/settings/device-token',
        data: {
          'deviceToken': token,
        },
        requiresRefreshCookie: true);
  }

  Future<void> markAsRead(int notificationId) async {
    await apiService.patchJson(
      '/notifications/$notificationId',
    );
  }

  /// 실제 데이터를 서버에서 가져오는 메서드 (fetchData 활용)
  Future<List<NotificationModel>> fetchNotifications(
      {bool unreadOnly = true}) async {
    return await fetchData<List<NotificationModel>>(
        requiresAccessToken: true,
        requiresRefreshToken: true,
        endpoint: path,
        converter: (data) {
          if (data is! Map<String, dynamic>) {
            throw FormatException("data는 Map 형태가 아님: ${data.runtimeType}");
          }

          final rawList = data['data'];
          if (rawList is! List) {
            throw FormatException(
                "data['data']가 List가 아님: ${rawList.runtimeType}");
          }

          return rawList
              .map((e) =>
                  NotificationModel.fromJson(Map<String, dynamic>.from(e)))
              .toList();
        });
  }
}
