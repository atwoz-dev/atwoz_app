import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:atwoz_app/features/profile/domain/usecase/profile_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'profile_state.dart';

part 'profile_notifier.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  ProfileState build(int userId) {
    _initialize(userId);
    return ProfileState.initial();
  }

  Future<void> _initialize(int userId) async {
    try {
      final profile = await ProfileFetchUseCase(ref).call(userId);

      state = state.copyWith(
        profile: profile,
        myUserName: '은우',
        registeredContact: false,
        heartPoint: 30,
        message: '',
        isLoaded: true,
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(isLoaded: true);
    }
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
