import 'package:atwoz_app/features/introduce/domain/model/introduce_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_state.freezed.dart';

enum IntroduceListErrorType { network }

@freezed
abstract class IntroduceState with _$IntroduceState {
  const factory IntroduceState({
    @Default([]) List<IntroduceInfo> introduceList,
    @Default([]) List<IntroduceInfo> introduceMyList,
    @Default(null) int? introduceLastId,
    @Default(null) int? myIntroduceLastId,
    @Default(false) bool isLoaded,
    IntroduceListErrorType? error,
  }) = _IntroduceState;

  const IntroduceState._();

  factory IntroduceState.initial() => const IntroduceState();
}
