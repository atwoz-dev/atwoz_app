import 'dart:async';

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
              isFavoriteUser: favoriteType != null,
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
    required this.isFavoriteUser,
    required this.onFavoriteTypeChanged,
  });

  final int userId;
  final bool isFavoriteUser;
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
        _FavoriteButton(
          isFavoriteUser: isFavoriteUser,
          onTap: () async {
            if (isFavoriteUser) return;
            final favoriteType = await FavoriteTypeSelectDialog.open(
              context,
              userId: userId,
              favoriteType: null,
            );
            if (favoriteType == null) return;
            onFavoriteTypeChanged(favoriteType);
          },
        ),
      ],
    );
  }
}

class _FavoriteButton extends StatefulWidget {
  const _FavoriteButton({
    required this.isFavoriteUser,
    required this.onTap,
  });

  final bool isFavoriteUser;
  final VoidCallback onTap;

  @override
  State<_FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<_FavoriteButton> {
  bool _enabled = true;
  Timer? _timer;

  static const _transDuration = 1000;

  static const _grayColor = Color(0xFFDCDEE3);
  static const _gradientStart = Color(0xFFBCD5F3);
  static const _gradientEnd = Color(0xFF4F37E2);
  static const _transitionGradientStart = Color(0xA1BCD5F3);
  static const _transitionGradientEnd = Color(0xA14F37E2);

  BoxDecoration get _currentDecoration {
    const baseDecoration = BoxDecoration(borderRadius: Dimens.buttonRadius);

    if (!widget.isFavoriteUser) {
      return baseDecoration.copyWith(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [_grayColor, _grayColor],
        ),
      );
    }
    if (!_enabled) {
      return baseDecoration.copyWith(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [_transitionGradientStart, _transitionGradientEnd],
          stops: [.0, .9],
        ),
      );
    }
    return baseDecoration.copyWith(
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [_gradientStart, _gradientEnd],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant _FavoriteButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isFavoriteUser || !widget.isFavoriteUser) {
      return;
    }

    _timer = Timer(const Duration(milliseconds: _transDuration), () {
      setState(() => _enabled = false);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: Params.animationDurationLow,
        decoration: _currentDecoration,
        padding: const EdgeInsets.all(12.0),
        child: DefaultIcon(
          widget.isFavoriteUser ? IconPath.heartFill : IconPath.heart,
          size: 20.0,
          colorFilter: DefaultIcon.fillColor(Colors.white),
        ),
      ),
    );
  }
}
