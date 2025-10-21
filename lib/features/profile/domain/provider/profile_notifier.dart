import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/provider/global_notifier.dart';
import 'package:atwoz_app/app/widget/error/dialogue_error.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/favorite_list/data/repository/favorite_repository.dart';
import 'package:atwoz_app/features/profile/data/repository/profile_repository.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:atwoz_app/features/profile/domain/common/model.dart';
import 'package:atwoz_app/features/profile/domain/usecase/usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'profile_state.dart';

part 'profile_notifier.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  late final ProfileRepository _repository;
  late final String _myName;

  @override
  ProfileState build(int userId) {
    _repository = ref.read(profileRepositoryProvider);
    _myName = ref.read(globalNotifierProvider).profile.nickname;

    _initializeProfileState(userId);
    return ProfileState.initial();
  }

  Future<void> _initializeProfileState(int userId) async {
    try {
      final profile = await ProfileFetchUseCase(ref).call(userId);
      state = state.copyWith(
        profile: profile,
        myUserName: _myName,
        registeredContact: true,
        // TODO(Han): 추후 실제 보유 하트 수로 대체
        heartPoint: 30,
        message: '',
        isLoaded: true,
        error: null,
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(
        isLoaded: true,
        error: DialogueErrorType.network,
      );
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
    _updateFavoriteType(type);
  }

  Future<void> _updateFavoriteType(FavoriteType type) async {
    if (state.profile == null) return;

    try {
      await ref.read(favoriteRepositoryProvider).requestFavorite(
            state.profile!.id,
            type: type,
          );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(error: DialogueErrorType.network);
    }
  }

  Future<void> requestMatch() async {
    if (state.profile == null) return;

    try {
      await ProfileMatchRequestUseCase(ref).call(
        userId: state.profile!.id,
        message: state.message,
      );

      state = state.copyWith(
        profile: state.profile?.copyWith(
          matchStatus: MatchingRequested(
            matchId: state.profile!.matchStatus.matchId,
            sentMessage: state.message,
          ),
        ),
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(error: DialogueErrorType.network);
    }
  }

  Future<void> rejectMatch() async {
    if (state.profile == null) return;

    try {
      await ProfileMatchRejectUseCase(ref).call(
        state.profile!.matchStatus.matchId,
      );

      state = state.copyWith(
        profile: state.profile?.copyWith(
          matchStatus: const UnMatched(),
        ),
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(error: DialogueErrorType.network);
    }
  }

  Future<void> resetMatchStatus() async {
    try {
      await ProfileMatchResetUseCase(ref).call(
        state.profile!.matchStatus.matchId,
      );

      state = state.copyWith(
        profile: state.profile?.copyWith(
          matchStatus: const UnMatched(),
        ),
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(error: DialogueErrorType.network);
    }
  }

  Future<void> approveMatch() async {
    if (state.profile == null) return;

    try {
      await ProfileMatchApproveUseCase(ref).call(
        matchId: state.profile!.matchStatus.matchId,
        message: state.message,
      );

      _initializeProfileState(userId);
    } catch (e) {
      Log.e(e);
      state = state.copyWith(error: DialogueErrorType.network);
    }
  }

  Future<bool> approveProfileExchange() async {
    final profileExchangeId =
        state.profile?.profileExchangeInfo?.profileExchangeId;
    if (profileExchangeId == null) {
      return false;
    }
    final success = await _repository.approveProfileExchange(profileExchangeId);
    if (!success) {
      state = state.copyWith(error: DialogueErrorType.unknown);
      return false;
    }

    state = state.copyWith(
      profile: state.profile!.copyWith(
        profileExchangeInfo: state.profile?.profileExchangeInfo?.copyWith(
          profileExchangeStatus: ProfileExchangeStatus.approve,
        ),
      ),
    );

    return true;
  }

  Future<bool> rejectProfileExchange() async {
    final profileExchangeId =
        state.profile?.profileExchangeInfo?.profileExchangeId;
    if (profileExchangeId == null) {
      return false;
    }

    final success = await _repository.rejectProfileExchange(profileExchangeId);
    if (!success) {
      state = state.copyWith(error: DialogueErrorType.unknown);
      return false;
    }

    state = state.copyWith(
      profile: state.profile!.copyWith(
        profileExchangeInfo: state.profile?.profileExchangeInfo?.copyWith(
          profileExchangeStatus: ProfileExchangeStatus.rejected,
        ),
      ),
    );

    return true;
  }

  void resetError() {
    state = state.copyWith(error: null);
  }
}
