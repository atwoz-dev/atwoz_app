import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_notifier.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_state.dart';
import 'package:atwoz_app/features/profile/presentation/widget/contact_registration_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'common_button_group.dart';

class MessageSendBottomSheet extends ConsumerWidget {
  const MessageSendBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(profileNotifierProvider);
    final messageReceived = status.matchStatus is MatchingReceived;

    final (
      :sendMessageGuide,
      :sendMessageSubGuide,
      :expectedResultAfterSend,
    ) = _generateLanguageResource(
      messageReceived: messageReceived,
      myUserName: status.myUserName,
    );

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
            color: context.colorScheme.surface,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 32.0,
                horizontal: 16.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _BottomSheetHeader(sendMessageGuide),
                  const Gap(8.0),
                  _MessageSendGuide(sendMessageSubGuide),
                  const Gap(32.0),
                  _MessageSendForm(expectedResultAfterSend),
                  const Gap(32.0),
                  _MessageButtonGroup(
                    onMessageSend: () => _onSubmit(
                      context: context,
                      messageReceived: messageReceived,
                      registeredContact: status.registeredContact,
                    ),
                  ),
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

  ({
    String sendMessageGuide,
    String sendMessageSubGuide,
    String expectedResultAfterSend,
  }) _generateLanguageResource({
    required bool messageReceived,
    required String myUserName,
  }) {
    return (
      sendMessageGuide:
          '$myUserName님, \n${messageReceived ? '메시지로 관심에 답해주세요' : '메시지로 관심을 표현하세요'}',
      sendMessageSubGuide: messageReceived
          ? '등록한 연락처 상대에게 공개됩니다'
          : '상대방도 관심을 표현했어요! 매칭 확률이 매우 높습니다.',
      expectedResultAfterSend: messageReceived
          ? '빠른 응답은 상대에게 좋은 이미지를 줄 수 있어요!'
          : '상대방이 수락하면 서로의 연락처가 공개됩니다.',
    );
  }

  void _onSubmit({
    required BuildContext context,
    required bool messageReceived,
    required bool registeredContact,
  }) async {
    if (messageReceived) {
      _messageSendAndDetuctPoint(0);
      context.pop();
      return;
    }
    await showDialog(
      context: context,
      builder: (context) => _MessageSendConfirm(
        needPoint: 20,
        onMessageSend: _messageSendAndDetuctPoint,
        hasContactMethod: registeredContact,
      ),
    );
    if (!context.mounted) return;
    context.pop();
  }

  void _messageSendAndDetuctPoint(int point) {
    // TDOO(Han): message 전송 로직 (usecase 로 추후 구현)
  }
}

class _ScrollHandler extends StatelessWidget {
  const _ScrollHandler();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38.0,
      height: 4.0,
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: const BorderRadius.all(Radius.circular(100.0)),
      ),
    );
  }
}

class _BottomSheetHeader extends StatelessWidget {
  const _BottomSheetHeader(this.sendMessageGuide);

  final String sendMessageGuide;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            sendMessageGuide,
            style: Fonts.header03(),
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
  const _MessageSendGuide(this.sendMessageSubGuide);

  final String sendMessageSubGuide;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          sendMessageSubGuide,
          style: Fonts.body02Medium(const Color(0xFF7462E8)),
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
        color: context.colorScheme.outline,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 8.0,
        children: [
          const Text('예시'),
          Text(
            '프로필을 보고 저와 결이 같다고 생각했어요\n'
            '조금 더 알아가고 싶습니다😄\n'
            '괜찮으시다면 아이스티 마시면서 같이 얘기나눠봐요:)',
            style: Fonts.body02Medium(),
          ),
        ],
      ),
    );
  }
}

class _MessageSendForm extends ConsumerStatefulWidget {
  const _MessageSendForm(this.expectedResultAfterSend);

  final String expectedResultAfterSend;

  @override
  ConsumerState<_MessageSendForm> createState() => _MessageSendFormState();
}

class _MessageSendFormState extends ConsumerState<_MessageSendForm> {
  late final TextEditingController _controller;

  @override
  void initState() {
    final message = ref.read(profileNotifierProvider).message;

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
        Text('메시지 입력하기', style: Fonts.header03()),
        const Gap(8.0),
        Text(widget.expectedResultAfterSend),
        const Gap(24.0),
        DefaultTextFormField(
          controller: _controller,
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: context.colorScheme.secondary,
            ),
          ),
          hintText: '개인 연락처를 기재하시면 경고없이 서비스 이용이 정지될 수 있습니다.',
          hintStyle: Fonts.body02Medium(context.colorScheme.secondary),
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
  const _MessageButtonGroup({required this.onMessageSend});

  final VoidCallback onMessageSend;

  @override
  Widget build(BuildContext context) {
    return CommonButtonGroup(
      onCancel: context.pop,
      onSubmit: onMessageSend,
      cancelLabel: '취소',
      submitLabel: '확인',
    );
  }
}

class _MessageSendConfirm extends StatelessWidget {
  const _MessageSendConfirm({
    required this.needPoint,
    required this.onMessageSend,
    required this.hasContactMethod,
  });

  final int needPoint;
  final ValueChanged<int> onMessageSend;
  final bool hasContactMethod;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
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
            Text('메시지 보내기', style: Fonts.header02()),
            const Gap(12.0),
            Text('보유한 하트: $needPoint'),
            const Gap(8.0),
            const Text(
              '3일 동안 상대방으로부터 응답이 없으면\n사용하신 하트를 100% 돌려드려요',
              textAlign: TextAlign.center,
            ),
            const Gap(17.0),
            CommonButtonGroup.custom(
              onCancel: context.pop,
              onSubmit: () async {
                final validContact =
                    await _checkContactMethodAndRegisterIfInvalid(context);
                print(validContact);
                if (!validContact || !context.mounted) {
                  return;
                }
                onMessageSend(needPoint);
                context.pop();
              },
              cancel: const Text('취소'),
              submit: const Text('? 20'),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> _checkContactMethodAndRegisterIfInvalid(
      BuildContext context) async {
    return hasContactMethod ||
        (await ContactRegistrationDialog.open(context) ?? false);
  }
}
