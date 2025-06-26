import 'package:atwoz_app/features/home/data/repository/home_profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchUserHeartbalanceUseCaseProvider = Provider(
  (ref) => FetchUserHeartbalanceUseCase(ref: ref),
);

class FetchUserHeartbalanceUseCase {
  final Ref _ref;

  FetchUserHeartbalanceUseCase({required Ref ref}) : _ref = ref;

  Future<int> execute() async {
    return await _ref
        .read(homeProfileRepositoryProvider)
        .getHeartBalance()
        .then((value) => value.totalHeartBalance);
  }
}
