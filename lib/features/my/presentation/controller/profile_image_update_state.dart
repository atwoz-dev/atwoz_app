import 'package:atwoz_app/features/my/domain/model/editable_profile_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_update_state.freezed.dart';

@freezed
class ProfileImageUpdateState with _$ProfileImageUpdateState {
  const factory ProfileImageUpdateState({
    required List<EditableProfileImage?> editableProfileImages,
  }) = _ProfileImageUpdateState;
}
