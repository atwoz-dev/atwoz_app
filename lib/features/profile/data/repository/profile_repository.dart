import 'package:deepple_app/app/enum/contact_method.dart';
import 'package:deepple_app/core/network/base_repository.dart';
import 'package:deepple_app/core/network/network_exception.dart';
import 'package:deepple_app/core/storage/local_storage.dart';
import 'package:deepple_app/core/storage/local_storage_item.dart';
import 'package:deepple_app/core/util/log.dart';
import 'package:deepple_app/core/util/shared_preference/shared_preference_key.dart';
import 'package:deepple_app/core/util/shared_preference/shared_preference_manager.dart';
import 'package:deepple_app/features/profile/data/dto/profile_detail_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return ProfileRepository(ref);
});

class ProfileRepository extends BaseRepository {
  ProfileRepository(Ref ref) : super(ref, '');

  Future<ProfileDetailResponse> getProfileDetail(int id) async {
    final res = await apiService.getJson<Map<String, dynamic>>('/member/$id');

    if (res['data'] is! Map<String, Object?>) {
      throw const NetworkException.formatException();
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

  Future<bool> requestProfileExchange(int responderId) async {
    try {
      final response = await apiService.postJson(
        '/profile-exchange/request/$responderId',
        data: null,
      );

      final int statusCode = response['status'] ?? 500;
      return statusCode >= 200 && statusCode < 300;
    } catch (e) {
      Log.e('Failed to request profile exchange: $e');
      return false;
    }
  }

  Future<String> getPhoneNumber() async {
    final phoneNumber = await ref
        .read(localStorageProvider)
        .getEncrypted(SecureStorageItem.phoneNumber);
    return phoneNumber ?? '';
  }

  Future<String?> getKakaoId() async {
    final kakaoId = await ref
        .read(localStorageProvider)
        .getEncrypted(SecureStorageItem.kakaoId);
    return kakaoId;
  }

  ContactMethod? getContactMethod() {
    final contactMethod = SharedPreferenceManager.getValue(
      SharedPreferenceKeys.defaultContactMethod,
    );
    return contactMethod;
  }

  void setContactMethod(ContactMethod method) {
    SharedPreferenceManager.setValue(
      SharedPreferenceKeys.defaultContactMethod,
      method,
    );
  }

  Future<bool> setKakaoId(String kakaoId) async {
    final original = await ref
        .read(localStorageProvider)
        .getEncrypted(SecureStorageItem.kakaoId);

    if (original == kakaoId) return true;

    try {
      await apiService.patchJson<Map<String, dynamic>>(
        '/member/profile/contact/kakao',
        data: kakaoId,
      );

      await ref
          .read(localStorageProvider)
          .saveEncrypted(SecureStorageItem.kakaoId, kakaoId);

      return true;
    } catch (e) {
      Log.e('Failed to set Kakao ID: $e');
      return false;
    }
  }

  void setPhoneNumber(String phoneNumber) {
    ref
        .read(localStorageProvider)
        .saveEncrypted(SecureStorageItem.phoneNumber, phoneNumber);
  }
}
