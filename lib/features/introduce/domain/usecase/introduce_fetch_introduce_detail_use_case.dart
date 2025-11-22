import 'package:atwoz_app/features/introduce/data/mapper/introduce_mapper.dart';
import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:atwoz_app/features/introduce/domain/model/introduce_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IntroduceFetchIntroduceDetailUseCase {
  final Ref ref;

  const IntroduceFetchIntroduceDetailUseCase(this.ref);

  Future<IntroduceDetail> call({required int id}) async {
    final response = await ref
        .read(introduceRepositoryProvider)
        .getIntroduceDetail(id: id);

    return response.toDomain();
  }
}
