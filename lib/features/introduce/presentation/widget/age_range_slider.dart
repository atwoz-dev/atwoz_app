import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/introduce/domain/provider/filter_notifier.dart';

class AgeRangeSlider extends ConsumerWidget {
  const AgeRangeSlider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final range = ref.watch(filterNotifierProvider).rangeValues;

    return RangeSlider(
      values: range,
      min: 20,
      max: 46,
      onChanged: (RangeValues values) {
        ref.read(filterNotifierProvider.notifier).updateRange(values);
      },
      activeColor: Palette.colorPrimary500,
      inactiveColor: Palette.colorGrey100,
    );
  }
}
