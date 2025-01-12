import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/constants/dimens.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileSubInformation extends StatelessWidget {
  const ProfileSubInformation({super.key});

  @override
  Widget build(BuildContext context) {
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
          _Title(),
          _SubInformationContainer(),
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
  const _SubInformationContainer();

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 4.0,
        mainAxisExtent: 25.0,
      ),
      padding: EdgeInsets.only(top: 16.0),
      physics: NeverScrollableScrollPhysics(),
      children: [
        _SubInformationItem(
          iconData: Icons.question_mark_rounded,
          information: '고등학교 졸업',
        ),
        _SubInformationItem(
          iconData: Icons.question_mark_rounded,
          information: '사회적 음주',
        ),
        _SubInformationItem(
          iconData: Icons.question_mark_rounded,
          information: '취업 준비중',
        ),
        _SubInformationItem(
          iconData: Icons.question_mark_rounded,
          information: '전자담배',
        ),
        _SubInformationItem(
          iconData: Icons.question_mark_rounded,
          information: '170cm',
        ),
        _SubInformationItem(
          iconData: Icons.question_mark_rounded,
          information: '기독교',
        ),
      ],
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
