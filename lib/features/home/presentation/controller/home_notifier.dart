import 'package:atwoz_app/app/provider/global_user_profile_notifier.dart';
import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:atwoz_app/features/home/domain/use_case/fetch_recommended_profile_use_case.dart';
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
    final profileNotifier =
        ref.read(globalUserProfileNotifierProvider.notifier);

    // 전역 상태가 Default라면 Hive 또는 서버에서 가져오기
    if (profile.isDefault) {
      profile = await profileNotifier.getProfileFromHive();

      if (profile.isDefault) {
        // Hive에도 데이터가 없으면 서버에서 가져와서 Hive에 저장
        profile = await profileNotifier.fetchProfileToHiveFromServer();
      }

      profileNotifier.profile = profile;
    }

    state = AsyncData(state.value!.copyWith(nickname: profile.nickname));
  }

  Future<void> _fetchRecommendedProfiles() async {
    final profiles =
        await ref.read(fetchRecommendedProfileUseCaseProvider).execute();

    if (!state.hasValue) return;

    state = AsyncData(
      state.requireValue.copyWith(
        recommendedProfiles: profiles,
      ),
    );
  }
}
