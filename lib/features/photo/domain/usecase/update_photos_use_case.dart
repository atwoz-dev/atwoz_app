import 'package:atwoz_app/features/my/domain/model/editable_profile_image.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:atwoz_app/features/photo/domain/usecase/base_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdatePhotosUseCase
    extends BaseUseCase<void, List<EditableProfileImage?>> {
  final Ref ref;
  UpdatePhotosUseCase(this.ref);

  @override
  Future<void> execute(List<EditableProfileImage?> params) async {
    final validPhotos = params.whereType<EditableProfileImage>().toList();
    final addOrUpdatePhotos = validPhotos
        .where(
          (photo) =>
              photo.status == ProfileImageStatus.add ||
              photo.status == ProfileImageStatus.update,
        )
        .toList();

    final deletedPhotos = validPhotos
        .where((photo) => photo.status == ProfileImageStatus.delete)
        .toList();

    if (addOrUpdatePhotos.isNotEmpty) {
      await ref
          .read(photoRepositoryProvider)
          .updateProfilePhotos(addOrUpdatePhotos);
    }

    if (deletedPhotos.isNotEmpty) {
      await deletedPhotos
          .map(
            (photo) =>
                ref.read(photoRepositoryProvider).deleteProfilePhoto(photo.id!),
          )
          .wait;
    }
  }
}

final updatePhotosUsecaseProvider = Provider((ref) => UpdatePhotosUseCase(ref));
