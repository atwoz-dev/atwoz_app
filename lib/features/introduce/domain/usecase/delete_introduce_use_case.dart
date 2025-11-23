import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deleteIntroduceUseCaseProvider = Provider<DeleteIntroduceUseCase>(
  (ref) => DeleteIntroduceUseCase(ref),
);

class DeleteIntroduceUseCase {
  final Ref ref;

  DeleteIntroduceUseCase(this.ref);

  Future<void> execute({required int id}) async {
    await ref.read(introduceRepositoryProvider).deleteIntroduce(id: id);
  }
}
