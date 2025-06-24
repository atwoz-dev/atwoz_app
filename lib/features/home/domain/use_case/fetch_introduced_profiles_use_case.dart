import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/home/data/mapper/introduced_profile_mapper.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchIntroducedProfilesUseCaseProvider = Provider(
  (ref) => FetchIntroducedProfilesUseCase(ref: ref),
);

class FetchIntroducedProfilesUseCase {
  final Ref _ref;

  FetchIntroducedProfilesUseCase({required Ref ref}) : _ref = ref;

  Future<List<IntroducedProfile>> execute(IntroducedCategory category) async {
    try {
      final response = await _ref
          .read(mockIntroducedProfileRepositoryProvider)
          .getProfiles(category.name);
      final profiles = response.map((e) => e.toIntroducedProfile()).toList();

      return profiles.map((profile) {
        final tags = _getTagsForCategory(profile, category);
        tags.sort((a, b) => a.length.compareTo(b.length));
        return profile.copyWith(tags: tags);
      }).toList();
    } catch (e, stackTrace) {
      Log.e('소개 받은 이성 리스트 호출 실패: $e\n$stackTrace');
      return [];
    }
  }

  List<String> _getTagsForCategory(
      IntroducedProfile profile, IntroducedCategory category) {
    switch (category) {
      case IntroducedCategory.grade:
      case IntroducedCategory.recent:
      case IntroducedCategory.city:
        return [
          ...profile.hobbies.map((hobby) => hobby.label),
          profile.religion.label,
          profile.mbti,
        ];
      case IntroducedCategory.religion:
        return [
          ...profile.hobbies.map((hobby) => hobby.label),
          profile.mbti,
        ];
      case IntroducedCategory.hobby:
        return [
          profile.religion.label,
          profile.mbti,
        ];
    }
  }
}
