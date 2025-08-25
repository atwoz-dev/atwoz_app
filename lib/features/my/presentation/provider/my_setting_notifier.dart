import 'package:atwoz_app/app/provider/global_notifier.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/features/my/data/repository/my_profile_repository.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_setting_notifier.g.dart';

@Riverpod(keepAlive: true)
class MySettingNotifier extends _$MySettingNotifier {
  @override
  Future<String> build() async {
    final result = await _fetchAppVersion();
    return result;
  }

  Future<String> _fetchAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  Future<bool> withdrawAccount() async {
    return await ref.read(myProfileRepositoryProvider).withdrawAccount();
  }

  Future<bool> deactiveAccount() async {
    return await ref.read(myProfileRepositoryProvider).deactiveAccount();
  }

  Future<bool> activeAccount() async {
    try {
      final phoneNumber = ref.read(globalNotifierProvider).profile.phoneNumber;

      final accessToken = await ref
          .read(myProfileRepositoryProvider)
          .activeAccount(phoneNumber);
      if (accessToken == null) {
        Log.e('계정 활성화 실패: accessToken is null');
        return false;
      }

      ref.read(authUsecaseProvider).setAccessToken(accessToken);
      await ref.read(globalNotifierProvider.notifier).initializeProfile();
      return true;
    } catch (e) {
      Log.e('계정 활성화 실패: $e');
      return false;
    }
  }
}
