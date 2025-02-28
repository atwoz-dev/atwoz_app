import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:atwoz_app/features/photo/domain/usecase/base_usecase.dart';
import 'package:image_picker/image_picker.dart';

class FetchPhotoUseCase extends BaseUseCase<List<XFile?>, void> {
  final Ref ref;
  FetchPhotoUseCase(this.ref);

  static const int _maxPhotos = 6;

  @override
  Future<List<XFile?>> execute([void params]) async {
    final response =
        await ref.read(photoRepositoryProvider).fetchProfileImages();
    if (response == null) return List.filled(_maxPhotos, null);

    // order 순으로 정렬
    final sortedPhotos = response.data.toList()
      ..sort((a, b) => a.order.compareTo(b.order));

    return [
      ...sortedPhotos.take(_maxPhotos).map((photo) => XFile(photo.url)),
      ...List.filled(_maxPhotos - sortedPhotos.length, null)
    ];
  }
}

final fetchPhotoUsecaseProvider = Provider((ref) => FetchPhotoUseCase(ref));
