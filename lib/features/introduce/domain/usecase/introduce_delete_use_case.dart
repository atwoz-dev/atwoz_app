import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IntroduceDeleteUseCase {
  final Ref ref;

  const IntroduceDeleteUseCase(this.ref);

  Future<void> call({
    required int id,
  }) async {
    await ref.read(introduceRepositoryProvider).deleteIntroduce(id: id);
  }
}
