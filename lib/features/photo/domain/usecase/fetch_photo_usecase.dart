import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:atwoz_app/features/photo/domain/usecase/base_usecase.dart';
import 'package:image_picker/image_picker.dart';
import 'package:collection/collection.dart';

class FetchPhotoUseCase extends BaseUseCase<List<XFile?>, void> {
  final Ref ref;
  FetchPhotoUseCase(this.ref);

  static const int _maxPhotos = 6;

  @override
  Future<List<XFile?>> execute([void params]) async {
    final response =
        await ref.read(photoRepositoryProvider).fetchProfileImages();
    if (response == null) return List.filled(_maxPhotos, null);

    // order 순으로 정렬
    final sortedPhotos = response.data.toList()
      ..sort((a, b) => a.order.compareTo(b.order));

    // 사진 개수가 바뀔 경우를 대비해 안전하게 리스트 생성
    return List<XFile?>.filled(_maxPhotos, null).mapIndexed((index, _) {
      final photo =
          sortedPhotos.firstWhereOrNull((photo) => photo.order == index);
      return photo != null ? XFile(photo.url) : null;
    }).toList();
  }
}

final fetchPhotoUsecaseProvider = Provider((ref) => FetchPhotoUseCase(ref));
