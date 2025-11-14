import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_edit_state.freezed.dart';

@freezed
abstract class IntroduceEditState with _$IntroduceEditState {
  const factory IntroduceEditState({
    @Default(false) bool canSubmit,
    @Default("") String title,
    @Default("") String content,
  }) = _IntroduceEditState;

  const IntroduceEditState._();
}
