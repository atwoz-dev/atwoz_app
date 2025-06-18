import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/my/domain/model/editable_profile_image.dart';
import 'package:atwoz_app/features/my/domain/model/my_profile_image.dart';
import 'package:atwoz_app/features/my/domain/use_case/fetch_profile_images_use_case.dart';
import 'package:atwoz_app/features/my/presentation/controller/profile_image_update_state.dart';
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

  bool get isSaveEnabled => state.editableProfileImages.any(
        (image) =>
            image?.status == ProfileImageStatus.add ||
            image?.status == ProfileImageStatus.update ||
            image?.status == ProfileImageStatus.delete,
      );

  void updateEditableProfileImage({required int index, required XFile image}) {
    final updatedList =
        state.editableProfileImages.map((e) => e?.copyWith()).toList();

    final oldImage = updatedList[index];

    if (oldImage == null) {
      updatedList[index] = EditableProfileImage(
        id: null,
        imageUrl: null,
        imageFile: image,
        order: index,
        isPrimary: index == 0,
        status: ProfileImageStatus.add,
      );
    } else {
      updatedList[index] = oldImage.copyWith(
        imageFile: image,
        status: ProfileImageStatus.update,
      );
    }

    state = state.copyWith(
      editableProfileImages: updatedList,
    );
  }

  void deleteEditableProfileImage({required int index}) {
    final oldList = state.editableProfileImages;

    // 새 리스트 생성 (불변성을 유지하기 위함)
    final updatedList = List<EditableProfileImage?>.from(oldList);

    final oldImage = updatedList[index];

    if (oldImage == null) {
      return;
    }

    // 새로 추가한 이후에 다시 삭제하는 경우
    if (oldImage.status == ProfileImageStatus.add) {
      updatedList[index] = null;
      state = state.copyWith(
        editableProfileImages: updatedList,
      );
      return;
    }

    // 기존 이미지 삭제
    updatedList[index] = oldImage.copyWith(
      imageFile: null,
      status: ProfileImageStatus.delete,
    );

    state = state.copyWith(
      editableProfileImages: updatedList,
    );

    Log.d("editableProfileImages: ${state.editableProfileImages}");
  }

  Future<bool> save() async {
    try {
      await ref
          .read(updatePhotosUsecaseProvider)
          .execute(state.editableProfileImages); // 서버에 이미지 업로드

      final box = await Hive.openBox(MyProfileImage.boxName); // Hive Box 가져오기

      await box.delete('images'); // Hive Box에서 'images' 키로 저장된 데이터 삭제

      ref.invalidate(myProfileImageBoxProvider); // FutureProvider 강제 리프레시

      return true;
    } catch (e) {
      Log.e("❌ 프로필 이미지 저장 중 오류 발생: $e");
      return false;
    }
  }
}
