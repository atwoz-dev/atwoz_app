import 'package:atwoz_app/app/state/global_state.dart';
import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/features/home/domain/use_case/get_profile_from_hive_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_profile_to_hive_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalNotifier extends _$GlobalNotifier {
  @override
  AppGlobalState build() {
    initializeProfile();
    return AppGlobalState(profile: CachedUserProfile.init());
  }

  set profile(CachedUserProfile profile) {
    state = state.copyWith(profile: profile);
  }

  // Hive에서 프로필 가져오기
  Future<void> initializeProfile() async {
    final accessToken = await ref.read(authUsecaseProvider).getAccessToken();
    if (accessToken?.isEmpty ?? true) {
      return;
    }

    CachedUserProfile profile = await getProfileFromHive();

    if (profile.isDefault) {
      profile = await fetchProfileToHiveFromServer();
    }

    state = state.copyWith(profile: profile);
  }

  // 기존 UseCase 사용
  Future<CachedUserProfile> getProfileFromHive() async {
    return await ref.read(getProfileFromHiveUseCaseProvider).execute();
  }

  Future<CachedUserProfile> fetchProfileToHiveFromServer() async {
    await ref.read(saveProfileToHiveUseCaseProvider).execute();
    return await getProfileFromHive();
  }
}
