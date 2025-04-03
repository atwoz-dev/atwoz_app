import 'package:atwoz_app/features/introduce/domain/provider/filter_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
class FilterNotifier extends StateNotifier<FilterState> {
  // TODO: 서버로부터 받은 선호나이를 반영해야함
  FilterNotifier()
      : super(const FilterState(
            rangeValues: RangeValues(27, 32), selectedCitys: []));

  void updateRange(RangeValues values) {
    state = state.copyWith(rangeValues: values);
  }

  void updateHobbies(List<String> citys) {
    state = state.copyWith(selectedCitys: citys);
  }
}

final filterProvider =
    StateNotifierProvider<FilterNotifier, FilterState>((ref) {
  return FilterNotifier();
});
