import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileManagePhotoArea extends StatelessWidget {
  final MyProfile profile;
  const ProfileManagePhotoArea({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(24),
          Text(
            "프로필 사진",
            style: Fonts.header03().copyWith(
              color: Palette.colorBlack,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: index <= profile.profileImages.length - 1
                          ? Image.network(
                              profile.profileImages[index].imageUrl,
                              fit: BoxFit.cover,
                            )
                          : Container(
                              color: const Color(0xffEDEEF0),
                            ),
                    ),
                  ),
                  if (index == 0)
                    Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Palette.colorPrimary600,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text(
                            "대표",
                            style: Fonts.body03Regular().copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: index <= profile.profileImages.length - 1
                        ? const DefaultIcon(
                            IconPath.imageDelete,
                            size: 24,
                          )
                        : Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xff8D92A0),
                                width: 1.5,
                              ),
                            ),
                            child: DefaultIcon(
                              IconPath.add,
                              colorFilter: DefaultIcon.fillColor(
                                  const Color(0xff8D92A0)),
                            ),
                          ),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
