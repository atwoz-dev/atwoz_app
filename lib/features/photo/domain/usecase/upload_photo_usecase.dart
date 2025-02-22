import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:atwoz_app/features/photo/domain/usecase/base_usecase.dart';

class UploadPhotoUseCase extends BaseUseCase<List<XFile?>, List<XFile?>> {
  final Ref ref;
  UploadPhotoUseCase(this.ref);

  @override
  Future<List<XFile?>> execute(List<XFile?> params) async {
    await ref.read(photoRepositoryProvider).uploadProfilePhotos(params);
    return params;
  }
}

final uploadPhotoUsecaseProvider = Provider((ref) => UploadPhotoUseCase(ref));
