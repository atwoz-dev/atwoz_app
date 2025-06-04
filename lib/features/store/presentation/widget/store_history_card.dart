import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:flutter/material.dart';

class StoreHistoryCard extends StatelessWidget {
  const StoreHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                '날짜',
                style: Fonts.body02Regular(Palette.subText),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                '텍스트',
                style: Fonts.body01Medium(Palette.colorBlack),
              ),
            ),
            Expanded(
                flex: 2,
                child: Text(
                  '하트 증감',
                  textAlign: TextAlign.end,
                )),
          ],
        ),
      ),
    );
  }
}
