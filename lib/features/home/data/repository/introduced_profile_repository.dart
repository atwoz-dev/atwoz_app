import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final introducedProfileRepositoryProvider =
    Provider<IntroducedProfileRepository>((ref) {
  return IntroducedProfileRepository(ref);
});

class IntroducedProfileRepository extends BaseRepository {
  IntroducedProfileRepository(Ref ref) : super(ref, '/member/introduction');

  Future<List<IntroducedProfileDto>> getProfiles(String category) async {
    final res =
        await apiService.getJson('$path/$category', requiresAuthToken: true);

    return (res['data'] as List<dynamic>)
        .map((e) => IntroducedProfileDto.fromJson(e))
        .toList();
  }
}
