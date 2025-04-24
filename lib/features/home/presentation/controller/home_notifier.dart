import 'package:atwoz_app/features/home/data/data.dart';
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
    _fetchRecommendedProfiles();
    return HomeState();
  }

  Future<void> _fetchRecommendedProfiles() async {
    final recommendedProfileRepository =
        ref.read(recommendedProfileRepositoryProvider);
    final profiles = await recommendedProfileRepository.getProfiles();
    state = state.copyWith(recommendedProfiles: profiles);
  }
}
