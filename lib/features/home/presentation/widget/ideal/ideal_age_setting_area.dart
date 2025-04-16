import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class IdealAgeSettingArea extends ConsumerWidget {
  const IdealAgeSettingArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idealTypeAsync = ref.watch(idealTypeNotifierProvider);
    final idealTypeNotifier = ref.read(idealTypeNotifierProvider.notifier);

    return idealTypeAsync.when(
      data: (data) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "나이",
                  style: Fonts.body02Regular().copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "${data.minAge.toString()}세~${data.maxAge.toString()}세",
                  style: Fonts.body02Regular().copyWith(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3B3B3B),
                  ),
                )
              ],
            ),
          ),
          Gap(20),
          Row(
            children: [
              Expanded(
                child: RangeSlider(
                  values: RangeValues(
                    data.minAge.toDouble(),
                    data.maxAge.toDouble(),
                  ),
                  min: 20,
                  max: 46,
                  onChanged: (RangeValues values) {
                    idealTypeNotifier.updateAgeRange(
                      values.start.toInt(),
                      values.end.toInt(),
                    );
                  },
                  activeColor: Palette.colorPrimary500,
                  inactiveColor: Color(0xffEEEEEE),
                ),
              ),
            ],
          )
        ],
      ),
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }
}
