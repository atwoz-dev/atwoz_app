import 'package:atwoz_app/core/storage/local_storage.dart';
import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:atwoz_app/features/home/data/mapper/global_user_profile_mapper.dart';
import 'package:atwoz_app/features/home/data/repository/home_profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

final saveProfileToHiveUseCaseProvider = Provider.autoDispose(
  (ref) => SaveProfileToHiveUseCase(
    repository: ref.read(homeProfileRepositoryProvider),
    localStorage: ref.read(localStorageProvider),
  ),
);

class SaveProfileToHiveUseCase {
  final HomeProfileRepository _repository;
  final LocalStorage _localStorage;

  SaveProfileToHiveUseCase({
    required HomeProfileRepository repository,
    required LocalStorage localStorage,
  })  : _repository = repository,
        _localStorage = localStorage;

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
      if (homeProfileDto.basicInfo.kakaoId != null) {
        await _localStorage.saveEncrypted(
            'kakaoId', homeProfileDto.basicInfo.kakaoId!);
      }

      await _localStorage.saveEncrypted(
          'phoneNumber', homeProfileDto.basicInfo.phoneNumber);
    } on Exception {
      rethrow;
    }
  }
}
