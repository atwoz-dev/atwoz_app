import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_profile_image.freezed.dart';

@freezed
class MyProfileImage with _$MyProfileImage {
  const factory MyProfileImage({
    required int id,
    required String imageUrl,
  }) = _MyProfileImage;
}
