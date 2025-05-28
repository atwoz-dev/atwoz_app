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
    await _fetchHomeProfile();
    await _fetchRecommendedProfiles();
    return state.value!;
  }

  Future<void> _fetchHomeProfile() async {
    GlobalUserProfile? profile = ref.read(globalUserProfileNotifierProvider);

    // 전역 상태가 없으면 Hive 또는 서버에서 가져오기
    if (profile == null) {
      profile = await _getProfileFromHive();

      if (profile == null) {
        // Hive에도 데이터가 없으면 서버에서 가져와서 Hive에 저장
        await _fetchProfileFromServer();
      }

      _saveProfileToGlobalState(profile!);
    }

    // state 업데이트 (공통 처리)
    state = AsyncData(state.value!.copyWith(nickname: profile.nickname));
    // final globalProfile =
    //     ref.read(globalUserProfileNotifierProvider); // 전역상태 프로필 먼저 확인

    // if (globalProfile != null) {
    //   // 전역상태에 프로필이 있다면 nickname 저장
    //   state = AsyncData(state.value!.copyWith(
    //     nickname: globalProfile.nickname,
    //   ));
    //   return;
    // }

    // final userProfile = await ref
    //     .read(getProfileFromHiveUseCaseProvider)
    //     .execute(); // 로컬 DB에서 프로필 가져오기

    // if (userProfile == null) {
    //   // 로컬 DB에 프로필이 없다면 서버에서 프로필 가져오기
    //   await ref
    //       .read(saveProfileToHiveUseCaseProvider)
    //       .execute(); // 서버에서 가져온 프로필 Hive에 저장

    //   final updatedProfile = await ref
    //       .read(getProfileFromHiveUseCaseProvider)
    //       .execute(); // 다시 로컬 DB에서 프로필 가져오기

    //   if (updatedProfile != null) {
    //     ref
    //         .read(
    //           globalUserProfileNotifierProvider.notifier,
    //         )
    //         .profile = updatedProfile;

    //     state = AsyncData(state.value!.copyWith(
    //       nickname: updatedProfile.nickname,
    //     ));
    //   }
    // } else {
    //   // 로컬 DB에 프로필이 있다면 nickname 저장
    //   ref
    //       .read(
    //         globalUserProfileNotifierProvider.notifier,
    //       )
    //       .profile = userProfile;

    //   state = AsyncData(state.value!.copyWith(
    //     nickname: userProfile.nickname,
    //   ));
    // }
  }

  Future<GlobalUserProfile?> _getProfileFromHive() {
    return ref.read(getProfileFromHiveUseCaseProvider).execute();
  }

  Future<GlobalUserProfile> _fetchProfileFromServer() async {
    await ref.read(saveProfileToHiveUseCaseProvider).execute();
    final updated = await _getProfileFromHive();
    assert(updated != null, '서버에서 프로필 저장 후에도 Hive에 없음');
    return updated!;
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
