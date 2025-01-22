import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:flutter/material.dart';

class IdealAgeSettingArea extends StatefulWidget {
  const IdealAgeSettingArea({
    super.key,
  });

  @override
  State<IdealAgeSettingArea> createState() => _IdealAgeSettingAreaState();
}

class _IdealAgeSettingAreaState extends State<IdealAgeSettingArea> {
  double _startAge = 25;
  double _endAge = 30;

  @override
  Widget build(BuildContext context) {
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
                "${_startAge.toString().split(".")[0]}세~${_endAge.toString().split(".")[0]}세",
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
                values: RangeValues(_startAge, _endAge),
                min: 20,
                max: 46,
                onChanged: (RangeValues values) {
                  setState(() {
                    _startAge = values.start;
                    _endAge = values.end;
                  });
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
