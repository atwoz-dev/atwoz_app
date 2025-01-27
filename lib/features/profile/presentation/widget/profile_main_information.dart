import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'message_send_bottomsheet.dart';

class ProfileMainInformation extends StatelessWidget {
  const ProfileMainInformation({
    super.key,
    required this.name,
    required this.age,
    required this.mbti,
    required this.address,
    required this.hobbies,
    required this.chatEnabled,
  });

  final String name;
  final int age;
  final String mbti;
  final String address;
  final List<String> hobbies;
  final bool chatEnabled;

  @override
  Widget build(BuildContext context) {
    final mainColor = Colors.white;

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
          _InteractionButtons(chatEnabled: chatEnabled),
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

class _InteractionButtons extends StatelessWidget {
  const _InteractionButtons({required this.chatEnabled});

  final bool chatEnabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DefaultElevatedButton(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            onPressed:
                chatEnabled ? () => MessageSendBottomSheet.open(context) : null,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.question_mark_rounded,
                  size: 20.0,
                  color: Colors.white,
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
        SizedBox(
          width: 40.0,
          child: DefaultElevatedButton(
            padding: const EdgeInsets.all(10.0),
            primary: context.palette.shadow,
            onPressed: () {},
            // TODO(Han): debug code (must be remove before PR)
            // AnnouncementBottomSheet.open(
            //   context,
            //   title: '메시지를 받았어요.',
            //   subTitle: '상대방의 메시지를 수락하면 서로의 연락처가 공개됩니다.',
            //   content: '저와 비슷한 가치관을 가지고 계셔서 호감이 생겼어요\n'
            //       '괜찮으시다면 저희 연락 한번 해봐요!',
            //   submitLabel: '수락',
            //   onSubmit: () {},
            //   cancelLabel: '거절',
            //   onCancel: () {},
            // ),
            child: const Icon(
              Icons.question_mark_rounded,
              size: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
