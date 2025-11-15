import 'package:atwoz_app/features/introduce/data/dto/introduce_detail_response.dart';
import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IntroduceFetchIntroduceDetailUseCase {
  final Ref ref;

  const IntroduceFetchIntroduceDetailUseCase(this.ref);

  Future<IntroduceDetailData> call({required int id}) async {
    final response = await ref
        .read(introduceRepositoryProvider)
        .getIntroduceDetail(id: id);

    return response;
  }
}
