import 'package:atwoz_app/features/home/data/repository/introduced_profile_repository_impl.dart';
import 'package:atwoz_app/features/home/presentation/controller/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repository/introduced_profile_repository.dart';

part 'home_notifier.g.dart'; // 코드 생성을 위한 부분

@riverpod
IntroducedProfileRepository introducedProfileRepository(
    IntroducedProfileRepositoryRef ref) {
  return IntroducedProfileRepositoryImpl();
}

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  HomeState build() {
    _fetchIntroducedProfiles();
    return HomeState();
  }

  Future<void> _fetchIntroducedProfiles() async {
    final introducedProfileRepository =
        ref.read(introducedProfileRepositoryProvider);
    final profiles = await introducedProfileRepository.getProfiles();
    state = state.copyWith(introducedProfiles: profiles);
  }
}
