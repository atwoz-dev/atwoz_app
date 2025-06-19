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
          /// 배경 이미지 (상단 상태바까지 포함됨)
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /// 이미지가 상태바까지 닿도록 상단 패딩 없이 배치
                DefaultImage(
                  imageURL: profile.profileImages[1]?.imageUrl,
                  fit: BoxFit.cover,
                  height: context.screenHeight * 0.47,
                ),
              ],
            ),
          ),

          /// 상단 Back 버튼
          Positioned(
            top: MediaQuery.of(context).padding.top + 8, // 상태바 높이 + 여유
            left: 8,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {},
              color: Palette.colorBlack,
            ),
          ),

          /// 아래쪽 프로필 카드
          Positioned(
            top: 300, // 이미지 높이보다 약간 아래
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${profile.nickname}, ${profile.age}',
                    style: Fonts.header02(),
                  ),
                  const Gap(6.0),
                  Text('${profile.mbti} · ${profile.region}',
                      style: Fonts.body02Medium()),
                  const Gap(6.0),
                  Wrap(
                    spacing: 6.0,
                    children: profile.hobbies
                        .map(
                          (hobby) => _MainHobbyBadge(hobby.label),
                        )
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
