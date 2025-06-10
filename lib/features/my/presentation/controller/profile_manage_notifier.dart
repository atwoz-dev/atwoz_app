import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/my/data/mapper/my_profile_mapper.dart';
import 'package:atwoz_app/features/my/domain/use_case/update_my_profile_use_case.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:atwoz_app/app/provider/global_user_profile_notifier.dart';

part 'profile_manage_notifier.g.dart';

@riverpod
class ProfileManageNotifier extends _$ProfileManageNotifier {
  @override
  ProfileManageState build() {
    final profile = ref.watch(globalUserProfileNotifierProvider);
    return ProfileManageState(profile: profile.toMyProfile());
  }

  void updateProfile(MyProfile profile, bool? isChanged) {
    state =
        state.copyWith(updatedProfile: profile, isChanged: isChanged ?? false);
  }

  Future<bool> saveProfile() async {
    final profileNotifier =
        ref.read(globalUserProfileNotifierProvider.notifier);
    if (state.updatedProfile == null) return false;

    try {
      // 서버에 프로필 업데이트 요청
      final success = await ref
          .read(updateMyProfileUseCaseProvider)
          .updateProfile(state.updatedProfile!);

      if (!success) {
        return false;
      }

      // Hive에 프로필 저장
      final profile = await profileNotifier.fetchProfileToHiveFromServer();

      // Hive에 저장된 프로필을 전역 상태에 업데이트
      profileNotifier.profile = profile;

      // 상태 초기화
      state = state.copyWith(updatedProfile: null, isChanged: false);
      return true;
    } catch (e, stackTrace) {
      Log.e('프로필 저장 중 오류 발생: $e\n$stackTrace');
      return false;
    }
  }
}
