import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/constants/fonts.dart';

class SubjectItem extends StatelessWidget {
  final String name;
  final String count;

  const SubjectItem({
    super.key,
    required this.name,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Fonts.body03Regular(Palette.colorBlack),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '\u2013' * 40,
                  overflow: TextOverflow.clip,
                  softWrap: false,
                  style: Fonts.body03Regular(Palette.colorGrey200),
                ),
              ),
            ),
            SizedBox(width: 8),
            Text(
              count,
              style: Fonts.body03Regular(Palette.colorBlack),
            ),
          ],
        ));
  }
}
