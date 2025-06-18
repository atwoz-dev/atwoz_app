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
      final storedProfileImages = box.get('images') as List<dynamic>?;
      final profileImages = storedProfileImages
          ?.map(
            (item) => item as MyProfileImage?,
          )
          .toList();

      // Hive에 저장된 이미지가 없으면 서버에서 가져오기
      if (storedProfileImages == null ||
          profileImages!.every((image) => image == null)) {
        final response =
            await _ref.read(photoRepositoryProvider).fetchProfileImages();

        if (response == null) return List.filled(6, null);

        // order 순으로 정렬
        final sortedPhotos = response.data.toList()
          ..sort((a, b) => a.order.compareTo(b.order));

        //크기 6인 리스트를 미리 생성하고 order를 인덱스로 사용해 매핑
        final profileImages = List<MyProfileImage?>.filled(6, null);

        for (final image in sortedPhotos) {
          if (image.order < 0 || image.order >= sortedPhotos.length) {
            continue;
          }
          profileImages[image.order] = MyProfileImage(
            id: image.id,
            imageUrl: image.url,
          );
        }

        await box.put(
          'images',
          profileImages,
        );

        return profileImages;
      }

      return profileImages;
    } catch (e) {
      Log.e("❌ 프로필 이미지 가져오기 중 오류 발생: $e");
      return List.filled(6, null); // 앱이 정상적으로 작동할 수 있도록 null로 채운 리스트 반환
    }
  }
}

final myProfileImageBoxProvider = FutureProvider<Box>((ref) async {
  return Hive.openBox(MyProfileImage.boxName);
});
