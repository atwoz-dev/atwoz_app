import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/home/data/repository/introduced_profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchUserHeartBalanceUseCaseProvider = Provider(
  (ref) => FetchUserHeartBalanceUseCase(ref: ref),
);

class FetchUserHeartBalanceUseCase {
  final Ref _ref;

  FetchUserHeartBalanceUseCase({required Ref ref}) : _ref = ref;

  Future<int> execute() async {
    try {
      final heartBalance = await _ref
          .read(introducedProfileRepositoryProvider)
          .getHeartBalance();
      return heartBalance.totalHeartBalance;
    } catch (e, stackTrace) {
      Log.e('소개 프로필 블러 제거 실패: $e');
      return 0;
    }
  }
}
