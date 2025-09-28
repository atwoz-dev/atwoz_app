import 'dart:async';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/dialogue/confirm_dialogue.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_notifier.dart';
import 'package:atwoz_app/features/profile/presentation/widget/favorite_type_select_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

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

class _InteractionButtons extends ConsumerStatefulWidget {
  const _InteractionButtons({
    required this.userId,
    required this.isFavoriteUser,
    required this.onFavoriteTypeChanged,
  });

  final int userId;
  final bool isFavoriteUser;
  final ValueChanged<FavoriteType> onFavoriteTypeChanged;

  @override
  ConsumerState<_InteractionButtons> createState() =>
      _InteractionButtonsState();
}

class _InteractionButtonsState extends ConsumerState<_InteractionButtons> {
  FavoriteType? _selectedType;

  @override
  void initState() {
    super.initState();
    _selectedType =
        ref.read(profileNotifierProvider(widget.userId)).profile?.favoriteType;
  }

  @override
  Widget build(BuildContext context) {
    final isWaitingProfileExchange = ref
            .watch(profileNotifierProvider(widget.userId))
            .profile
            ?.profileExchangeStatus
            .isWaiting ??
        false;

    return Row(
      children: [
        Expanded(
          child: isWaitingProfileExchange
              ? _PrimaryButton(
                  onTap: _profileExchangeHandler,
                  label: '프로필 교환 요청 수락하기',
                )
              : _PrimaryButton(
                  onTap: () => MessageSendBottomSheet.open(
                    context,
                    userId: widget.userId,
                    onSubmit: () => ref
                        .read(profileNotifierProvider(widget.userId).notifier)
                        .requestMatch(),
                  ),
                  label: '대화 해볼래요',
                  iconPath: IconPath.letter,
                ),
        ),
        const Gap(8.0),
        FavoriteButton(
          isFavoriteUser: widget.isFavoriteUser,
          onTap: () async {
            if (widget.isFavoriteUser) return;

            final favoriteType = await FavoriteTypeSelectDialog.open(
              context,
              userId: widget.userId,
              favoriteType: _selectedType,
            );
            if (favoriteType == null) return;
            widget.onFavoriteTypeChanged(favoriteType);
          },
        ),
      ],
    );
  }

  void _profileExchangeHandler() async {
    final notifier = ref.read(profileNotifierProvider(widget.userId).notifier);
    context.showConfirmDialog(
      submit: DialogButton(
        label: '수락하기',
        onTap: () async {
          await notifier.approveProfileExchange();
          showToastMessage('프로필 교환을 수락하였습니다.');
          if (mounted) context.pop();
        },
      ),
      cancel: DialogButton(
        label: '거절',
        onTap: () async {
          await notifier.rejectProfileExchange();
          showToastMessage('프로필 교환을 거절하였습니다.');
          if (mounted) context.pop();
        },
      ),
      enableCloseButton: false,
      child: const Text(
        '요청을 수락하시겠어요?\n'
        '상대방과 메시지를 주고받을 수 있어요!',
      ),
      buttonVerticalPadding: 8,
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  const _PrimaryButton({
    required this.onTap,
    required this.label,
    this.iconPath,
  });

  final VoidCallback onTap;
  final String label;
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return DefaultElevatedButton(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      onPressed: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 8.0,
        children: [
          if (iconPath != null)
            DefaultIcon(
              iconPath,
              size: 20.0,
              colorFilter: DefaultIcon.fillColor(
                Colors.white,
              ),
            ),
          Text(
            label,
            style: Fonts.body02Medium(Colors.white),
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    super.key,
    required this.isFavoriteUser,
    required this.onTap,
    this.disabledColor,
    this.label,
  });

  final bool isFavoriteUser;
  final VoidCallback onTap;
  final Color? disabledColor;
  final String? label;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _enabled = true;
  Timer? _timer;
  static const _transDuration = 1000;

  Color get _disabledColor => widget.disabledColor ?? const Color(0xFFDCDEE3);
  static const _gradientStart = Color(0xFFBCD5F3);
  static const _gradientEnd = Color(0xFF4F37E2);
  static const _transitionGradientStart = Color(0xA1BCD5F3);
  static const _transitionGradientEnd = Color(0xA14F37E2);

  BoxDecoration get _currentDecoration {
    const baseDecoration = BoxDecoration(borderRadius: Dimens.buttonRadius);
    if (!widget.isFavoriteUser) {
      return baseDecoration.copyWith(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            _disabledColor,
            _disabledColor,
          ],
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
  void didUpdateWidget(covariant FavoriteButton oldWidget) {
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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DefaultIcon(
              widget.isFavoriteUser ? IconPath.heartFill : IconPath.heart,
              size: 20.0,
              colorFilter: DefaultIcon.fillColor(Colors.white),
            ),
            if (widget.label != null)
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  widget.label!,
                  style: Fonts.body01Regular().copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
