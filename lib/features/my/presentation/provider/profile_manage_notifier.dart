import 'package:atwoz_app/app/constants/region_data.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/auth/domain/usecase/get_current_location_use_case.dart';
import 'package:atwoz_app/features/my/data/mapper/my_profile_mapper.dart';
import 'package:atwoz_app/features/my/domain/usecase/fetch_profile_images_use_case.dart';
import 'package:atwoz_app/features/my/domain/usecase/update_my_profile_use_case.dart';
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
    return ProfileManageState(
      profile: profile.toMyProfile().copyWith(profileImages: profileImages),
    );
  }

  void updateLocation(String location) {
    if (!state.hasValue) return;

    final isValidLocation = location != state.value!.profile.region &&
        addressData.getDistrictValue(location) != null;

    final updatedProfile = state.requireValue.profile.copyWith(
      region: location,
    );

    updateProfile(profile: updatedProfile, isChanged: isValidLocation);
  }

  Future<String> setCurrentLocation() async {
    final location =
        await ref.read(getCurrentLocationUseCaseProvider).execute();

    Log.d('현재 위치: $location');

    if (!state.hasValue) return "";

    final isValidLocation = location != state.value!.profile.region &&
        addressData.getDistrictValue(location) != null;

    final updatedProfile = state.requireValue.profile.copyWith(
      region: location,
    );

    updateProfile(profile: updatedProfile, isChanged: isValidLocation);

    return location;
  }

  void updateProfile({required MyProfile profile, required bool? isChanged}) {
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

    if (state.value?.updatedProfile == null) return false;

    try {
      // 서버에 프로필 업데이트 요청
      final success = await ref
          .read(updateMyProfileUseCaseProvider)
          .updateProfile(state.value!.updatedProfile!);

      if (!success) {
        return false;
      }

      // Hive에 프로필 저장
      final profile = await profileNotifier.fetchProfileToHiveFromServer();

      // Hive에 저장된 프로필을 전역 상태에 업데이트
      profileNotifier.profile = profile;

      // 상태 초기화
      state = AsyncData(
        state.value!.copyWith(
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
