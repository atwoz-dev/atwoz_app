import 'package:deepple_app/core/util/util.dart';
import 'package:deepple_app/features/my/domain/model/my_profile_image.dart';
import 'package:deepple_app/features/photo/data/repository/photo_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

final saveProfileImagesToHiveUseCaseProvider =
    Provider.autoDispose<SaveProfileImagesToHiveUseCase>(
      (ref) => SaveProfileImagesToHiveUseCase(ref: ref),
    );

class SaveProfileImagesToHiveUseCase {
  final Ref _ref;

  SaveProfileImagesToHiveUseCase({required Ref ref}) : _ref = ref;

  Future<List<MyProfileImage>> execute() async {
    try {
      final profileImageDatas = await _ref
          .read(photoRepositoryProvider)
          .fetchProfileImages();

      final profileImages = profileImageDatas
          .map((e) => MyProfileImage(id: e.id, imageUrl: e.url))
          .toList();

      final box = await Hive.openBox(MyProfileImage.boxName);

      await box.put('images', profileImages);

      return profileImages;
    } catch (e) {
      Log.e('프로필 이미지 호출 실패: $e');
      return [];
    }
  }
}
