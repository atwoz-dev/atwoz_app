import 'dart:developer';

import 'package:atwoz_app/features/my/data/repository/my_profile_repository.dart';
import 'package:atwoz_app/features/my/domain/model/my_settings.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_setting_notifier.g.dart';

@Riverpod(keepAlive: true)
class MySettingNotifier extends _$MySettingNotifier {
  @override
  Future<MySettings> build() async {
    final appVersion = await _fetchAppVersion();
    final enabledNotifications =
        await ref.read(myProfileRepositoryProvider).loadEnableNotifications();

    return MySettings(
      version: appVersion,
      enabledNotifications: enabledNotifications,
    );
  }

  Future<String> _fetchAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  void toggleNotification(
    UserNotificationType type,
  ) {
    if (!state.hasValue) return;
    final value = state.requireValue;

    final nextEnabledNotifications = value.enabledNotifications.contains(type)
        ? ({...value.enabledNotifications}..remove(type))
        : {...value.enabledNotifications, type};

    state = AsyncValue.data(value.copyWith(
      enabledNotifications: nextEnabledNotifications,
    ));

    ref
        .read(myProfileRepositoryProvider)
        .saveEnableNotifications(nextEnabledNotifications);
  }

  void toggleAllNotification() {
    if (!state.hasValue) return;
    final value = state.requireValue;

    final nextEnabledNotifications = !value.isAllNotificationsEnabled
        ? UserNotificationType.values.toSet()
        : <UserNotificationType>{};

    state = AsyncValue.data(value.copyWith(
      enabledNotifications: nextEnabledNotifications,
    ));

    ref
        .read(myProfileRepositoryProvider)
        .saveEnableNotifications(nextEnabledNotifications);
  }
}
