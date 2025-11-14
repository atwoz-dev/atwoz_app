import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/introduce/data/dto/introduce_list_response.dart';
import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchIntroduceListUseCaseProvider = Provider<FetchIntroduceListUseCase>(
  (ref) => FetchIntroduceListUseCase(ref),
);

class FetchIntroduceListUseCase {
  final Ref ref;

  FetchIntroduceListUseCase(this.ref);

  Future<List<IntroduceItem>> execute({
    List<String>? preferredCities,
    int? fromAge,
    int? toAge,
    String? gender,
    int? lastId,
  }) async {
    try {
      final intrduces = await ref
          .read(introduceRepositoryProvider)
          .getIntroduceList(
            preferredCities: preferredCities,
            fromAge: fromAge,
            toAge: toAge,
            gender: gender,
            lastId: lastId,
          );

      return intrduces;
    } catch (e) {
      Log.e("셀프 소개 리스트 호출 실패 : $e");
      return [];
    }
  }
}
