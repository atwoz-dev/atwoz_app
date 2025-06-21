import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'my_profile_image.freezed.dart';
part 'my_profile_image.g.dart';

@freezed
@HiveType(typeId: 5, adapterName: 'MyProfileImageAdapter')
class MyProfileImage with _$MyProfileImage {
  const factory MyProfileImage({
    @HiveField(0) required int id,
    @HiveField(1) required String imageUrl,
  }) = _MyProfileImage;

  static String get boxName => 'MyProfileImage';
}
