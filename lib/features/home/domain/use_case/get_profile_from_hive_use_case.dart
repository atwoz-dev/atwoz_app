import 'package:atwoz_app/core/storage/local_storage.dart';
import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce/hive.dart';

final getProfileFromHiveUseCaseProvider = Provider.autoDispose(
  (ref) => GetProfileFromHiveUseCase(
    localStorage: ref.read(localStorageProvider),
  ),
);

class GetProfileFromHiveUseCase {
  final LocalStorage _localStorage;

  GetProfileFromHiveUseCase({
    required LocalStorage localStorage,
  }) : _localStorage = localStorage;

  Future<CachedUserProfile> execute() async {
    final box = await Hive.openBox<CachedUserProfile>(
      CachedUserProfile.boxName,
    );
    final profile = box.get('profile');

    if (profile == null) return CachedUserProfile.init();

    // secureStorage에서 민감 정보 복원
    final kakaoId = await _localStorage.getEncrypted('kakaoId');
    final phoneNumber = await _localStorage.getEncrypted('phoneNumber');

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
