import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';

class DeletePhotoUseCase {
  final Ref ref;
  DeletePhotoUseCase(this.ref);

  Future<void> call(int id) async {
    await ref.read(photoRepositoryProvider).deleteProfilePhoto(id);
  }
}

final deletePhotoUsecaseProvider = Provider((ref) => DeletePhotoUseCase(ref));
