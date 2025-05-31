import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class IdealAgeSettingArea extends ConsumerWidget {
  const IdealAgeSettingArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idealTypeAsync = ref.watch(idealTypeNotifierProvider);
    final idealTypeNotifier = ref.read(idealTypeNotifierProvider.notifier);

    return idealTypeAsync.when(
      data: (data) => _buildSlider(
        minAge: data.minAge,
        maxAge: data.maxAge,
        onChanged: (start, end) => idealTypeNotifier.updateAgeRange(start, end),
      ),
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => _buildSlider(
        minAge: 20,
        maxAge: 46,
        onChanged: null, // 로딩 중엔 슬라이더 비활성화
      ),
    );
  }

  Widget _buildSlider({
    required int minAge,
    required int maxAge,
    void Function(int start, int end)? onChanged,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "나이",
              style: Fonts.body02Regular().copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "$minAge세~$maxAge세",
              style: Fonts.body02Regular().copyWith(
                fontWeight: FontWeight.w500,
                color: const Color(0xff3B3B3B),
              ),
            )
          ],
        ),
        const Gap(20),
        Row(
          children: [
            Expanded(
              child: RangeSlider(
                values: RangeValues(minAge.toDouble(), maxAge.toDouble()),
                min: 20,
                max: 46,
                onChanged: onChanged != null
                    ? (values) =>
                        onChanged(values.start.toInt(), values.end.toInt())
                    : null,
                activeColor: Palette.colorPrimary500,
                inactiveColor: const Color(0xffEEEEEE),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
