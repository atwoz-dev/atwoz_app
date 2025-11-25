import 'package:atwoz_app/features/photo/domain/usecase/upload_single_photo_uscase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'fetch_photo_usecase.dart';
import 'delete_photo_usecase.dart';
import 'upload_photos_usecase.dart';

// UseCase Providers 모음
final fetchPhotoUsecaseProvider = Provider((ref) => FetchPhotoUseCase(ref));
final deletePhotoUsecaseProvider = Provider((ref) => DeletePhotoUseCase(ref));
final uploadPhotosUsecaseProvider = Provider((ref) => UploadPhotosUseCase(ref));
final uploadSinglePhotoUseCaseProvider = Provider(
  (ref) => UploadSinglePhotoUseCase(ref),
);
