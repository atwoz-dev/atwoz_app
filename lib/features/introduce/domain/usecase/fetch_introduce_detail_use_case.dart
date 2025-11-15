import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/introduce/data/dto/introduce_detail_response.dart';
import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchIntroduceDetailUseCaseProvider =
    Provider<FetchIntroduceDetailUseCase>(
      (ref) => FetchIntroduceDetailUseCase(ref),
    );

class FetchIntroduceDetailUseCase {
  final Ref ref;

  FetchIntroduceDetailUseCase(this.ref);

  Future<IntroduceDetailData?> execute({required int introduceId}) async {
    try {
      final introduce = await ref
          .read(introduceRepositoryProvider)
          .getIntroduceDetail(id: introduceId);
      return introduce;
    } catch (e) {
      Log.e("셀프 소개 상세 호출 실패 : $e");
      return null;
    }
  }
}
