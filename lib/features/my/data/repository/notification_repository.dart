import 'package:atwoz_app/core/notification/firebase_manager.dart';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/my/data/dto/notification_preferences_dto.dart';
import 'package:atwoz_app/features/my/data/dto/server_notification_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/util/shared_preference/shared_preference.dart';

final notificationRepositoryProvider = Provider<NotificationRepository>(
  (ref) => NotificationRepository(ref),
);

class NotificationRepository extends BaseRepository {
  NotificationRepository(Ref ref) : super(ref, '/notification-preferences');

  Future<List<ServerNotificationType>> loadEnableNotificationTypes() async {
    try {
      final response = await apiService.getJson(path);
      final notificationPreferences = NotificationPreferencesDto.fromJson(
        response['data'] as Map<String, dynamic>,
      );

      final enabledTypes =
          _parseEnabledServerTypes(notificationPreferences.preferences);

      await _saveToLocal(enabledTypes);

      return enabledTypes;
    } catch (e) {
      Log.e('알림 설정 조회 중 오류 발생: $e');
      return _localEnableNotificationTypes;
    }
  }

  List<ServerNotificationType> _parseEnabledServerTypes(
    Map<String, bool> serverPreferences,
  ) {
    return ServerNotificationType.values
        .where((type) => serverPreferences[type.key] == true)
        .toList();
  }

  List<ServerNotificationType> get _localEnableNotificationTypes {
    return SharedPreferenceManager.getValue(
          SharedPreferenceKeys.enabledNotifications,
        ) ??
        [];
  }

  Future<void> saveEnableNotificationTypes(
    List<ServerNotificationType> enabledTypes,
  ) async {
    await _syncToServer(enabledTypes);
    await _saveToLocal(enabledTypes);
  }

  Future<void> _saveToLocal(List<ServerNotificationType> enabledTypes) async {
    SharedPreferenceManager.setValue(
      SharedPreferenceKeys.enabledNotifications,
      enabledTypes,
    );
  }

  Future<void> _syncToServer(List<ServerNotificationType> enabledTypes) async {
    try {
      final serverPreferences = Map.fromEntries(
        ServerNotificationType.values.map(
          (type) => MapEntry(type.key, enabledTypes.contains(type)),
        ),
      );

      await apiService.postJson(
        path,
        data: {'preferences': serverPreferences},
      );
    } catch (e) {
      throw Exception('서버 알림 설정 동기화 실패: $e');
    }
  }

  Future<void> enableAllNotifications() async {
    await _updateNotificationPermission(true);
    final allEnabled = ServerNotificationType.values.toList();
    await saveEnableNotificationTypes(allEnabled);
  }

  Future<void> disableAllNotifications() async {
    await _updateNotificationPermission(false);
    await saveEnableNotificationTypes([]);
  }

  Future<void> _updateNotificationPermission(bool allowed) async {
    SharedPreferenceManager.setValue(
      SharedPreferenceKeys.notificationAllowed,
      allowed,
    );
  }

  Future<bool> get notificationEnabled async {
    final allowed = SharedPreferenceManager.getValue(
          SharedPreferenceKeys.notificationAllowed,
        ) ??
        false;

    if (!allowed) return false;

    final status = await FirebaseManager().getNotificationPermissionStatus();
    if (status.isAllowed) return true;

    await _updateNotificationPermission(false);
    return false;
  }

  Future<bool> requestNotificationAllowStatusUpdate(bool allow) async {
    if (!allow) {
      await disableAllNotifications();
      return true;
    }

    final status = await FirebaseManager().getNotificationPermissionStatus();
    if (status.isDenied) {
      await disableAllNotifications();
      return false;
    }

    if (status.isNotDetermined) {
      final newStatus = await FirebaseManager().requestNotificationPermission();
      if (newStatus.authorizationStatus.isDenied) {
        await disableAllNotifications();
        return false;
      }
    }

    await enableAllNotifications();
    return true;
  }
}
