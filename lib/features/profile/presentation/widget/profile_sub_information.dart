import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_notifier.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/constants/dimens.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class ProfileSubInformation extends ConsumerWidget {
  const ProfileSubInformation(this.userId, {super.key});

  final int userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileNotifierProvider(userId)).profile;
    if (profile == null) return Container();

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 16.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: Dimens.cardRadius,
        border: Border.all(
          width: 1.0,
          color: context.palette.outline,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _Title(),
          SubInformationContainer(
            items: [
              SubInfoItem(
                iconPath: IconPath.smoking,
                label: profile.smokingStatus.label,
              ),
              SubInfoItem(
                iconPath: IconPath.wineglass,
                label: profile.drinkingStatus.label,
              ),
              SubInfoItem(
                iconPath: IconPath.school,
                label: profile.educationLevel.label,
              ),
              SubInfoItem(
                iconPath: IconPath.bless,
                label: profile.religion.label,
              ),
              SubInfoItem(
                iconPath: IconPath.ruler,
                label: '${profile.height}cm',
              ),
              SubInfoItem(
                iconPath: IconPath.business,
                label: profile.job.label,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Text('프로필 정보', style: Fonts.body01Medium());
  }
}

class SubInfoItem {
  const SubInfoItem({
    required this.iconPath,
    required this.label,
  });

  final String iconPath;
  final String label;
}

class SubInformationContainer extends StatelessWidget {
  const SubInformationContainer({
    super.key,
    required this.items,
  });

  final List<SubInfoItem> items;

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 4.0,
        mainAxisExtent: 25.0,
      ),
      padding: const EdgeInsets.only(top: 16.0),
      physics: const NeverScrollableScrollPhysics(),
      children: items.map((item) => _SubInformationItem(item: item)).toList(),
    );
  }
}

class _SubInformationItem extends StatelessWidget {
  const _SubInformationItem({required this.item});

  final SubInfoItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DefaultIcon(
          item.iconPath,
          size: 16.0,
          colorFilter: DefaultIcon.fillColor(
            context.palette.secondary,
          ),
        ),
        const Gap(10.0),
        Text(
          item.label,
          style: Fonts.body02Medium(
            context.palette.tertiary,
          ),
        ),
      ],
    );
  }
}
