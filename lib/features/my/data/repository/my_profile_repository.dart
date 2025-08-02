import 'package:atwoz_app/core/notification/firebase_manager.dart';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/network/network_exception.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/my/data/dto/profile_update_request_dto.dart';
import 'package:atwoz_app/features/my/presentation/provider/my_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/util/shared_preference/shared_preference.dart';

final myProfileRepositoryProvider = Provider<MyProfileRepository>(
  (ref) => MyProfileRepository(ref),
);

class MyProfileRepository extends BaseRepository {
  MyProfileRepository(Ref ref) : super(ref, '/member');

  Future<bool> updateProfile(ProfileUpdateRequestDto profile) async {
    try {
      await apiService.putJson(
        '$path/profile',
        data: profile.toJson(),
      );

      return true;
    } on NetworkException catch (e) {
      Log.e('네트워크 오류입니다: $e');
      return false;
    } catch (e) {
      Log.e('알 수 없는 오류입니다: $e');
      return false;
    }
  }

  Future<bool> withdrawAccount() async {
    try {
      // TODO(Han): delete api call + clear user information in local/memory
      await apiService.deleteJson(path);
      return true;
    } on NetworkException catch (e) {
      Log.e('네트워크 오류입니다: $e');
      return false;
    }
  }

  Future<bool> deactiveAccount() async {
    try {
      await apiService.postJson('$path/profile/dormant', data: {});
      return true;
    } on NetworkException catch (e) {
      Log.e('네트워크 오류입니다: $e');
      return false;
    }
  }

  Future<String?> activeAccount(String phoneNumber) async {
    try {
      // TODO(Han): Implement the logic to convert accessToken parsing after server ready.
      return await apiService.postJson(
        '$path/profile/active',
        data: {'phoneNumber': phoneNumber},
      );
    } on NetworkException catch (e) {
      Log.e('네트워크 오류입니다: $e');
      return null;
    }
  }

  Future<Set<UserNotificationType>> loadEnableNotifications() async {
    final enabledNotifications = SharedPreferenceManager.getValue(
          SharedPreferenceKeys.enabledNotifications,
        ) ??
        [];

    return enabledNotifications.toSet();
  }

  Future<bool> get notificationEnabled async {
    final allowed = SharedPreferenceManager.getValue(
          SharedPreferenceKeys.notificationAllowed,
        ) ??
        false;

    if (!allowed) return false;

    final status = await FirebaseManager().getNotificationPermissionStatus();
    if (status.isAllowed) return true;

    SharedPreferenceManager.setValue(
      SharedPreferenceKeys.notificationAllowed,
      false,
    );
    return false;
  }

  Future<void> saveEnableNotifications(
    Set<UserNotificationType> enabledNotifications,
  ) async {
    final notificationList = enabledNotifications.toList();
    // TODO(Han): 서버에 알람타입 적용
    SharedPreferenceManager.setValue(
      SharedPreferenceKeys.enabledNotifications,
      notificationList,
    );
  }

  Future<bool> requestNotificationAllowStatusUpdate(bool allow) async {
    saveEnableNotifications({});
    if (!allow) {
      SharedPreferenceManager.setValue(
        SharedPreferenceKeys.notificationAllowed,
        false,
      );
      return true;
    }

    final status = await FirebaseManager().getNotificationPermissionStatus();
    if (status.isDenied) {
      SharedPreferenceManager.setValue(
        SharedPreferenceKeys.notificationAllowed,
        false,
      );
      return false;
    }
    if (status.isNotDetermined) {
      final newStatus = await FirebaseManager().requestNotificationPermission();
      if (newStatus.authorizationStatus.isDenied) {
        SharedPreferenceManager.setValue(
          SharedPreferenceKeys.notificationAllowed,
          false,
        );
        return false;
      }
    }

    SharedPreferenceManager.setValue(
      SharedPreferenceKeys.notificationAllowed,
      true,
    );
    return true;
  }

  Future<void> enableNotificationType(UserNotificationType type) async {
    try {
      await apiService.patchJson(
        '$path/notifications/preferences/enable/type',
        // TODO(Han): 서버와 알람타입 통일 필요
        data: {'type': type.name},
      );
    } catch (e) {
      Log.e('알림 타입 허용 실패: $e');
    }
  }

  Future<void> disableNotificationType(UserNotificationType type) async {
    try {
      await apiService.patchJson(
        '$path/notifications/preferences/disable/type',
        data: {'type': type.name},
      );
    } catch (e) {
      Log.e('알림 타입 거부 실패: $e');
    }
  }
}
