import 'package:atwoz_app/core/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:gap/gap.dart';

class DefaultHeartCard extends StatelessWidget {
  const DefaultHeartCard({
    super.key,
    required this.heart,
    required this.price,
    required this.code,
    required this.onCreate,
  });

  final String heart;
  final String price;
  final String code;
  final void Function(String code) onCreate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Palette.colorGrey50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          DefaultIcon(IconPath.storeHeart, size: 16),
          Gap(1),
          Text(heart, style: Fonts.numeric01Bold()),
          Gap(2),
          Text('₩${price.formatThousands}', style: Fonts.numeric01Medium()),
          Gap(2),
          Gap(24),
          DefaultElevatedButton(
            onPressed: () => onCreate(code),
            height: 34.0,
            padding: const EdgeInsets.only(top: 3.0),
            child: Text(
              '구매하기',
              style: Fonts.body03Regular().copyWith(color: Palette.colorWhite),
            ),
          ),
        ],
      ),
    );
  }
}
