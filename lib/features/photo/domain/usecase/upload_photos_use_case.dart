import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';

class UploadPhotosUseCase {
  final Ref ref;
  UploadPhotosUseCase(this.ref);

  Future<bool> execute(List<XFile?> photos) async {
    final imageFiles =
        photos.whereType<XFile>().toList().map((e) => File(e.path)).toList();

    final responses = await Future.wait(
      imageFiles.map(
        (_) => ref.read(photoRepositoryProvider).getPresignedUrl(),
      ),
    );

    final presignedUrls = responses.map((e) => e.presignedUrl).toList();

    return await ref
        .read(photoRepositoryProvider)
        .uploadProfilePhotos(
          presignedUrls: presignedUrls,
          imageFiles: imageFiles,
        );
  }
}

final uploadPhotosUsecaseProvider = Provider((ref) => UploadPhotosUseCase(ref));
