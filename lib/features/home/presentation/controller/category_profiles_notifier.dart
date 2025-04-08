import 'package:atwoz_app/features/home/data/repository/introduced_profile_repository_impl.dart';
import 'package:atwoz_app/features/home/domain/repository/introduced_profile_repository.dart';
import 'package:atwoz_app/features/home/presentation/controller/controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_profiles_notifier.g.dart'; // 코드 생성을 위한 부분

@riverpod
IntroducedProfileRepository introducedProfileRepository(
    IntroducedProfileRepositoryRef ref) {
  return IntroducedProfileRepositoryImpl();
}

@riverpod
class GetCategoryProfilesNotifier extends _$GetCategoryProfilesNotifier {
  @override
  CategoryProfilesState build(String category) {
    final state = CategoryProfilesState();

    Future(() => _fetchIntroducedProfiles(category));
    return state;
  }

  Future<void> _fetchIntroducedProfiles(String category) async {
    final introducedProfileRepository =
        ref.read(introducedProfileRepositoryProvider);
    state = state.copyWith(isLoading: true);
    final profiles = await introducedProfileRepository.getProfiles(category);
    print(profiles);
    state = state.copyWith(profiles: profiles, isLoading: false);
  }

  Future<void> openProfile(int memberId) async {
    final introducedProfileRepository =
        ref.read(introducedProfileRepositoryProvider);
    final updatedProfiles = state.profiles
        .map((e) => e.id == memberId ? e.copyWith(isIntroduced: true) : e)
        .toList();
    state = state.copyWith(profiles: updatedProfiles);
  }
}
