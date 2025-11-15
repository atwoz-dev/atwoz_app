import 'package:atwoz_app/features/introduce/domain/provider/introduce_detail_state.dart';
import 'package:atwoz_app/features/introduce/domain/usecase/fetch_introduce_detail_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'introduce_detail_notifier.g.dart';

@riverpod
class IntroduceDetailNotifier extends _$IntroduceDetailNotifier {
  @override
  Future<IntroduceDetailState> build({required int introduceId}) async {
    final introduce = await ref
        .read(fetchIntroduceDetailUseCaseProvider)
        .execute(introduceId: introduceId);

    return IntroduceDetailState(introduceDetail: introduce, isLoaded: true);
  }
}
