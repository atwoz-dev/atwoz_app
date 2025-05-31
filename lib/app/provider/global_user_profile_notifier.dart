import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_user_profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class GlobalUserProfileNotifier extends _$GlobalUserProfileNotifier {
  @override
  GlobalUserProfile build() => GlobalUserProfile.init();

  set profile(GlobalUserProfile profile) {
    state = profile;
  }
}
