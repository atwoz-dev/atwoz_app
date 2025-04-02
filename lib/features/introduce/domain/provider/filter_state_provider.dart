import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class AgeRangeNotifier extends StateNotifier<RangeValues> {
  AgeRangeNotifier() : super(RangeValues(27, 32));

  void updateRange(RangeValues values) {
    state = values;
  }
}

final ageRangeProvider =
    StateNotifierProvider<AgeRangeNotifier, RangeValues>((ref) {
  return AgeRangeNotifier();
});
