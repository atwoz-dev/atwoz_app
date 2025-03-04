import 'package:atwoz_app/features/home/data/repository/introduced_profile_repository_impl.dart';
import 'package:atwoz_app/features/home/presentation/provider/home_action.dart';
import 'package:atwoz_app/features/home/presentation/provider/home_state.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart'; // 코드 생성을 위한 부분

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  HomeState build() {
    _fetchIntroducedProfiles();
    return HomeState();
  }

  Future<void> _fetchIntroducedProfiles() async {
    final introducedProfileRepository =
        ref.read(introducedProfileRepositoryProvider);
    final profiles = await introducedProfileRepository.getProfiles();
    state = state.copyWith(introducedProfiles: profiles);
  }

  void onAction(HomeAction action, BuildContext context) {
    switch (action) {
      case OnTapNotification():
        context.push("/notification");
      case OnTapFilter():
        context.push("/ideal");
      case OnTapProfileCard():
        // TODO: Handle this case.
        throw UnimplementedError();
      case OnTapHeartBtn():
        // TODO: Handle this case.
        throw UnimplementedError();
      case onTapLoveTest():
        // TODO: Handle this case.
        throw UnimplementedError();
      case OnTapCategory():
        context.push("/home/userByCategory/${action.category}");
    }
  }
}
