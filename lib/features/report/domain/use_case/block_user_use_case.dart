import 'package:deepple_app/core/util/util.dart';
import 'package:deepple_app/features/report/data/repository/report_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final blockUserUseCaseProvider = Provider<BlockUserUseCase>((ref) {
  return BlockUserUseCase(ref: ref);
});

class BlockUserUseCase {
  final Ref _ref;

  BlockUserUseCase({required Ref ref}) : _ref = ref;

  Future<bool> execute(int blockedId) async {
    try {
      final repository = _ref.read(reportRepositoryProvider);
      await repository.sendBlock(blockedId);
      return true;
    } catch (e) {
      Log.e('차단하기 실패: $e');
      return false;
    }
  }
}
