import 'package:atwoz_app/features/introduce/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_state.freezed.dart';

enum IntroduceListErrorType { network }

@freezed
abstract class IntroduceState with _$IntroduceState {
  const factory IntroduceState({
    @Default([]) List<IntroduceItem> introduceList,
    @Default([]) List<IntroduceItem> introduceMyList,
    @Default(null) int? introduceLastId,
    @Default(null) int? myIntroduceLastId,
    @Default(false) bool isLoaded,
    IntroduceListErrorType? error,
  }) = _IntroduceState;

  const IntroduceState._();

  factory IntroduceState.initial() => const IntroduceState();
}
