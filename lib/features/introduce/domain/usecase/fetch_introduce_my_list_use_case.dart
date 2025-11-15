import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/introduce/data/dto/introduce_list_response.dart';
import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchIntroduceMyListUseCaseProvider =
    Provider<FetchIntroduceMyListUseCase>(
      (ref) => FetchIntroduceMyListUseCase(ref),
    );

class FetchIntroduceMyListUseCase {
  final Ref ref;

  FetchIntroduceMyListUseCase(this.ref);

  Future<List<IntroduceItem>> execute({int? lastId}) async {
    try {
      final intrduces = await ref
          .read(introduceRepositoryProvider)
          .getMyIntroduceList(lastId: lastId);

      return intrduces;
    } catch (e) {
      Log.e("셀프 소개 리스트 호출 실패 : $e");
      return [];
    }
  }
}
