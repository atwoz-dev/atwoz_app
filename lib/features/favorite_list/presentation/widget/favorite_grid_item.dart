import 'dart:ui';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/image/default_image.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/favorite_list/domain/provider/domain.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FavoriteGridItem extends StatelessWidget {
  const FavoriteGridItem({
    super.key,
    required this.profile,
    required this.isBlurred,
    required this.onProfielTab,
    required this.onBlurTap,
  });

  final FavoriteUserSummary profile;
  final bool isBlurred;
  final VoidCallback onProfielTab;
  final VoidCallback onBlurTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: _imageRadius,
          child: GestureDetector(
            onTap: isBlurred ? onBlurTap : onProfielTab,
            child: isBlurred
                ? ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: _ProfileImageContainer(profile: profile),
                  )
                : _ProfileImageContainer(profile: profile),
          ),
        ),
        const Gap(8.0),
        if (profile.name.isNotEmpty)
          Text(
            profile.name,
            style: Fonts.body02Medium(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        const Gap(4.0),
        Text(
          [
            if (profile.city.isNotEmpty) profile.city,
            if (profile.age > 0) profile.age,
          ].join(', '),
          style: Fonts.body03Regular(
            context.colorScheme.secondary,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _ProfileImageContainer extends StatelessWidget {
  const _ProfileImageContainer({
    required this.profile,
  });

  final FavoriteUserSummary profile;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.square(
          dimension: _profileImageSize,
          child: DefaultImage(
            imageURL: profile.profileUrl,
            width: _profileImageSize,
            borderRadius: _imageRadius,
            fit: BoxFit.cover,
          ),
        ),
        if (profile.isRecent)
          const Positioned(
            right: 8.0,
            top: 8.0,
            child: Badge(
              backgroundColor: Color(0xFF6CD4FF),
              smallSize: 8.0,
            ),
          ),
        if (profile.isMutual)
          const Positioned(
            right: 5.0,
            bottom: 5.0,
            child: DefaultIcon(
              IconPath.heart,
              size: 20.0,
            ),
          ),
      ],
    );
  }

  static const _profileImageSize = 104.0;
}

const _imageRadius = BorderRadius.all(Radius.circular(8));
