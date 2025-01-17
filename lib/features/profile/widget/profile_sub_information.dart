import 'package:atwoz_app/core/extension/context_extension.dart';
import 'package:atwoz_app/core/theme/app_dimens.dart';
import 'package:atwoz_app/core/theme/app_fonts.dart';
import 'package:atwoz_app/features/profile/domain/profile_notifier.dart';
import 'package:atwoz_app/features/profile/domain/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class ProfileSubInformation extends ConsumerWidget {
  const ProfileSubInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subInformationItems =
        ref.watch(profileNotifierProvider).userInformation.subInformationItems;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 16.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
          borderRadius: AppDimens.cardRadius,
          border: Border.all(
            width: 1.0,
            color: context.appColors.outline,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _Title(),
          _SubInformationContainer(subInformationItems),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Text('프로필 정보', style: AppStyles.body01Medium());
  }
}

class _SubInformationContainer extends StatelessWidget {
  const _SubInformationContainer(this.subInformationItems);

  final List<SubInformationData> subInformationItems;

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
      children: subInformationItems
          .map(
            (subInfo) => _SubInformationItem(
              iconData: subInfo.iconData,
              information: subInfo.information,
            ),
          )
          .toList(),
    );
  }
}

class _SubInformationItem extends StatelessWidget {
  const _SubInformationItem({
    required this.iconData,
    required this.information,
  });

  final IconData iconData;
  final String information;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 16.0,
          color: context.appColors.secondary,
        ),
        const Gap(10.0),
        Text(
          information,
          style: AppStyles.body02Medium(
            context.appColors.tertiary,
          ),
        ),
      ],
    );
  }
}
