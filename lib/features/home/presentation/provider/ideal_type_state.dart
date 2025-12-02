import 'package:deepple_app/features/home/home.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ideal_type_state.freezed.dart';

@freezed
abstract class IdealTypeState with _$IdealTypeState {
  const factory IdealTypeState({
    required IdealType idealType,
    required IdealType originalIdealType,
    required bool isFilterPossible,
  }) = _IdealTypeState;
}
