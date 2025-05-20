import 'package:atwoz_app/app/provider/global_user_profile_notifier.dart';
import 'package:atwoz_app/features/home/data/data.dart';
import 'package:atwoz_app/features/home/domain/use_case/get_global_user_profile_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_home_profile_use_case.dart';
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
    final globalProfile =
        ref.read(globalUserProfileNotifierProvider); // 전역상태 프로필 먼저 확인

    if (globalProfile != null) {
      // 전역상태에 프로필이 있다면 nickname 저장
      state = AsyncData(state.value!.copyWith(
        nickname: globalProfile.nickname,
      ));
      return;
    }

    final userProfile = await ref
        .read(getGlobalUserProfileUseCaseProvider)
        .execute(); // 로컬 DB에서 프로필 가져오기

    if (userProfile == null) {
      // 로컬 DB에 프로필이 없다면 서버에서 프로필 가져오기
      await ref
          .read(saveHomeProfileUseCaseProvider)
          .execute(); // 서버에서 가져온 프로필 Hive에 저장

      final updatedProfile = await ref
          .read(getGlobalUserProfileUseCaseProvider)
          .execute(); // 다시 로컬 DB에서 프로필 가져오기

      if (updatedProfile != null) {
        ref
            .read(globalUserProfileNotifierProvider.notifier)
            .set(updatedProfile);

        state = AsyncData(state.value!.copyWith(
          nickname: updatedProfile.nickname,
        ));
      }
    } else {
      // 로컬 DB에 프로필이 있다면 nickname 저장
      ref.read(globalUserProfileNotifierProvider.notifier).set(userProfile);

      state = AsyncData(state.value!.copyWith(
        nickname: userProfile.nickname,
      ));
    }
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
