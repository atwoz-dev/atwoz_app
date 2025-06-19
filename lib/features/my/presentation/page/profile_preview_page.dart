import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/image/default_image.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/my/domain/model/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePreviewPage extends StatelessWidget {
  final MyProfile profile;

  const ProfilePreviewPage({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    final mainColor = context.colorScheme.surface;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: DefaultImage(
              imageURL: profile.profileImages.first?.imageUrl,
              height: context.screenHeight * 0.47,
            ),
          ),
          Positioned(
            top: 300,
            left: 16,
            child: Container(
              //height: context.screenHeight * 0.3,
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
                  Text('${profile.nickname}, ${profile.age}',
                      style: Fonts.header02()),
                  const Gap(6.0),
                  Text('${profile.mbti} · ${profile.region}',
                      style: Fonts.body02Medium()),
                  const Gap(6.0),
                  Wrap(
                    spacing: 6.0,
                    children: profile.hobbies
                        .map((hobby) => _MainHobbyBadge(hobby.label))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
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
      padding: const EdgeInsets.symmetric(
        vertical: 2.0,
        horizontal: 4.0,
      ),
      child: Text(
        name,
        style: Fonts.body03Regular(
          context.palette.primary,
        ),
      ),
    );
  }
}
