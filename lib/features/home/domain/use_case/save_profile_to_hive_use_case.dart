import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/home/data/mapper/global_user_profile_mapper.dart';
import 'package:atwoz_app/features/home/data/repository/home_profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

final saveProfileToHiveUseCaseProvider = Provider.autoDispose(
  (ref) => SaveProfileToHiveUseCase(
    repository: ref.read(homeProfileRepositoryProvider),
    secureStorage: const FlutterSecureStorage(),
  ),
);

class SaveProfileToHiveUseCase {
  final HomeProfileRepository _repository;
  final FlutterSecureStorage _secureStorage;

  SaveProfileToHiveUseCase({
    required HomeProfileRepository repository,
    required FlutterSecureStorage secureStorage,
  })  : _repository = repository,
        _secureStorage = secureStorage;

  Future<void> execute() async {
    try {
      final homeProfileDto = await _repository.getProfile(); // 서버에서 프로필 가져오기

      final cachedUserProfile =
          homeProfileDto.toCachedUserProfile(); // Hive에 저장할 프로필

      Box<CachedUserProfile> box; // Hive Box 가져오기

      try {
        box = await Hive.openBox<CachedUserProfile>(
          CachedUserProfile.boxName,
        );
      } catch (e) {
        await Hive.deleteBoxFromDisk(CachedUserProfile.boxName);
        box = await Hive.openBox<CachedUserProfile>(
          CachedUserProfile.boxName,
        );
      }

      await box.put('profile', cachedUserProfile); // Hive에 저장

      // SecureStorage 저장

      await _secureStorage.write(
        key: 'kakaoId',
        value: homeProfileDto.basicInfo.kakaoId,
      );
      await _secureStorage.write(
        key: 'phoneNumber',
        value: homeProfileDto.basicInfo.phoneNumber,
      );
    } catch (e, stacktrace) {
      throw Exception('Failed to fetch profile from server');
    }
  }
}
