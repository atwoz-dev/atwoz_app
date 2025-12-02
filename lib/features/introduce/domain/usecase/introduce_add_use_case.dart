import 'package:deepple_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IntroduceAddUseCase {
  final Ref ref;

  const IntroduceAddUseCase(this.ref);

  Future<void> call({required String title, required String content}) async {
    await ref
        .read(introduceRepositoryProvider)
        .addIntroduce(title: title, content: content);
  }
}
