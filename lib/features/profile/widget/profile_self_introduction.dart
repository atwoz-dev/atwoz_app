import 'package:atwoz_app/core/extension/context_extension.dart';
import 'package:atwoz_app/core/theme/app_fonts.dart';
import 'package:atwoz_app/features/profile/domain/profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class ProfileSelfIntroduction extends ConsumerWidget {
  const ProfileSelfIntroduction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selfIntroductionItems = ref
        .watch(profileNotifierProvider)
        .userInforamtion
        .selfIntroductionItems;

    return ColoredBox(
      color: context.appColors.outline,
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            about,
            style: AppStyles.body03Regular(
              context.appColors.tertiary,
            ),
          ),
          const Gap(8.0),
          Text(
            introduction,
            style: AppStyles.body01Medium(),
          ),
        ],
      ),
    );
  }
}
