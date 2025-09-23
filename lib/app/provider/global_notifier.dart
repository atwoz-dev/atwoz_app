import 'package:atwoz_app/app/state/global_state.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/core/notification/firebase_manager.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:atwoz_app/features/home/domain/use_case/get_profile_from_hive_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_profile_to_hive_use_case.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalNotifier extends _$GlobalNotifier {
  @override
  AppGlobalState build() {
    initialize();
    return AppGlobalState(profile: CachedUserProfile.init());
  }

  set profile(CachedUserProfile profile) {
    state = state.copyWith(profile: profile);
  }

  // 초기화 (Hive + 서버 + FCM)
  Future<void> initialize() async {
    if (!state.profile.isDefault) {
      Log.d('global user profile notifier already initialized');
      return;
    }

    try {
      await FirebaseManager().initialize();

      final accessToken = await ref.read(authUsecaseProvider).getAccessToken();
      if (accessToken?.isEmpty ?? true) {
        return;
      }

      CachedUserProfile profile = await getProfileFromHive();

      if (profile.isDefault) {
        profile = await fetchProfileToHiveFromServer();
      }

      state = state.copyWith(profile: profile);
    } catch (e) {
      Log.e('Failed to initialize profile: $e');
    }
  }

  // 기존 UseCase 사용
  Future<CachedUserProfile> getProfileFromHive() async {
    return await ref.read(getProfileFromHiveUseCaseProvider).execute();
  }

  // 서버에서 프로필 가져오고 Hive에 저장
  Future<CachedUserProfile> fetchProfileToHiveFromServer() async {
    await ref.read(saveProfileToHiveUseCaseProvider).execute();
    return await getProfileFromHive();
  }

  Future<void> clearProfile() async {
    try {
      // CachedUserProfile 박스 열기 또는 참조
      final profileBox = Hive.isBoxOpen(CachedUserProfile.boxName)
          ? Hive.box<CachedUserProfile>(CachedUserProfile.boxName)
          : await Hive.openBox<CachedUserProfile>(CachedUserProfile.boxName);

      // IntroducedProfileDto 박스 열기 또는 참조
      final introducedProfilesBox = Hive.isBoxOpen(IntroducedProfileDto.boxName)
          ? Hive.box<IntroducedProfileDto>(IntroducedProfileDto.boxName)
          : await Hive.openBox<IntroducedProfileDto>(
              IntroducedProfileDto.boxName);

      await profileBox.clear();
      await profileBox.close();

      state = state.copyWith(profile: CachedUserProfile.init());

      await introducedProfilesBox.clear();
      await introducedProfilesBox.close();

      await const FlutterSecureStorage().deleteAll();
    } catch (e) {
      Log.e('Failed to clear profile: $e');
    }
  }
}
