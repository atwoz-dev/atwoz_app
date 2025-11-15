import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/photo/domain/model/profile_photo.dart';
import 'package:atwoz_app/features/my/domain/model/my_profile_image.dart';
import 'package:atwoz_app/features/photo/domain/usecase/upload_photos_use_case.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_image_update_notifier.g.dart';

@Riverpod(keepAlive: true)
class ProfileImageUpdateNotifier extends _$ProfileImageUpdateNotifier {
  @override
  List<ProfilePhoto> build(List<ProfilePhoto> profilePhotos) {
    Log.d('가져온 프로필 이미지 리스트는 $profilePhotos');
    return profilePhotos;
  }

  bool get isSaveEnabled => state.any((image) => image.isUpdated == true);

  /// 프로필 이미지 업데이트
  Future<void> updateEditableProfileImages({
    required int index,
    required XFile image,
  }) async {
    Log.d('여기 진입함');

    try {
      // 현재 state 복사
      final updatedImages = [...state];

      if (index < 0 || index > Dimens.profileImageMaxCount - 1) {
        throw Exception(
          '인덱스는 0보다 작거나 ${Dimens.profileImageMaxCount - 1}보다 클 수가 없습니다.',
        );
      }

      // 리스트 범위보다 큰 인덱스 → append
      if (index >= updatedImages.length) {
        updatedImages.add(ProfilePhoto(imageFile: image, isUpdated: true));

        state = updatedImages;

        return;
      }

      updatedImages[index] = updatedImages[index].copyWith(
        imageFile: image,
        isUpdated: true,
      );

      state = updatedImages;
    } catch (e) {
      Log.e('이미지 추가/변경 중 오류 발생: $e');
    }
  }

  /// 프로필 이미지 삭제
  void deleteEditableProfileImage(int index) {
    if (index < 0 || index > state.length) {
      Log.d('인덱스가 리스트 범위에서 벗어났습니다.');
      return;
    }

    final copiedImages = [...state];
    copiedImages.removeAt(index);

    state = copiedImages;

    Log.d('삭제 후 state: $state');
  }

  /// 서버 업로드 + Hive에 저장된 데이터 삭제
  Future<bool> save(List<ProfilePhoto> photos) async {
    try {
      // 서버 업로드
      final isSuccess = await ref
          .read(uploadPhotosUsecaseProvider)
          .execute(photos);

      if (isSuccess) {
        // Hive 데이터 삭제
        final box = await Hive.openBox(MyProfileImage.boxName);
        await box.delete('images');
      }

      return isSuccess;
    } catch (e) {
      Log.e("❌ 프로필 이미지 저장 중 오류 발생: $e");
      return false;
    }
  }
}
