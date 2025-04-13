import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/profile/data/dto/profile_detail_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return ProfileRepository(ref);
});

class ProfileRepository extends BaseRepository {
  ProfileRepository(Ref ref) : super(ref, '/member');

  Future<ProfileDetailResponse> getProfileDetail(int id) async {
    final res = await apiService.getJson('$path/$id');
    if (res is! Map<String, dynamic> || res['data'] is! Map<String, Object?>) {
      throw Exception();
    }

    return ProfileDetailResponse.fromJson(res['data']);
  }
}
