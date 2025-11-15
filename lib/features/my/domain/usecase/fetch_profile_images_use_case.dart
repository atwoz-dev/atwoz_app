import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

final fetchProfileImagesUseCaseProvider = Provider<FetchProfileImagesUseCase>(
  (ref) => FetchProfileImagesUseCase(ref),
);

class FetchProfileImagesUseCase {
  final Ref _ref;

  FetchProfileImagesUseCase(this._ref);

  Future<List<MyProfileImage>> fetchProfileImages() async {
    try {
      //Hive에서 이미지 리스트 가져오기
      final box = await Hive.openBox(MyProfileImage.boxName);
      final storedProfileImages = box.get('images');

      final profileImages = (storedProfileImages is List)
          ? storedProfileImages.cast<MyProfileImage>()
          : null;

      if (profileImages != null) {
        return profileImages;
      }

      // 서버에서 이미지 가져오기
      final profileImageDatas = await _ref
          .read(photoRepositoryProvider)
          .fetchProfileImages();

      final newProfileImages = profileImageDatas
          .map((e) => MyProfileImage(id: e.id, imageUrl: e.url))
          .toList();

      // 캐시에 저장 후 반환
      await box.put('images', newProfileImages);

      return newProfileImages;
    } catch (e) {
      Log.e("❌ 프로필 이미지 가져오기 중 오류 발생: $e");
      return [];
    }
  }
}
