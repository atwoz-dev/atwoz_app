import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:atwoz_app/features/photo/domain/usecase/base_usecase.dart';
import 'package:image_picker/image_picker.dart';

class FetchPhotoUseCase extends BaseUseCase<List<XFile?>, void> {
  final Ref ref;
  FetchPhotoUseCase(this.ref);

  @override
  Future<List<XFile?>> execute([void params]) async {
    final response =
        await ref.read(photoRepositoryProvider).fetchProfileImages();
    if (response == null) return List.filled(6, null);

    // order 순으로 정렬
    final sortedPhotos = List.from(response.data)
      ..sort((a, b) => a.order.compareTo(b.order));

    final updatedPhotos = List<XFile?>.filled(6, null);
    for (int i = 0; i < sortedPhotos.length; i++) {
      updatedPhotos[i] = XFile(sortedPhotos[i].url);
    }
    return updatedPhotos;
  }
}

final fetchPhotoUsecaseProvider = Provider((ref) => FetchPhotoUseCase(ref));
