import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';

class HashtagWidget extends StatelessWidget {
  final String tagName;
  const HashtagWidget({
    super.key,
    required this.tagName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: Palette.colorPrimary100,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Text(
        tagName,
        style: Fonts.body03Regular().copyWith(
          fontWeight: FontWeight.w500,
          color: Palette.colorPrimary600,
        ),
      ),
    );
  }
}
