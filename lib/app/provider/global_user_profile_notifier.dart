import 'dart:developer';

import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:atwoz_app/core/notification/firebase_manager.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/features/home/domain/use_case/get_profile_from_hive_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_profile_to_hive_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_user_profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalUserProfileNotifier extends _$GlobalUserProfileNotifier {
  @override
  GlobalUserProfile build() {
    return GlobalUserProfile.init();
  }

  set profile(GlobalUserProfile profile) {
    state = profile;
  }

  Future<GlobalUserProfile> getProfileFromHive() async {
    state = await ref.read(getProfileFromHiveUseCaseProvider).execute();
    return state;
  }

  Future<GlobalUserProfile> fetchProfileToHiveFromServer() async {
    try {
      await ref.read(saveProfileToHiveUseCaseProvider).execute();
      return await getProfileFromHive();
    } catch (e) {
      Log.e('get cached profile information using accessToken failed');
      return state;
    }
  }

  Future<void> initialize() async {
    log('global user profile notifier initialize executed');
    await FirebaseManager().initialize();

    final accessToken = await ref.read(authUsecaseProvider).getAccessToken();
    log('accessToken $accessToken');
    if (accessToken?.isEmpty ?? true) {
      state = await getProfileFromHive();
      return;
    }

    state = await fetchProfileToHiveFromServer();
    log('state $state');
    ref.read(authUsecaseProvider).initializeFcmToken();
  }
}
