import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/features/home/presentation/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IdealAgeSettingArea extends ConsumerStatefulWidget {
  const IdealAgeSettingArea({
    super.key,
  });

  @override
  ConsumerState<IdealAgeSettingArea> createState() =>
      _IdealAgeSettingAreaState();
}

class _IdealAgeSettingAreaState extends ConsumerState<IdealAgeSettingArea> {
  late int _minAge;
  late int _maxAge;

  @override
  Widget build(BuildContext context) {
    final idealType = ref.watch(idealTypeNotifierProvider).idealType;
    final idealTypeNotifier = ref.read(idealTypeNotifierProvider.notifier);
    _minAge = idealType.minAge;
    _maxAge = idealType.maxAge;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "나이",
                style:
                    Fonts.body02Regular().copyWith(fontWeight: FontWeight.w500),
              ),
              Text(
                "${_minAge.toString()}세~${_maxAge.toString()}세",
                style: Fonts.body02Regular().copyWith(
                    fontWeight: FontWeight.w500, color: Color(0xff3B3B3B)),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: RangeSlider(
                values: RangeValues(_minAge.toDouble(), _maxAge.toDouble()),
                min: 20,
                max: 46,
                onChanged: (RangeValues values) {
                  idealTypeNotifier.updateAgeRange(
                      values.start.toInt(), values.end.toInt());
                },
                activeColor: Palette.colorPrimary500,
                inactiveColor: Color(0xffEEEEEE),
              ),
            ),
          ],
        )
      ],
    );
  }
}
