import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/home/data/mapper/introduced_profile_mapper.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchIntroducedProfilesUseCaseProvider = Provider(
  (ref) => FetchIntroducedProfilesUseCase(
    repository: ref.read(
      introducedProfileRepositoryProvider,
    ),
  ),
);

class FetchIntroducedProfilesUseCase {
  final IntroducedProfileRepository _repository;

  FetchIntroducedProfilesUseCase({
    required IntroducedProfileRepository repository,
  }) : _repository = repository;

  Future<List<IntroducedProfile>> execute(IntroducedCategory category) async {
    try {
      final response = await _repository.getProfiles(category.name);
      return response
          .map(
            (e) => e.toIntroducedProfile(
              isFavorite: false,
            ), // TODO(jh): 추후 좋아요 API와 연결한 후 isFavorite 값을 지정할 예정. 현재는 false로 하드코딩
          )
          .toList();
    } catch (e, stackTrace) {
      Log.e('소개 받은 이성 리스트 호출 실패: $e\n$stackTrace');
      return [];
    }
  }
}
