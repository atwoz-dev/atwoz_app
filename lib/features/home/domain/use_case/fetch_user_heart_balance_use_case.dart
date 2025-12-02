import 'package:deepple_app/core/util/util.dart';
import 'package:deepple_app/features/auth/data/data.dart';
import 'package:deepple_app/features/home/data/repository/introduced_profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchUserHeartBalanceUseCaseProvider = Provider(
  (ref) => FetchUserHeartBalanceUseCase(ref: ref),
);

class FetchUserHeartBalanceUseCase {
  final Ref _ref;

  FetchUserHeartBalanceUseCase({required Ref ref}) : _ref = ref;

  Future<HeartBalance> execute() async {
    try {
      final heartBalance = await _ref
          .read(introducedProfileRepositoryProvider)
          .getHeartBalance();
      return heartBalance;
    } catch (e, stactrace) {
      Log.e('[FetchUserHeartBalanceUseCase] heart fetch failure $e $stactrace');
      return HeartBalance.init();
    }
  }
}
