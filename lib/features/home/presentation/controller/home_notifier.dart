import 'package:atwoz_app/features/home/data/data.dart';
import 'package:atwoz_app/features/home/domain/use_case/get_global_user_profile_use_case.dart';
import 'package:atwoz_app/features/home/presentation/controller/controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/domain.dart';

part 'home_notifier.g.dart'; // 코드 생성을 위한 부분

@riverpod
RecommendedProfileRepository recommendedProfileRepository(
    RecommendedProfileRepositoryRef ref) {
  return RecommendedProfileRepositoryImpl();
}

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  HomeState build() {
    //_fetchRecommendedProfiles();
    _fetchHomeProfile();
    return const HomeState(nickname: '');
  }

  Future<void> _fetchHomeProfile() async {
    final profile = ref.read(getGlobalUserProfileUseCaseProvider);
    profile.whenData((data) async {
      final profile = await data.execute();
      state = state.copyWith(nickname: profile.nickname);
    });
  }

  Future<void> _fetchRecommendedProfiles() async {
    final recommendedProfileRepository =
        ref.read(recommendedProfileRepositoryProvider);
    final profiles = await recommendedProfileRepository.getProfiles();
    state = state.copyWith(recommendedProfiles: profiles);
  }
}
