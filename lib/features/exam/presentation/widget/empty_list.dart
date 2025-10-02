import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import '../../../../app/constants/icon_path.dart';
import '../../../../app/widget/icon/default_icon.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const DefaultIcon(
          IconPath.sadEmotion,
          size: 48.0,
        ),
        const Gap(8.0),
        Text(
          '이번에는 소울메이트를 찾지 못했지만\n참여자가 늘어나서 같은 답안을\n선택한 이성이 나온다면 알려드릴께요',
          textAlign: TextAlign.center,
          style: Fonts.body03Regular().copyWith(
            fontWeight: FontWeight.w500,
            color: Palette.colorBlack,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
