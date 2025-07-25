import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:atwoz_app/features/auth/data/repository/user_repository.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/features/home/domain/use_case/get_profile_from_hive_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_profile_to_hive_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_user_profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalUserProfileNotifier extends _$GlobalUserProfileNotifier {
  @override
  GlobalUserProfile build() {
    initializeProfile();
    return GlobalUserProfile.init();
  }

  set profile(GlobalUserProfile profile) {
    state = profile;
  }

  // Hive에서 프로필 가져오기
  Future<void> initializeProfile() async {
    final accessToken = await ref.read(authUsecaseProvider).getAccessToken();
    if (accessToken?.isEmpty ?? true) {
      return;
    }

    state = await fetchProfileToHiveFromServer();
  }

  // Hive에서 프로필 가져오기
  Future<GlobalUserProfile> getProfileFromHive() async {
    return await ref.read(getProfileFromHiveUseCaseProvider).execute();
  }

  // 서버에서 프로필 가져오고 Hive에 저장
  Future<GlobalUserProfile> fetchProfileToHiveFromServer() async {
    await ref.read(saveProfileToHiveUseCaseProvider).execute();
    return await getProfileFromHive();
  }
}
