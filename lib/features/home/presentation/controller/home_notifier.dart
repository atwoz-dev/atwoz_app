import 'package:atwoz_app/app/provider/global_user_profile_notifier.dart';
import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:atwoz_app/features/home/data/data.dart';
import 'package:atwoz_app/features/home/domain/use_case/get_profile_from_hive_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_profile_to_hive_use_case.dart';
import 'package:atwoz_app/features/home/presentation/controller/controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart'; // 코드 생성을 위한 부분

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  Future<HomeState> build() async {
    state = const AsyncData(HomeState(nickname: ''));
    try {
      await _fetchHomeProfile();
      await _fetchRecommendedProfiles();
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
      rethrow;
    }
    return state.value!;
  }

  Future<void> _fetchHomeProfile() async {
    GlobalUserProfile profile = ref.read(globalUserProfileNotifierProvider);

    // 전역 상태가 없으면 Hive 또는 서버에서 가져오기
    if (_isDefaultProfile(profile)) {
      profile = await _getProfileFromHive();

      if (_isDefaultProfile(profile)) {
        // Hive에도 데이터가 없으면 서버에서 가져와서 Hive에 저장
        await _fetchProfileToHiveFromServer();
      }

      _saveProfileToGlobalState(profile);
    }

    state = AsyncData(state.value!.copyWith(nickname: profile.nickname));
  }

  bool _isDefaultProfile(GlobalUserProfile profile) =>
      profile == GlobalUserProfile.init();

  Future<GlobalUserProfile> _getProfileFromHive() {
    return ref.read(getProfileFromHiveUseCaseProvider).execute();
  }

  Future<GlobalUserProfile> _fetchProfileToHiveFromServer() async {
    await ref.read(saveProfileToHiveUseCaseProvider).execute();
    final updated = await _getProfileFromHive();
    return updated;
  }

  void _saveProfileToGlobalState(GlobalUserProfile profile) {
    ref.read(globalUserProfileNotifierProvider.notifier).profile = profile;
  }

  Future<void> _fetchRecommendedProfiles() async {
    final recommendedProfileRepository =
        ref.read(recommendedProfileRepositoryProvider);
    final profiles = await recommendedProfileRepository.getProfiles();
    if (!state.hasValue) return;
    state =
        AsyncValue.data(state.value!.copyWith(recommendedProfiles: profiles));
  }
}
