import 'package:atwoz_app/features/photo/domain/model/profile_photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_update_state.freezed.dart';

@freezed
abstract class ProfileImageUpdateState with _$ProfileImageUpdateState {
  const factory ProfileImageUpdateState({
    required List<ProfilePhoto> profileImages,
    required bool hasDeletion,
    required bool isSaving,
  }) = _ProfileImageUpdateState;
}
