import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/home/data/dto/home_profile_response_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeProfileRepositoryProvider = Provider<HomeProfileRepository>((ref) {
  return HomeProfileRepository(ref);
});

class HomeProfileRepository extends BaseRepository {
  HomeProfileRepository(Ref ref) : super(ref, '/member');

  Future<HomeProfileResponseDto> getProfile() async {
    final response = await apiService.getJson(
      '$path/cache',
      requiresAccessToken: true,
    );

    return HomeProfileResponseDto.fromJson(response['data']);
  }
}
