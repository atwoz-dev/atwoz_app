import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:atwoz_app/features/profile/presentation/widget/profile_sub_information.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProfilePreviewPage extends StatefulWidget {
  final MyProfile profile;

  const ProfilePreviewPage({
    super.key,
    required this.profile,
  });

  @override
  State<ProfilePreviewPage> createState() => _ProfilePreviewPageState();
}

class _ProfilePreviewPageState extends State<ProfilePreviewPage> {
  int currentImageIndex = 1;

  @override
  Widget build(BuildContext context) {
    final totalImageCount =
        widget.profile.profileImages.whereType<MyProfileImage>().length;
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
                    Stack(
                      children: [
                        Positioned.fill(
                          child: PageView.builder(
                            itemCount: totalImageCount,
                            itemBuilder: (context, index) {
                              final image = widget.profile.profileImages[index];

                              return CachedNetworkImage(
                                imageUrl: image?.imageUrl ?? '',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: context.screenHeight * 0.5,
                              );
                            },
                            onPageChanged: (value) => setState(
                              () => currentImageIndex = value + 1,
                            ),
                          ),
                        ),
                        if (totalImageCount > 1)
                          Positioned(
                            top: context.screenHeight * 0.4,
                            right: 16,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.6),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Text(
                                '$currentImageIndex/$totalImageCount',
                              ),
                            ),
                          )
                      ],
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
                        onPressed: context.pop,
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
                          label: widget.profile.smokingStatus.label,
                        ),
                        SubInfoItem(
                          iconPath: IconPath.wineglass,
                          label: widget.profile.drinkingStatus.label,
                        ),
                        SubInfoItem(
                          iconPath: IconPath.school,
                          label: widget.profile.education.label,
                        ),
                        SubInfoItem(
                          iconPath: IconPath.bless,
                          label: widget.profile.religion.label,
                        ),
                        SubInfoItem(
                          iconPath: IconPath.ruler,
                          label: '${widget.profile.height}cm',
                        ),
                        SubInfoItem(
                          iconPath: IconPath.business,
                          label: widget.profile.job.label,
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
                  '${widget.profile.nickname}, ${widget.profile.age}',
                  style: Fonts.header02().copyWith(
                    color: Palette.colorBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(6),
                Text(
                  '${widget.profile.mbti} ・ ${widget.profile.region}',
                  style: Fonts.body02Medium().copyWith(
                    color: Palette.colorGrey600,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(6),
                Row(
                  children: widget.profile.hobbies
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
