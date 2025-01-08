import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'profile_state.dart';

part 'profile_notifier.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  ProfileState build() {
    return ProfileState.initial();
  }
}
