import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_notifier.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class ProfileSelfIntroduction extends ConsumerWidget {
  const ProfileSelfIntroduction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selfIntroductionItems =
        ref.watch(profileNotifierProvider).profile.selfIntroductionItems;

    return ColoredBox(
      color: context.palette.outline,
      child: GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          mainAxisExtent: 99 + 16.0,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 16.0,
        ),
        physics: const NeverScrollableScrollPhysics(),
        children: selfIntroductionItems
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
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: Dimens.cardRadius,
      ),
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
