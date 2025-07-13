import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/network/network_exception.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/my/data/dto/profile_update_request_dto.dart';
import 'package:atwoz_app/features/my/domain/model/my_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/util/shared_preference/shared_preference.dart';

final myProfileRepositoryProvider = Provider<MyProfileRepository>(
  (ref) => MyProfileRepository(ref),
);

class MyProfileRepository extends BaseRepository {
  MyProfileRepository(Ref ref) : super(ref, '/');

  Future<bool> updateProfile(ProfileUpdateRequestDto profile) async {
    try {
      await apiService.putJson(
        '$path/member/profile',
        requiresAuthToken: true,
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

  Future<Set<UserNotificationType>> loadEnableNotifications() async {
    final enabledNotifications = SharedPreferenceManager.getValue(
          SharedPreferenceKeys.enabledNotifications,
        ) ??
        [];

    return enabledNotifications.toSet();
  }

  Future<void> saveEnableNotifications(
    Set<UserNotificationType> enabledNotifications,
  ) async {
    final notificationList = enabledNotifications.toList();
    SharedPreferenceManager.setValue(
      SharedPreferenceKeys.enabledNotifications,
      notificationList,
    );
  }
}
