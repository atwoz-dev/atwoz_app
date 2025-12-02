import 'package:deepple_app/features/introduce/data/dto/introduce_list_response.dart';
import 'package:deepple_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IntroduceFetchMyIntroduceListUseCase {
  final Ref ref;

  const IntroduceFetchMyIntroduceListUseCase(this.ref);

  Future<List<IntroduceItem>> call({int? lastId}) async {
    final response = await ref
        .read(introduceRepositoryProvider)
        .getMyIntroduceList(lastId: lastId);

    return response;
  }
}
