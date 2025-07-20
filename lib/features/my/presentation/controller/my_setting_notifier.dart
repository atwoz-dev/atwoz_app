import 'package:atwoz_app/core/util/util.dart';
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

    final notificationEnabled =
        await ref.read(myProfileRepositoryProvider).notificationEnabled;

    return MySettings(
      version: appVersion,
      enabledNotifications: enabledNotifications,
      notificationEnabled: notificationEnabled,
      errorMessage: null,
    );
  }

  Future<String> _fetchAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  void toggleNotification(UserNotificationType type) {
    if (!state.hasValue) return;
    final value = state.requireValue;

    final nextEnabledNotifications = {...value.enabledNotifications}
      ..toggle(type);

    final registrationHandler = nextEnabledNotifications.contains(type)
        ? ref.read(myProfileRepositoryProvider).enableNotificationType
        : ref.read(myProfileRepositoryProvider).disableNotificationType;

    registrationHandler(type);

    state = AsyncValue.data(value.copyWith(
      enabledNotifications: nextEnabledNotifications,
    ));

    ref
        .read(myProfileRepositoryProvider)
        .saveEnableNotifications(nextEnabledNotifications);
  }

  Future<void> tryToggleNotificationEnableStatus() async {
    if (!state.hasValue) return;
    final notificationEnabled = state.requireValue.notificationEnabled;
    final success = await ref
        .read(myProfileRepositoryProvider)
        .requestNotificationAllowStatusUpdate(!notificationEnabled);
    if (success) {
      state = AsyncValue.data(
        state.requireValue.copyWith(notificationEnabled: !notificationEnabled),
      );
      return;
    }

    Log.e('알림 허용 상태 변경 실패');
    state = AsyncValue.data(state.requireValue.copyWith(
      errorMessage: '앱 설정에서 푸시 알림을 허용해주세요.',
    ));
  }
}
