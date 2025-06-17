import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/my/data/mapper/my_profile_mapper.dart';
import 'package:atwoz_app/features/my/domain/use_case/fetch_profile_images_use_case.dart';
import 'package:atwoz_app/features/my/domain/use_case/update_my_profile_use_case.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:atwoz_app/app/provider/global_user_profile_notifier.dart';

part 'profile_manage_notifier.g.dart';

@riverpod
class ProfileManageNotifier extends _$ProfileManageNotifier {
  @override
  Future<ProfileManageState> build() async {
    final profile = ref.watch(globalUserProfileNotifierProvider);
    final profileImages = await _fetchProfileImages();
    final myProfile =
        profile.toMyProfile().copyWith(profileImages: profileImages);

    return ProfileManageState(
      profile: myProfile,
    );
  }

  void updateProfile(MyProfile profile, bool? isChanged) {
    if (!state.hasValue) return;

    state = AsyncValue.data(
      state.requireValue.copyWith(
        updatedProfile: profile,
        isChanged: isChanged ?? false,
      ),
    );
  }

  Future<bool> saveProfile() async {
    final profileNotifier =
        ref.read(globalUserProfileNotifierProvider.notifier);

    if (!state.hasValue) return false;

    if (state.requireValue.updatedProfile == null) return false;

    try {
      // 서버에 프로필 업데이트 요청
      final success = await ref
          .read(updateMyProfileUseCaseProvider)
          .updateProfile(state.requireValue.updatedProfile!);

      if (!success) {
        return false;
      }

      // Hive에 프로필 저장
      final profile = await profileNotifier.fetchProfileToHiveFromServer();

      // Hive에 저장된 프로필을 전역 상태에 업데이트
      profileNotifier.profile = profile;

      // 상태 초기화
      state = AsyncData(
        state.requireValue.copyWith(
          updatedProfile: null,
          isChanged: false,
        ),
      );
      return true;
    } catch (e, stackTrace) {
      Log.e('프로필 저장 중 오류 발생: $e\n$stackTrace');
      return false;
    }
  }

  Future<List<MyProfileImage?>> _fetchProfileImages() async {
    return ref.watch(fetchProfileImagesUseCaseProvider).fetchProfileImages();
  }
}
