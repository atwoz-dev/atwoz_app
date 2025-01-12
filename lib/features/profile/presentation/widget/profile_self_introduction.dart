import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileSelfIntroduction extends StatelessWidget {
  const ProfileSelfIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.palette.outline,
      child: GridView(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          mainAxisExtent: 99 + 16.0,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 16.0,
        ),
        physics: NeverScrollableScrollPhysics(),
        children: _selfIntroduction
            .map((introduction) => _SelfIntroductionItem(
                  about: introduction.about,
                  introduction: introduction.introduction,
                ))
            .toList(),
      ),
    );
  }
}

class _SelfIntroductionItem extends StatelessWidget {
  const _SelfIntroductionItem({
    required this.about,
    required this.introduction,
  });

  final String about;
  final String introduction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            about,
            style: Fonts.body03Regular(
              context.palette.tertiary,
            ),
          ),
          const Gap(8.0),
          Text(
            introduction,
            style: Fonts.body01Medium(),
          ),
        ],
      ),
    );
  }
}

// TODO(Han): remove below code after checking how to get this information
const _selfIntroduction = [
  _SelfIntroductionItem(about: '나', introduction: '내가 생각하는 나의 반전 매력은 이거야.'),
  _SelfIntroductionItem(about: '관계', introduction: '내가 생각하는 나의 반전 매력은 이거야.'),
  _SelfIntroductionItem(about: '연인', introduction: '내가 생각하는 나의 반전 매력은 이거야.'),
  _SelfIntroductionItem(about: '연인', introduction: '내가 생각하는 나의 반전 매력은 이거야.'),
  _SelfIntroductionItem(about: '연인', introduction: '내가 생각하는 나의 반전 매력은 이거야.'),
  _SelfIntroductionItem(about: '연인', introduction: '내가 생각하는 나의 반전 매력은 이거야.'),
];

class _SelfIntroductionData {
  _SelfIntroductionData(this.about, this.introduction);

  final String about;
  final String introduction;
}
