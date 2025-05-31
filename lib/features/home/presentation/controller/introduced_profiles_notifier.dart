import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/home/domain/domain.dart';
import 'package:atwoz_app/features/home/domain/use_case/fetch_introduced_profiles_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'introduced_profiles_notifier.g.dart'; // 코드 생성을 위한 부분

@riverpod
class IntroducedProfilesNotifier extends _$IntroducedProfilesNotifier {
  @override
  Future<List<IntroducedProfile>> build(IntroducedCategory category) async {
    final profiles = await ref
        .read(fetchIntroducedProfilesUseCaseProvider)
        .execute(category);

    return profiles;
  }

  Future<void> openProfile(int memberId) async {
    if (!state.hasValue) return;

    final currentProfiles = state.requireValue;

    final updatedProfiles = currentProfiles
        .map((e) => e.id == memberId ? e.copyWith(isIntroduced: true) : e)
        .toList();

    state = AsyncData(updatedProfiles);
  }
}
