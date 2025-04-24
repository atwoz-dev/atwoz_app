import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class UserByCategoryListItem extends StatelessWidget {
  final bool isBlurred;
  final VoidCallback onTap;
  final IntroducedProfile profile;

  const UserByCategoryListItem({
    super.key,
    required this.isBlurred,
    required this.onTap,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Palette.gray10,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox.square(
                  dimension: 54,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(profile.imageUrl),
                    radius: 50,
                  ),
                ),
                const Gap(16),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        // 해시태그 리스트 뷰
                        width: context.screenHeight,
                        height: 18,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: profile.hashTags.length,
                          itemBuilder: (context, index) {
                            return HashtagWidget(
                              tagName: profile.hashTags[index],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Gap(8);
                          },
                        ),
                      ),
                      const Gap(8),
                      Text(
                        profile.interviewContent,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Fonts.body02Medium().copyWith(
                          fontWeight: FontWeight.w400,
                          color: Palette.colorGrey600,
                          height: 1.5,
                        ),
                      ),
                      const Gap(16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Palette.colorGrey100,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/home_heart.svg",
                                width: 24,
                                height: 24,
                                color: Palette.colorPrimary500,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (isBlurred) const BlurCoverWidget(),
        ],
      ),
    );
  }
}
