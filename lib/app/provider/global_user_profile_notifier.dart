import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:atwoz_app/features/home/domain/use_case/get_profile_from_hive_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_profile_to_hive_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_user_profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalUserProfileNotifier extends _$GlobalUserProfileNotifier {
  @override
  GlobalUserProfile build() => GlobalUserProfile.init();

  set profile(GlobalUserProfile profile) {
    state = profile;
  }

  // Hive에서 프로필 가져오기
  Future<GlobalUserProfile> getProfileFromHive() {
    return ref.read(getProfileFromHiveUseCaseProvider).execute();
  }

  // 서버에서 프로필 가져오고 Hive에 저장
  Future<GlobalUserProfile> fetchProfileToHiveFromServer() async {
    await ref.read(saveProfileToHiveUseCaseProvider).execute();
    return await getProfileFromHive();
  }
}
