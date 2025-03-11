import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:atwoz_app/features/photo/domain/usecase/base_usecase.dart';

class DeletePhotoUseCase extends BaseUseCase<void, int> {
  final Ref ref;
  DeletePhotoUseCase(this.ref);

  @override
  Future<void> execute(int params) async {
    await ref.read(photoRepositoryProvider).deleteProfilePhoto(params);
  }
}

final deletePhotoUsecaseProvider = Provider((ref) => DeletePhotoUseCase(ref));
