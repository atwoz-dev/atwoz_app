import 'package:atwoz_app/app/state/global_state.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/core/notification/firebase_manager.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:atwoz_app/features/home/domain/use_case/get_profile_from_hive_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_profile_to_hive_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalNotifier extends _$GlobalNotifier {
  @override
  AppGlobalState build() {
    initProfile();
    return AppGlobalState(profile: CachedUserProfile.init());
  }

  set profile(CachedUserProfile profile) {
    state = state.copyWith(profile: profile);
  }

  // 초기화 (Hive + 서버 + FCM)
  Future<void> initProfile() async {
    try {
      final accessToken = await ref.read(authUsecaseProvider).getAccessToken();
      if (accessToken?.isEmpty ?? true) {
        return;
      }

      final profile = await fetchProfileToHiveFromServer();
      state = state.copyWith(profile: profile);
    } catch (e) {
      Log.e('Failed to initialize profile: $e');
    }
  }

  // 서버에서 프로필 가져오고 Hive에 저장
  Future<CachedUserProfile> fetchProfileToHiveFromServer() async {
    await ref.read(saveProfileToHiveUseCaseProvider).execute();

    return await _getProfileFromHive();
  }

  Future<CachedUserProfile> _getProfileFromHive() async {
    return await ref.read(getProfileFromHiveUseCaseProvider).execute();
  }
}
