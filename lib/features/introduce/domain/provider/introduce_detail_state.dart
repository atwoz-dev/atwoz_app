import 'package:atwoz_app/features/introduce/data/dto/introduce_detail_response.dart';
import 'package:atwoz_app/features/profile/domain/common/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_detail_state.freezed.dart';

@freezed
abstract class IntroduceDetailState with _$IntroduceDetailState {
  const factory IntroduceDetailState({
    @Default(-1) int introduceId,
    @Default(null) IntroduceDetailData? introduceDetail,
    @Default(null) UserProfile? profile,
    @Default(false) bool isLoaded,
  }) = _IntroduceDetailState;

  const IntroduceDetailState._();

  factory IntroduceDetailState.initial() => const IntroduceDetailState();
}
