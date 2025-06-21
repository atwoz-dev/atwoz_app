import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'editable_profile_image.freezed.dart';

enum ProfileImageStatus { none, add, update, delete }

// 프로필 이미지 수정 화면에서 사용되는 모델
@freezed
class EditableProfileImage with _$EditableProfileImage {
  const factory EditableProfileImage({
    int? id,
    String? imageUrl,
    XFile? imageFile,
    required int order,
    required bool isPrimary,
    required ProfileImageStatus status,
  }) = _EditableProfileImage;
}
