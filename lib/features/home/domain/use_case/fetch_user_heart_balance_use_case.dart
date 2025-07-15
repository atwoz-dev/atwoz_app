import 'package:atwoz_app/features/home/data/repository/introduced_profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchUserHeartBalanceUseCaseProvider = Provider(
  (ref) => FetchUserHeartBalanceUseCase(ref: ref),
);

class FetchUserHeartBalanceUseCase {
  final Ref _ref;

  FetchUserHeartBalanceUseCase({required Ref ref}) : _ref = ref;

  Future<int> execute() async {
    return await _ref
        .read(introducedProfileRepositoryProvider)
        .getHeartBalance()
        .then(
          (value) => value.totalHeartBalance,
        );
  }
}
