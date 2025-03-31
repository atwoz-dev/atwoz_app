import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:atwoz_app/features/photo/domain/usecase/base_usecase.dart';
import 'package:atwoz_app/features/photo/data/dto/profile_image_response.dart';
import 'package:collection/collection.dart';

class FetchPhotoUseCase extends BaseUseCase<List<ProfileImageData?>, void> {
  final Ref ref;
  FetchPhotoUseCase(this.ref);

  static const int _maxPhotos = 6;

  @override
  Future<List<ProfileImageData?>> execute([void params]) async {
    final response =
        await ref.read(photoRepositoryProvider).fetchProfileImages();
    if (response == null) return List.filled(_maxPhotos, null);

    // 6개의 리스트를 유지하면서 `order` 값 기준으로 배치
    return List.filled(_maxPhotos, null).mapIndexed((index, _) {
      final photo = [...response.data].firstWhereOrNull(
        (img) => img.order == index,
      );
      return photo != null
          ? ProfileImageData(
              id: photo.id,
              url: photo.url,
              isPrimary: photo.isPrimary,
              order: photo.order)
          : null;
    }).toList();
  }
}

final fetchPhotoUsecaseProvider = Provider((ref) => FetchPhotoUseCase(ref));
