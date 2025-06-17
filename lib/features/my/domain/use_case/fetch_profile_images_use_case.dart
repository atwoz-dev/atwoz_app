import 'package:atwoz_app/features/my/my.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final fetchProfileImagesUseCaseProvider = Provider<FetchProfileImagesUseCase>(
  (ref) => FetchProfileImagesUseCase(
    photoRepository: ref.read(photoRepositoryProvider),
  ),
);

class FetchProfileImagesUseCase {
  final PhotoRepository _photoRepository;

  FetchProfileImagesUseCase({
    required PhotoRepository photoRepository,
  }) : _photoRepository = photoRepository;

  Future<List<MyProfileImage?>> fetchProfileImages() async {
    //Hive에서 이미지 리스트 가져오기
    final box = await Hive.openBox(MyProfileImage.boxName);
    final storedProfileImages = box.get('images') as List<dynamic>?;
    final profileImages = storedProfileImages
        ?.map(
          (item) => item as MyProfileImage?,
        )
        .toList();

    // Hive에 저장된 이미지가 없으면 서버에서 가져오기
    if (storedProfileImages == null ||
        profileImages!.every((image) => image == null)) {
      final response = await _photoRepository.fetchProfileImages();

      if (response == null) return List.filled(6, null);

      // order 순으로 정렬
      final sortedPhotos = response.data.toList()
        ..sort((a, b) => a.order.compareTo(b.order));

      //크기 6인 리스트를 미리 생성하고 order를 인덱스로 사용해 매핑
      final profileImages = List<MyProfileImage?>.filled(6, null);

      for (final image in sortedPhotos) {
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
  }
}
