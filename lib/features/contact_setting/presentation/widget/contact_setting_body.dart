import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/contact_setting/domain/provider/contact_setting_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:atwoz_app/app/enum/enum.dart';

class ContactSettingBody extends ConsumerStatefulWidget {
  const ContactSettingBody({super.key});
  @override
  ConsumerState<ContactSettingBody> createState() => _ContactSettingBodyState();
}

class _ContactSettingBodyState extends ConsumerState<ContactSettingBody> {
  String? _kakaoId;
  late ContactMethod _selected;

  @override
  void initState() {
    super.initState();
    final state = ref.read(contactSettingProvider);
    _kakaoId = state.kakao;
    _selected = state.method ?? ContactMethod.phone;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(contactSettingProvider);
    final notifier = ref.read(contactSettingProvider.notifier);

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
                ContactSelectForm(
                  phoneNumber: state.phone,
                  kakaoId: state.kakao,
                  selected: _selected,
                  onChanged: (selected) => setState(() => _selected = selected),
                  onKakaoIdChanged: (kakaoId) =>
                      setState(() => _kakaoId = kakaoId),
                ),
              ],
            ),
          ),
        ),
        _SettingButtonGroup(
          onSubmit: () => notifier.registerContactSetting(
            method: _selected,
            kakaoId: _selected == ContactMethod.kakao ? _kakaoId : null,
          ),
          isValid:
              _selected == ContactMethod.phone ||
              _kakaoId?.trim().isNotEmpty == true,
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
        Text('연락처 설정', style: Fonts.header01()),
        Text(
          '서비스 이용 및 가입을 위해 약관에 동의해 주세요',
          style: Fonts.body03Regular(context.colorScheme.tertiary),
        ),
      ],
    );
  }
}

class ContactSelectForm extends StatelessWidget {
  const ContactSelectForm({
    super.key,
    required this.phoneNumber,
    required this.kakaoId,
    required this.selected,
    required this.onChanged,
    required this.onKakaoIdChanged,
  });

  final String phoneNumber;
  final String? kakaoId;
  final ContactMethod selected;
  final ValueChanged<ContactMethod> onChanged;
  final ValueChanged<String> onKakaoIdChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RadioGroup(
          groupValue: selected,
          onChanged: (value) {
            if (value == null) return;
            onChanged(value);
          },
          child: Column(
            spacing: 13.0,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _ContactSelectOption(
                method: ContactMethod.phone,
                value: phoneNumber,
                editable: false,
                onValueSet: onChanged,
                selected: selected,
              ),
              _ContactSelectOption(
                method: ContactMethod.kakao,
                value: kakaoId,
                editable: true,
                onChanged: onKakaoIdChanged,
                hintText: '아이디를 입력해 주세요 (ID 검색이 허용되어야 합니다.)',
                onValueSet: onChanged,
                selected: selected,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ContactSelectOption extends StatelessWidget {
  const _ContactSelectOption({
    required this.method,
    required this.value,
    required this.editable,
    this.onChanged,
    this.hintText,
    required this.onValueSet,
    required this.selected,
  });

  final ContactMethod method;
  final String? value;
  final bool editable;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final ValueChanged<ContactMethod> onValueSet;
  final ContactMethod selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onValueSet(method),
      behavior: HitTestBehavior.translucent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 12.0,
        children: [
          Row(
            spacing: 8.0,
            children: [
              SizedBox.square(dimension: 16.0, child: Radio(value: method)),
              Text(method.label, style: Fonts.body02Medium()),
            ],
          ),
          _StyledTextField(
            value: value ?? '',
            onChanged: onChanged,
            readOnly: method != selected,
            disabled: !editable,
            hintText: hintText,
          ),
        ],
      ),
    );
  }
}

class _StyledTextField extends StatelessWidget {
  const _StyledTextField({
    required this.value,
    required this.onChanged,
    required this.readOnly,
    required this.disabled,

    required this.hintText,
  });

  final String value;
  final ValueChanged<String>? onChanged;
  final bool readOnly;
  final bool disabled;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.white),
        ),
        filled: disabled,
        hintText: hintText,
        fillColor: disabled ? context.colorScheme.outlineVariant : null,
        hintStyle: Fonts.body02Medium(context.colorScheme.secondary),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      onChanged: onChanged,
      readOnly: readOnly,
      enabled: !disabled,
    );
  }
}

class _SettingButtonGroup extends StatelessWidget {
  const _SettingButtonGroup({required this.onSubmit, required this.isValid});

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
