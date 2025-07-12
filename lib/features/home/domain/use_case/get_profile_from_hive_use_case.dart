import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

final getProfileFromHiveUseCaseProvider = Provider.autoDispose(
  (ref) => GetProfileFromHiveUseCase(
    secureStorage: const FlutterSecureStorage(),
  ),
);

class GetProfileFromHiveUseCase {
  final FlutterSecureStorage _secureStorage;

  GetProfileFromHiveUseCase({
    required FlutterSecureStorage secureStorage,
  }) : _secureStorage = secureStorage;

  Future<GlobalUserProfile> execute() async {
    final box = await Hive.openBox<GlobalUserProfile>(
      GlobalUserProfile.boxName,
    );
    final profile = box.get('profile');

    if (profile == null) return GlobalUserProfile.init();

    // secureStorage에서 민감 정보 복원
    final kakaoId = await _secureStorage.read(key: 'kakaoId');
    final phoneNumber = await _secureStorage.read(key: 'phoneNumber');

    if (phoneNumber == null) {
      Log.e(
        '⚠️ phoneNumber is null in secure storage, fallback to empty string',
      );
    }

    return profile.copyWith(
      kakaoId: kakaoId,
      phoneNumber: phoneNumber ?? '',
    );
  }
}
