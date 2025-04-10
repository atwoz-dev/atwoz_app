import 'package:atwoz_app/features/home/domain/model/ideal_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ideal_type_state.freezed.dart';

@freezed
class IdealTypeState with _$IdealTypeState {
  const factory IdealTypeState({
    @Default(IdealType()) IdealType idealType,
    @Default(false) bool isLoading,
  }) = _IdealTypeState;
}
