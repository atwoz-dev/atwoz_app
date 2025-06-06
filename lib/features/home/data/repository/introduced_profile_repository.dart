import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/util.dart';
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

    final data = res['data'];
    if (data is! List<Map<String, dynamic>>) {
      Log.e('응답 형식 오류: data 필드가 리스트 아님');
      throw const FormatException('응답 형식이 올바르지 않습니다');
    }

    return data.map(IntroducedProfileDto.fromJson).toList();
  }
}
