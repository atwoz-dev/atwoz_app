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

  Future<bool> switchDormantAccount(bool dormant) async {
    return await ref
        .read(myProfileRepositoryProvider)
        .switchDormantAccount(dormant);
  }
}
