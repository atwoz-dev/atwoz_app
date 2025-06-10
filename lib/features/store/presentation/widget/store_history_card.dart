import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:flutter/material.dart';

class StoreHistoryCard extends StatelessWidget {
  final String date;
  final String content;
  final int heart;

  const StoreHistoryCard(
      {super.key,
      required this.date,
      required this.content,
      required this.heart});

  @override
  Widget build(BuildContext context) {
    String dateText() {
      final dateData = DateTime.parse(date).toLocal(); // 필요시 toLocal()
      final year = dateData.year % 100; // 2025 → 25
      final month = dateData.month.toString().padLeft(2, '0'); // 6 → 06
      final day = dateData.day.toString().padLeft(2, '0'); // 10 → 10
      return '$year.$month.$day';
    }

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
                '${dateText()}',
                style: Fonts.body02Regular(Palette.subText),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                '${content}',
                style: Fonts.body01Medium(Palette.colorBlack),
              ),
            ),
            Expanded(
                flex: 2,
                child: Text(
                  '${heart}',
                  textAlign: TextAlign.end,
                )),
          ],
        ),
      ),
    );
  }
}
