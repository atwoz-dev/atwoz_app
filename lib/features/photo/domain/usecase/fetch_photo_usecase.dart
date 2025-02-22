import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:atwoz_app/features/auth/data/dto/profile_image_response.dart';

class FetchPhotoUseCase {
  final Ref ref;
  FetchPhotoUseCase(this.ref);

  Future<ProfileImageResponse?> call() async {
    return await ref.read(photoRepositoryProvider).fetchProfileImages();
  }
}

final fetchPhotoUsecaseProvider = Provider((ref) => FetchPhotoUseCase(ref));
