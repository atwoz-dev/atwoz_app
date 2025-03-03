import 'package:atwoz_app/features/profile/domain/common/model.dart';
import 'package:atwoz_app/features/profile/domain/usecase/profile_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'profile_state.dart';

part 'profile_notifier.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  ProfileState build() {
    _initialize();
    return ProfileState.initial();
  }

  Future<void> _initialize() async {
    final profile = await ProfileFetchUseCase.call();
    if (profile == null) {
      // TODO(Han): error handling
      return;
    }

    state = state.copyWith(
      profile: profile,
      myUserName: '은우',
      registeredContact: false,
      heartPoint: 30,
      message: '',
      isLoaded: true,
    );
  }

  set message(String message) {
    if (!state.enabledMessageInput) {
      assert(false, 'message couldn\'t be edited after trying match');

      return;
    }
    state = state.copyWith(message: message);
  }

  set favoriteType(FavoriteType type) {
    state = state.copyWith(
      profile: state.profile?.copyWith(favoriteType: type),
    );
  }
}
