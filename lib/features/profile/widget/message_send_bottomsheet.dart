import 'package:atwoz_app/core/extension/context_extension.dart';
import 'package:atwoz_app/core/theme/app_fonts.dart';
import 'package:atwoz_app/core/widgets/input/app_text_form_field.dart';
import 'package:atwoz_app/features/profile/domain/profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'common_button_group.dart';

const _myUserName = '은우';

class MessageSendBottomSheet extends StatelessWidget {
  const MessageSendBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const _ScrollHandler(),
          const Gap(4.0),
          Material(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
            ),
            type: MaterialType.canvas,
            color: context.appColors.surface,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 32.0,
                horizontal: 16.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _BottomSheetHeader(myUserName: _myUserName),
                  Gap(8.0),
                  _MessageSendGuide(),
                  Gap(32.0),
                  _MessageSendForm(),
                  Gap(32.0),
                  _MessageButtonGroup(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Future<void> open(BuildContext context) => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        useSafeArea: true,
        builder: (context) => Padding(
          padding: EdgeInsets.only(bottom: context.mediaQueryViewInsets.bottom),
          child: const MessageSendBottomSheet(),
        ),
      );
}

class _ScrollHandler extends StatelessWidget {
  const _ScrollHandler();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38.0,
      height: 4.0,
      decoration: BoxDecoration(
        color: context.appColors.surface,
        borderRadius: const BorderRadius.all(Radius.circular(100.0)),
      ),
    );
  }
}

class _BottomSheetHeader extends StatelessWidget {
  const _BottomSheetHeader({required this.myUserName});

  final String myUserName;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            '$myUserName님,\n메시지로 관심을 표현하세요.',
            style: AppStyles.header03(),
          ),
        ),
        GestureDetector(
          onTap: context.pop,
          child: const Icon(
            Icons.close,
            size: 24.0,
          ),
        ),
      ],
    );
  }
}

class _MessageSendGuide extends StatelessWidget {
  const _MessageSendGuide();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '상대방도 관심을 표현했어요! 매칭 확률이 매우 높습니다.',
          style: AppStyles.body02Medium(const Color(0xFF7462E8)),
        ),
        const Gap(24.0),
        const _MessageExampleBox(),
      ],
    );
  }
}

class _MessageExampleBox extends StatelessWidget {
  const _MessageExampleBox();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: context.appColors.outline,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('예시'),
          Gap(8.0),
          Text(
            '프로필을 보고 저와 결이 같다고 생각했어요\n'
            '조금 더 알아가고 싶습니다😄\n'
            '괜찮으시다면 아이스티 마시면서 같이 얘기나눠봐요:)',
          ),
        ],
      ),
    );
  }
}

class _MessageSendForm extends ConsumerStatefulWidget {
  const _MessageSendForm();

  @override
  ConsumerState<_MessageSendForm> createState() => _MessageSendFormState();
}

class _MessageSendFormState extends ConsumerState<_MessageSendForm> {
  late final TextEditingController _controller;

  @override
  void initState() {
    final message =
        ref.read(profileNotifierProvider).maybeUnMatched?.sentMessage;

    _controller = TextEditingController(text: message)
      ..addListener(() {
        ref.read(profileNotifierProvider.notifier).message = _controller.text;
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('메시지 입력하기', style: AppStyles.header03()),
        const Gap(8.0),
        const Text('상대방이 수락하면 서로의 연락처가 공개됩니다.'),
        const Gap(24.0),
        AppTextFormField(
          controller: _controller,
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: context.appColors.secondary,
            ),
          ),
          hintText: '개인 연락처를 기재하시면 경고없이 서비스 이용이 정지될 수 있습니다.',
          hintStyle: AppStyles.body02Medium(context.appColors.secondary),
          contentPadding: const EdgeInsets.all(16.0).copyWith(left: .0),
          maxLines: 6,
          maxLength: 200,
          showCharacterCount: true,
        ),
      ],
    );
  }
}

class _MessageButtonGroup extends StatelessWidget {
  const _MessageButtonGroup();

  @override
  Widget build(BuildContext context) {
    return CommonButtonGroup(
      onCancel: context.pop,
      onSubmit: () => showDialog(
        context: context,
        builder: (context) => const _MessageSendConfirm(hartPoint: 30),
      ),
      cancelLabel: '취소',
      submitLabel: '확인',
    );
  }
}

class _MessageSendConfirm extends StatelessWidget {
  const _MessageSendConfirm({required this.hartPoint});

  final int hartPoint;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: context.appColors.surface,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        ),
        constraints: BoxConstraints(maxWidth: context.screenWidth * .8),
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 13.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(8.0),
            Text('메시지 보내기', style: AppStyles.header02()),
            const Gap(12.0),
            Text('보유한 하트: $hartPoint'),
            const Gap(8.0),
            const Text(
              '3일 동안 상대방으로부터 응답이 없으면\n사용하신 하트를 100% 돌려드려요',
              textAlign: TextAlign.center,
            ),
            const Gap(17.0),
            CommonButtonGroup.custom(
              onCancel: context.pop,
              onSubmit: () {},
              cancel: const Text('취소'),
              submit: const Text('? 20'),
              // const Text.rich(
              //   TextSpan(
              //     children: [
              //       WidgetSpan(
              //         child: Icon(Icons.question_answer_outlined, size: 16.0),
              //       ),
              //       WidgetSpan(child: Gap(4.0)),
              //       TextSpan(text: '20'),
              //     ],
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
