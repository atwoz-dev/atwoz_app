import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/my/domain/model/my_profile.dart';
import 'package:atwoz_app/features/profile/presentation/widget/profile_sub_information.dart';
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
          Column(
            children: [
              SizedBox(
                height: context.screenHeight * 0.5,
                child: Stack(
                  children: [
                    /// 배경 이미지
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Image.network(
                        profile.profileImages[0]!.imageUrl,
                        fit: BoxFit.cover,
                        height: context.screenHeight * 0.5,
                      ),
                    ),

                    /// 그라디언트
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Palette.colorWhite.withValues(alpha: 0),
                              Palette.colorWhite.withValues(alpha: 1),
                            ],
                            stops: const [0.4, 1.0],
                          ),
                        ),
                      ),
                    ),

                    /// 상단 Back 버튼
                    Positioned(
                      top: kToolbarHeight,
                      left: 8,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () {},
                        color: Palette.colorBlack,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(40),
              Container(
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
                    Text(
                      '프로필 정보',
                      style: Fonts.body01Medium(),
                    ),
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
          Positioned(
            top: context.screenHeight * 0.45,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${profile.nickname}, ${profile.age}',
                  style: Fonts.header02().copyWith(
                    color: Palette.colorBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(6),
                Text(
                  '${profile.mbti} ・ ${profile.region}',
                  style: Fonts.body02Medium().copyWith(
                    color: Palette.colorGrey600,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(6),
                Row(
                  children: profile.hobbies
                      .map(
                        (hobby) => _MainHobbyBadge(hobby.label),
                      )
                      .toList(),
                )
              ],
            ),
          )
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
    return Container(
      margin: const EdgeInsets.only(right: 6.0),
      padding: const EdgeInsets.symmetric(
        vertical: 2.0,
        horizontal: 4.0,
      ),
      decoration: BoxDecoration(
        color: Palette.colorPrimary100,
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Text(
        name,
        style: Fonts.body03Regular(
          Palette.colorPrimary600,
        ),
      ),
    );
  }
}
