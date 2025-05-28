import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_notifier.dart';
import 'package:atwoz_app/features/profile/presentation/widget/favorite_type_select_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'message_send_bottomsheet.dart';

class ProfileMainInformation extends StatelessWidget {
  const ProfileMainInformation({
    super.key,
    required this.userId,
    required this.name,
    required this.age,
    required this.mbti,
    required this.address,
    required this.hobbies,
    required this.chatEnabled,
    required this.favoriteType,
    required this.onFavoriteTypeChanged,
  });

  final int userId;
  final String name;
  final int age;
  final String mbti;
  final String address;
  final List<String> hobbies;
  final bool chatEnabled;
  final FavoriteType? favoriteType;
  final ValueChanged<FavoriteType> onFavoriteTypeChanged;

  @override
  Widget build(BuildContext context) {
    final mainColor = context.colorScheme.surface;

    return Container(
      height: context.screenHeight * 0.3,
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
          Text('$name, $age', style: Fonts.header02()),
          const Gap(6.0),
          Text('$mbti · $address', style: Fonts.body02Medium()),
          const Gap(6.0),
          Wrap(
            spacing: 6.0,
            children: hobbies.map(_MainHobbyBadge.new).toList(),
          ),
          const Gap(12.0),
          if (chatEnabled)
            _InteractionButtons(
              userId: userId,
              favoriteUser: favoriteType != null,
              onFavoriteTypeChanged: onFavoriteTypeChanged,
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

class _InteractionButtons extends ConsumerWidget {
  const _InteractionButtons({
    required this.userId,
    required this.favoriteUser,
    required this.onFavoriteTypeChanged,
  });

  final int userId;
  final bool favoriteUser;
  final ValueChanged<FavoriteType> onFavoriteTypeChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: DefaultElevatedButton(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            onPressed: () => MessageSendBottomSheet.open(
              context,
              userId: userId,
              onSubmit: () => ref
                  .read(profileNotifierProvider(userId).notifier)
                  .requestMatch(),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                DefaultIcon(
                  IconPath.letter,
                  size: 20.0,
                  colorFilter: DefaultIcon.fillColor(
                    Colors.white,
                  ),
                ),
                const Gap(8.0),
                Text(
                  '대화 해볼래요',
                  style: Fonts.body02Medium(Colors.white),
                ),
              ],
            ),
          ),
        ),
        const Gap(8.0),
        GestureDetector(
          onTap: () async {
            if (favoriteUser) return;
            final favoriteType = await FavoriteTypeSelectDialog.open(
              context,
              userId: userId,
            );
            if (favoriteType == null) return;
            onFavoriteTypeChanged(favoriteType);
          },
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFDCDEE3),
              borderRadius: Dimens.buttonRadius,
            ),
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                DefaultIcon(
                  IconPath.heart,
                  size: 20.0,
                  colorFilter: DefaultIcon.fillColor(Colors.white),
                ),
                AnimatedScale(
                  scale: favoriteUser ? 1 : 0,
                  duration: Params.animationDurationLow,
                  curve: Curves.elasticInOut,
                  child: DefaultIcon(
                    IconPath.heartFill,
                    size: null,
                    colorFilter: DefaultIcon.fillColor(
                      context.colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
