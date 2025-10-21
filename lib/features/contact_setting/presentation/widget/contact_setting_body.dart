import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/contact_setting/domain/provider/contact_setting_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:atwoz_app/app/enum/enum.dart';

class ContactSettingBody extends ConsumerWidget {
  const ContactSettingBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(contactSettingNotifierProvider);
    final notifier = ref.read(contactSettingNotifierProvider.notifier);

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const _SettingHeader(),
                const Gap(40.0),
                GestureDetector(
                  // TODO(Han): phone number 해당 페이지에서 pop할 때 or Event bus로 넘겨주도록 변경 필요
                  onTap: () => navigate(context, route: AppRoute.onboardPhone),
                  child: _SettingOption(
                    method: ContactMethod.phone,
                    selected: state.method,
                    inputType: TextInputType.phone,
                    onChanged: (value) => notifier.method = value,
                    text: state.phone,
                    readOnly: true,
                  ),
                ),
                const Gap(24.0),
                _SettingOption(
                  method: ContactMethod.kakao,
                  selected: state.method,
                  hintText: '아이디를 입력해 주세요 (ID 검색이 허용되어야 합니다.)',
                  onChanged: (value) => notifier.method = value,
                  onTextChanged: (value) => notifier.kakao = value,
                  text: state.kakao,
                ),
              ],
            ),
          ),
        ),
        _SettingButtonGroup(
          onSubmit: notifier.registerContactInformation,
          isValid: state.isValid,
        ),
      ],
    );
  }
}

class _SettingHeader extends StatelessWidget {
  const _SettingHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 12.0,
      children: [
        Text(
          '연락처 설정',
          style: Fonts.header01(),
        ),
        Text(
          '서비스 이용 및 가입을 위해 약관에 동의해 주세요',
          style: Fonts.body03Regular(
            context.colorScheme.tertiary,
          ),
        ),
      ],
    );
  }
}

class _SettingOption extends StatelessWidget {
  const _SettingOption({
    required this.method,
    required this.selected,
    required this.onChanged,
    this.onTextChanged,
    required this.text,
    this.hintText = '',
    this.inputType = TextInputType.text,
    this.readOnly = false,
  });

  final ContactMethod method;
  final ContactMethod? selected;
  final ValueChanged<ContactMethod> onChanged;
  final ValueChanged<String>? onTextChanged;
  final String text;
  final String hintText;
  final TextInputType inputType;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 16.0,
      children: [
        GestureDetector(
          onTap: () => onChanged(method),
          child: Row(
            children: [
              SizedBox(
                width: 20.0,
                height: 20.0,
                child: Radio(
                  value: method,
                  groupValue: selected,
                  visualDensity: VisualDensity.compact,
                  onChanged: (value) => value != null ? onChanged(value) : null,
                ),
              ),
              const Gap(8.0),
              Expanded(
                child: Text(
                  method.label,
                  style: Fonts.button16(),
                ),
              )
            ],
          ),
        ),
        DefaultTextFormField(
          enabled: method == selected,
          keyboardType: inputType,
          onChanged: onTextChanged,
          hintText: hintText,
          initialValue: text,
          readOnly: readOnly,
          border: const UnderlineInputBorder(),
        ),
      ],
    );
  }
}

class _SettingButtonGroup extends StatelessWidget {
  const _SettingButtonGroup({
    required this.onSubmit,
    required this.isValid,
  });

  final VoidCallback onSubmit;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: context.colorScheme.surface,
      child: Column(
        spacing: 16.0,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DefaultElevatedButton(
            onPressed: isValid
                ? () {
                    onSubmit();
                    context.pop(true);
                  }
                : null,
            child: const Text('저장하기'),
          ),
        ],
      ),
    );
  }
}
