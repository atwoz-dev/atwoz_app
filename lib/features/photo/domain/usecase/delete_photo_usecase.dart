import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:atwoz_app/features/photo/domain/usecase/base_usecase.dart';
import 'package:image_picker/image_picker.dart';

class DeletePhotoUseCase extends BaseUseCase<void, XFile> {
  final Ref ref;
  DeletePhotoUseCase(this.ref);

  @override
  Future<void> execute(XFile params) async {
    // if (params.path.startsWith('http')) {
    final profileData =
        await ref.read(photoRepositoryProvider).fetchProfileImages();

    // 원본 데이터에서 S3 URL과 매칭되는 id 찾기
    final profileImage = profileData?.data.firstWhere(
      (image) => image.url == params.path,
    );

    if (profileImage != null) {
      await ref
          .read(photoRepositoryProvider)
          .deleteProfilePhoto(profileImage.id);
    }
    // }
  }
}

final deletePhotoUsecaseProvider = Provider((ref) => DeletePhotoUseCase(ref));
