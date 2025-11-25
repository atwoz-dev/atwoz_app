import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:atwoz_app/features/photo/domain/usecase/base_usecase.dart';

class UploadSinglePhotoUseCase extends BaseUseCase<void, (int, XFile)> {
  final Ref ref;
  UploadSinglePhotoUseCase(this.ref);

  @override
  Future<void> execute((int, XFile) params) async {
    final (index, photo) = params;
    await ref.read(photoRepositoryProvider).uploadSinglePhoto(index, photo);
  }
}

final uploadSinglePhotoUsecaseProvider = Provider(
  (ref) => UploadSinglePhotoUseCase(ref),
);
