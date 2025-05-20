import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

final getGlobalUserProfileUseCaseProvider = Provider.autoDispose(
  (ref) =>
      GetGlobalUserProfileUseCase(secureStorage: const FlutterSecureStorage()),
);

class GetGlobalUserProfileUseCase {
  final FlutterSecureStorage _secureStorage;

  GetGlobalUserProfileUseCase({required FlutterSecureStorage secureStorage})
      : _secureStorage = secureStorage;

  Future<GlobalUserProfile?> execute() async {
    final box = await Hive.openBox<GlobalUserProfile>('globalUserProfile');
    final profile = box.get('profile');

    if (profile == null) return null;

    // secureStorage에서 민감 정보 복원
    final kakaoId = await _secureStorage.read(key: 'kakaoId');
    final phoneNumber = await _secureStorage.read(key: 'phoneNumber');

    return profile.copyWith(
      kakaoId: kakaoId,
      phoneNumber: phoneNumber!, // null이 아님을 보장하기 위해
    );
  }
}
