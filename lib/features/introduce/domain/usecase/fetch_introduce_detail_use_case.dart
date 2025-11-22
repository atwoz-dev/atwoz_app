import 'package:atwoz_app/core/util/log.dart';
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
    try {
      final introduce = await ref
          .read(introduceRepositoryProvider)
          .getIntroduceDetail(id: introduceId);
      return introduce.toDomain();
    } catch (e) {
      Log.e("셀프 소개 상세 호출 실패 : $e");
      return null;
    }
  }
}
