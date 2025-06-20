import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/image/default_image.dart';
import 'package:atwoz_app/app/widget/widget.dart';
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
    return Scaffold(
      backgroundColor: Palette.colorWhite,
      body: Stack(
        children: [
          /// 배경 이미지 (상단 상태바까지 포함됨)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.network(
                  profile.profileImages[1]!.imageUrl,
                  fit: BoxFit.cover,
                  height: 480,
                ),
                Container(
                  height: 120,
                  color: Colors.white,
                )
              ],
            ),
          ),

          /// ✅ 그라디언트 (이미지 하단에 겹침)
          // Positioned(
          //   top: 380, // 이미지 하단 근처부터 시작
          //   left: 0,
          //   right: 0,
          //   height: 100,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter,
          //         colors: [
          //           Palette.colorWhite.withValues(alpha: 0),
          //           Palette.colorWhite.withValues(alpha: 1),
          //         ],
          //         stops: const [0.5, 1.0],
          //       ),
          //     ),
          //   ),
          // ),

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
            top: 348, // 상태바 높이 + 여유
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Palette.colorWhite.withValues(alpha: 0),
                    Palette.colorWhite.withValues(alpha: 1),
                  ],
                  stops: const [0, 0.25],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                  const Gap(12.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: Dimens.cardRadius,
                      border: Border.all(
                        width: 1.0,
                        color: Palette.colorGrey50,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          '프로필 정보',
                          style: Fonts.body01Medium(),
                        ),
                        _SubInformationContainer(
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
                              label: profile.education.label,
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
                  )
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

class SubInfoItem {
  const SubInfoItem({
    required this.iconPath,
    required this.label,
  });

  final String iconPath;
  final String label;
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

class _SubInformationContainer extends StatelessWidget {
  const _SubInformationContainer({required this.items});

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
