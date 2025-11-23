import 'package:atwoz_app/features/introduce/data/mapper/introduce_mapper.dart';
import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:atwoz_app/features/introduce/domain/model/introduce_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchIntroduceDetailUseCaseProvider =
    Provider<FetchIntroduceDetailUseCase>(
      (ref) => FetchIntroduceDetailUseCase(ref),
    );

class FetchIntroduceDetailUseCase {
  final Ref ref;

  FetchIntroduceDetailUseCase(this.ref);

  Future<IntroduceDetail?> execute({required int introduceId}) async {
    final introduce = await ref
        .read(introduceRepositoryProvider)
        .getIntroduceDetail(id: introduceId);

    return introduce.toDomain();
  }
}
