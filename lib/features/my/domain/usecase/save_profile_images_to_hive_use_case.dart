import 'package:atwoz_app/features/my/domain/model/my_profile_image.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

final saveProfileImagesToHiveUseCaseProvider =
    Provider.autoDispose<SaveProfileImagesToHiveUseCase>(
      (ref) => SaveProfileImagesToHiveUseCase(ref: ref),
    );

class SaveProfileImagesToHiveUseCase {
  final Ref _ref;

  SaveProfileImagesToHiveUseCase({required Ref ref}) : _ref = ref;

  Future<void> execute() async {
    final profileImageDatas = await _ref
        .read(photoRepositoryProvider)
        .fetchProfileImages();

    final profileImages = profileImageDatas
        .map((e) => MyProfileImage(id: e.id, imageUrl: e.url))
        .toList();

    final box = await Hive.openBox(MyProfileImage.boxName);

    // 캐시에 저장 후 반환
    await box.put('images', profileImages);
  }
}
