import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final fetchProfileImagesUseCaseProvider = Provider<FetchProfileImagesUseCase>(
  (ref) => FetchProfileImagesUseCase(ref),
);

class FetchProfileImagesUseCase {
  final Ref _ref;

  FetchProfileImagesUseCase(this._ref);

  Future<List<MyProfileImage?>> fetchProfileImages() async {
    try {
      //Hive에서 이미지 리스트 가져오기
      final box = await _ref.read(myProfileImageBoxProvider.future);
      final storedProfileImages = box.get('images');

      final profileImages = (storedProfileImages is List)
          ? storedProfileImages.cast<MyProfileImage?>()
          : null;

      // Hive에 저장된 이미지가 유효하지 않은지 확인
      final isInvalid = profileImages == null ||
          profileImages.every((image) => image == null);

      if (!isInvalid) {
        return profileImages;
      }

      // 서버에서 이미지 가져오기
      final response =
          await _ref.read(photoRepositoryProvider).fetchProfileImages();

      // 서버 응답이 없으면 빈 리스트 반환
      if (response == null) return List<MyProfileImage?>.filled(6, null);

      // 정렬 및 매핑
      final sortedPhotos = response.data.toList()
        ..sort((a, b) => a.order.compareTo(b.order));

      final newProfileImages = List<MyProfileImage?>.filled(6, null);

      for (final image in sortedPhotos) {
        if (image.order >= 0 && image.order < newProfileImages.length) {
          newProfileImages[image.order] = MyProfileImage(
            id: image.id,
            imageUrl: image.url,
          );
        }
      }

      // 캐시에 저장 후 반환
      await box.put('images', newProfileImages);

      return newProfileImages;
    } catch (e) {
      Log.e("❌ 프로필 이미지 가져오기 중 오류 발생: $e");
      return List.filled(6, null); // 앱이 정상적으로 작동할 수 있도록 null로 채운 리스트 반환
    }
  }
}

final myProfileImageBoxProvider = FutureProvider<Box>((ref) async {
  return Hive.openBox(MyProfileImage.boxName);
});
