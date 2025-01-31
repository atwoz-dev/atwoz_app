import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'profile_state.dart';

part 'profile_notifier.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  ProfileState build() {
    return ProfileState.initial();
  }

  set message(String message) {
    final matchedStatus = state.matchStatus;
    if (matchedStatus is! UnMatched && matchedStatus is! MatchingReceived) {
      assert(
        false,
        'message couldn\'t be edited after trying match',
      );

      return;
    }
    state = state.copyWith(message: message);
  }
}
