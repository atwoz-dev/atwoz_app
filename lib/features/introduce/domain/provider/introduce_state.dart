import 'package:atwoz_app/features/introduce/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "introduce_state.freezed.dart";

enum IntroduceListErrorType {
  network,
}

@freezed
abstract class IntroduceState with _$IntroduceState {
  const factory IntroduceState({
    @Default(IntroduceData()) IntroduceData introduceList,
    @Default(false) bool isLoaded,
    IntroduceListErrorType? error,
  }) = _IntroduceState;

  const IntroduceState._();

  factory IntroduceState.initial() => const IntroduceState();
}

@freezed
abstract class IntroduceData with _$IntroduceData {
  const factory IntroduceData({
    @Default([]) List<IntroduceItem> introduceList,
  }) = _IntroduceData;
}
