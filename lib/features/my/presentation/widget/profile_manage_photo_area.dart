import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileManagePhotoArea extends StatelessWidget {
  const ProfileManagePhotoArea({super.key});

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
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffEDEEF0),
                      ),
                      child: index == 0 // TODO: api 연동 시 사진으로 변경
                          ? const DefaultIcon(
                              IconPath.personPlaceholder,
                              size: 150,
                            )
                          : null,
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
                    child: Container(
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
                        colorFilter:
                            DefaultIcon.fillColor(const Color(0xff8D92A0)),
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
