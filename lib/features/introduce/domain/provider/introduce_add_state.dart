import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_add_state.freezed.dart';

@freezed
abstract class IntroduceAddState with _$IntroduceAddState {
  const factory IntroduceAddState({
    @Default(false) bool canSubmit,
    @Default(null) String? title,
    @Default(null) String? content,
  }) = _IntroduceAddState;

  const IntroduceAddState._();
}
