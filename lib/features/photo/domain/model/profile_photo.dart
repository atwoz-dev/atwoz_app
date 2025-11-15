import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_photo.freezed.dart';

// 프로필 이미지 수정 화면에서 사용되는 모델
@freezed
abstract class ProfilePhoto with _$ProfilePhoto {
  const factory ProfilePhoto({
    String? imageUrl,
    XFile? imageFile,
    required bool isUpdated,
  }) = _ProfilePhoto;
}
