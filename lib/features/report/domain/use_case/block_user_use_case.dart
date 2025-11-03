import 'package:atwoz_app/features/report/data/repository/report_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final blockUserUseCaseProvider = Provider<BlockUserUseCase>((ref) {
  return BlockUserUseCase(ref: ref);
});

class BlockUserUseCase {
  final Ref _ref;

  BlockUserUseCase({required Ref ref}) : _ref = ref;

  Future<void> execute(int blockedId) async {
    final repository = _ref.read(reportRepositoryProvider);
    await repository.sendBlock(blockedId);
  }
}
