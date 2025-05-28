import 'package:atwoz_app/app/state/global_user_profile.dart';
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
    final homeProfileDto = await _repository.getProfile();

    final globalUserProfile = homeProfileDto.toGlobalUserProfile();

    final box = await Hive.openBox<GlobalUserProfile>(
      GlobalUserProfile.boxName,
    );

    await box.put('profile', globalUserProfile);

    // SecureStorage 저장
    await _secureStorage.write(
        key: 'kakaoId', value: homeProfileDto.basicInfo.kakaoId);
    await _secureStorage.write(
        key: 'phoneNumber', value: homeProfileDto.basicInfo.phoneNumber);
  }
}
