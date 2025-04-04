import 'package:atwoz_app/features/introduce/domain/provider/filter_state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_notifier.g.dart';

@riverpod
class FilterNotifier extends _$FilterNotifier {
  @override
  FilterState build() {
    // TODO: 서버로부터 받은 선호나이를 반영해야함
    return const FilterState(
      rangeValues: RangeValues(27, 32),
      selectedCitys: [],
      selectedGenders: ["전체 보기", "이성만 보기"],
    );
  }

  void updateRange(RangeValues values) {
    state = state.copyWith(rangeValues: values);
  }

  void updateHobbies(List<String> citys) {
    state = state.copyWith(selectedCitys: citys);
  }

  void updateGenders(List<String> genders) {
    state = state.copyWith(selectedGenders: genders);
  }
}
