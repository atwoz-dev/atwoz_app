import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_state.freezed.dart';

@freezed
abstract class FilterState with _$FilterState {
  const FilterState._();

  const factory FilterState({
    required RangeValues rangeValues,
    required List<String> selectedCitys,
    required List<String> selectedGenders,
  }) = _FilterState;

  // 초기 상태
  factory FilterState.initial() => const FilterState(
        rangeValues: RangeValues(27, 32),
        selectedCitys: [],
        selectedGenders: ["전체 보기", "이성만 보기"],
      );
}
