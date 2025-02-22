import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';

class UploadPhotoUseCase {
  final Ref ref;
  UploadPhotoUseCase(this.ref);

  Future<void> call(List<XFile?> photos) async {
    await ref.read(photoRepositoryProvider).uploadProfilePhotos(photos);
  }
}

final uploadPhotoUsecaseProvider = Provider((ref) => UploadPhotoUseCase(ref));
