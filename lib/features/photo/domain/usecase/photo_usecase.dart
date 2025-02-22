import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'fetch_photo_usecase.dart';
import 'delete_photo_usecase.dart';
import 'upload_photo_usecase.dart';

// UseCase Providers 모음
final fetchPhotoUsecaseProvider = Provider((ref) => FetchPhotoUseCase(ref));
final deletePhotoUsecaseProvider = Provider((ref) => DeletePhotoUseCase(ref));
final uploadPhotoUsecaseProvider = Provider((ref) => UploadPhotoUseCase(ref));
