import 'package:atwoz_app/app/state/global_state.dart';
import 'package:atwoz_app/core/storage/local_storage.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/auth/data/data.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:atwoz_app/features/home/domain/use_case/fetch_user_heart_balance_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/get_profile_from_hive_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_profile_to_hive_use_case.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'global_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalNotifier extends _$GlobalNotifier {
  @override
  AppGlobalState build() {
    initProfile();
    fetchHeartBalance();
    return AppGlobalState(
      profile: CachedUserProfile.init(),
      heartBalance: HeartBalance.init(),
    );
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

  Future<void> fetchHeartBalance() async {
    try {
      final heartBalance = await ref
          .read(fetchUserHeartBalanceUseCaseProvider)
          .execute();

      Log.d('가져온 하트 수: $heartBalance');

      state = state.copyWith(heartBalance: heartBalance);
    } catch (e) {
      Log.d('보유 하트 수 가져오기 실패: $e');
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

  Future<void> clearLocalData() async {
    Log.d('clearLocalData 진입함');
    // CachedUserProfile 박스 열기 또는 참조
    final profileBox = await Hive.openBox<CachedUserProfile>(
      CachedUserProfile.boxName,
    );

    // IntroducedProfileDto 박스 열기 또는 참조
    final introducedProfilesBox = await Hive.openBox<Map>(
      IntroducedProfileDto.boxName,
    );

    // MyProfileImage 박스 열기 또는 참조
    final myProfileImagesBox = await Hive.openBox(MyProfileImage.boxName);

    state = state.copyWith(profile: CachedUserProfile.init());

    try {
      await profileBox.clear();
      await profileBox.close();
      await introducedProfilesBox.clear();
      await introducedProfilesBox.close();
      await myProfileImagesBox.clear();
      await myProfileImagesBox.close();
    } catch (e) {
      Log.d('Hive 데이터 삭제 시 오류 발생: $e');
    }

    try {
      // FlutterSecureStorage에 저장된 데이터 모두 삭제
      await ref.read(localStorageProvider).clearEncrypted();
    } catch (e) {
      Log.d('FlutterSecureStorage 데이터 삭제 중 오류 발생: $e');
    }

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear(); // 앱 내 모든 SharedPreference 데이터 삭제
    } catch (e) {
      Log.d('SharedPreference 데이터 삭제 중 오류 발생: $e');
    }
  }
}
