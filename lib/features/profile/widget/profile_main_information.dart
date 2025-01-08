import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/core/theme/app_fonts.dart';
import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileMainInformation extends StatelessWidget {
  const ProfileMainInformation({
    super.key,
    required this.name,
    required this.age,
    required this.mbti,
    required this.address,
    required this.hobbies,
  });

  final String name;
  final int age;
  final String mbti;
  final String address;
  final List<String> hobbies;

  @override
  Widget build(BuildContext context) {
    final mainColor = Colors.white;

    return Container(
      height: context.screenHeight * 0.3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            mainColor.withValues(alpha: 0),
            mainColor.withValues(alpha: 0.8),
            mainColor, // 완전 흰색
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ).copyWith(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('$name, $age', style: AppStyles.header02()),
          const Gap(6.0),
          Text('$mbti · $address', style: AppStyles.body02Medium()),
          const Gap(6.0),
          Wrap(
            spacing: 6.0,
            children: hobbies.map(_MainHobbyBadge.new).toList(),
          ),
          const Gap(12.0),
          _InteractionButtons(),
        ],
      ),
    );
  }
}

class _MainHobbyBadge extends StatelessWidget {
  const _MainHobbyBadge(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 2.0,
        horizontal: 4.0,
      ),
      child: Text(
        name,
        style: AppStyles.body03Regular(
          context.appColors.primary,
        ),
      ),
    );
  }
}

class _InteractionButtons extends StatelessWidget {
  const _InteractionButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppElevatedButton(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.question_mark_rounded,
                  size: 20.0,
                  color: Colors.white,
                ),
                const Gap(8.0),
                Text(
                  '대화 해볼래요',
                  style: AppStyles.body02Medium(Colors.white),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
        const Gap(8.0),
        SizedBox(
          width: 40.0,
          child: AppElevatedButton(
            padding: const EdgeInsets.all(10.0),
            primary: context.appColors.shadow,
            onPressed: () {},
            child: Icon(
              Icons.question_mark_rounded,
              size: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
