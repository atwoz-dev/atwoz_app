import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/my/domain/model/editable_profile_image.dart';
import 'package:atwoz_app/features/my/domain/model/my_profile_image.dart';
import 'package:atwoz_app/features/my/presentation/provider/profile_image_update_state.dart';
import 'package:atwoz_app/features/photo/domain/usecase/update_photos_use_case.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_image_update_notifier.g.dart';

@Riverpod(keepAlive: true)
class ProfileImageUpdateNotifier extends _$ProfileImageUpdateNotifier {
  @override
  ProfileImageUpdateState build(
      List<EditableProfileImage?> editableProfileImages) {
    return ProfileImageUpdateState(
      editableProfileImages: editableProfileImages,
    );
  }

  void updateEditableProfileImage({required int index, required XFile image}) {
    final updatedImages = [...state.editableProfileImages];

    final previousImage = updatedImages[index];

    updatedImages[index] = (previousImage == null)
        ? EditableProfileImage(
            id: null,
            imageUrl: null,
            imageFile: image,
            order: index,
            isPrimary: index == 0,
            status: ProfileImageStatus.add,
          )
        : previousImage.copyWith(
            imageFile: image,
            status: ProfileImageStatus.update,
          );

    state = state.copyWith(editableProfileImages: updatedImages);
  }

  void deleteEditableProfileImage({required int index}) {
    final targetProfileImage = state.editableProfileImages[index];

    if (targetProfileImage == null) return;

    final updatedList = [...state.editableProfileImages];

    if (targetProfileImage.status == ProfileImageStatus.add) {
      updatedList[index] = null;
    } else {
      updatedList[index] = targetProfileImage.copyWith(
        imageFile: null,
        status: ProfileImageStatus.delete,
      );
    }
    state = state.copyWith(editableProfileImages: updatedList);
  }

  Future<bool> save() async {
    try {
      await ref
          .read(updatePhotosUsecaseProvider)
          .execute(state.editableProfileImages); // 서버에 이미지 업로드

      final box = await Hive.openBox(MyProfileImage.boxName); // Hive Box 가져오기

      await box.delete('images'); // Hive Box에서 'images' 키로 저장된 데이터 삭제

      return true;
    } catch (e) {
      Log.e("❌ 프로필 이미지 저장 중 오류 발생: $e");
      return false;
    }
  }
}
