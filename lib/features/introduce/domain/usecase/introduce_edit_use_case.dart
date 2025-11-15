import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IntroduceEditUseCase {
  final Ref ref;

  const IntroduceEditUseCase(this.ref);

  Future<void> call({
    required int id,
    required String title,
    required String content,
  }) async {
    await ref
        .read(introduceRepositoryProvider)
        .patchIntroduce(id: id, title: title, content: content);
  }
}
