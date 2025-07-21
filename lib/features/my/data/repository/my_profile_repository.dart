import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/network/network_exception.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/my/data/dto/profile_update_request_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myProfileRepositoryProvider = Provider<MyProfileRepository>(
  (ref) => MyProfileRepository(ref),
);

class MyProfileRepository extends BaseRepository {
  MyProfileRepository(Ref ref) : super(ref, '/member');

  Future<bool> updateProfile(ProfileUpdateRequestDto profile) async {
    try {
      await apiService.putJson(
        '$path/profile',
        data: profile.toJson(),
      );

      return true;
    } on NetworkException catch (e) {
      Log.e('네트워크 오류입니다: $e');
      return false;
    } catch (e) {
      Log.e('알 수 없는 오류입니다: $e');
      return false;
    }
  }

  Future<bool> withdrawAccount() async {
    try {
      // TODO(Han): delete api call + clear user information in local/memory
      await apiService.deleteJson(path, requiresAuthToken: true);
      return true;
    } on NetworkException catch (e) {
      Log.e('네트워크 오류입니다: $e');
      return false;
    }
  }

  Future<bool> deactiveAccount() async {
    try {
      await apiService.postJson('$path/profile/dormant', data: {});
      return true;
    } on NetworkException catch (e) {
      Log.e('네트워크 오류입니다: $e');
      return false;
    }
  }

  Future<String?> activeAccount(String phoneNumber) async {
    try {
      // TODO(Han): Implement the logic to convert accessToken parsing after server ready.
      return await apiService.postJson(
        '$path/profile/active',
        data: {'phoneNumber': phoneNumber},
      );
    } on NetworkException catch (e) {
      Log.e('네트워크 오류입니다: $e');
      return null;
    }
  }
}
