import 'package:image_picker/image_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_wrapper.freezed.dart';

@freezed
class ProfileImageWrapper with _$ProfileImageWrapper {
  const factory ProfileImageWrapper({
    required int id,
    required XFile file,
  }) = _ProfileImageWrapper;
}
