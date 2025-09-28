import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserByCategoryListItem extends ConsumerWidget {
  final bool isBlurred;
  final VoidCallback onTap;
  final IntroducedProfile profile;
  final IntroducedCategory category;

  const UserByCategoryListItem({
    super.key,
    required this.isBlurred,
    required this.onTap,
    required this.profile,
    required this.category,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                Stack(
                  children: [
                    SizedBox.square(
                      dimension: 54,
                      child: ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: profile.profileImageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    if (isBlurred) const BlurCoverWidget(),
                  ],
                ),
                const Gap(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        // 해시태그 리스트 뷰
                        width: context.screenHeight,
                        height: 18,
                        child: HashtagWrap(tags: profile.tags),
                      ),
                      const Gap(8),
                      SizedBox(
                        height: 40,
                        child: Text(
                          profile.interviewContent,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Fonts.body02Medium().copyWith(
                            fontWeight: FontWeight.w400,
                            color: Palette.colorGrey600,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
