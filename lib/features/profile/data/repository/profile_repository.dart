import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/profile/data/dto/profile_detail_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return ProfileRepository(ref);
});

class ProfileRepository extends BaseRepository {
  ProfileRepository(Ref ref) : super(ref, '');

  Future<ProfileDetailResponse> getProfileDetail(int id) async {
    final res = await apiService.getJson<Map<String, dynamic>>('/member/$id');
    if (res['data'] is! Map<String, Object?>) {
      throw Exception('data type is not Map<String, dynamic> $res');
    }

    return ProfileDetailResponse.fromJson(res['data']);
  }

  Future<bool> approveProfileExchange(int profileExchangeId) async {
    try {
      final response = await apiService.patchJson<Map<String, dynamic>>(
        '/profile-exchange/$profileExchangeId/approve',
      );
      final int statusCode = response['status'] ?? 500;
      return statusCode >= 200 && statusCode < 300;
    } catch (e) {
      Log.e('Failed to approve profile exchange: $e');
      return false;
    }
  }

  Future<bool> rejectProfileExchange(int profileExchangeId) async {
    try {
      final response = await apiService.patchJson(
        '/profile-exchange/$profileExchangeId/reject',
      );
      final int statusCode = response['status'] ?? 500;
      return statusCode >= 200 && statusCode < 300;
    } catch (e) {
      Log.e('Failed to reject profile exchange: $e');
      return false;
    }
  }
}
