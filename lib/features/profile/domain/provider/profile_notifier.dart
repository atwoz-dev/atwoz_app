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
    assert(
      matchedStatus is UnMatched,
      'message cound\'t be edited after trying match',
    );
    state = state.copyWith(matchStatus: UnMatched(sentMessage: message));
  }
}
