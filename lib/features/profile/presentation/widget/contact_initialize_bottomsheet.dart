import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/enum/contact_method.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_notifier.dart';
import 'package:atwoz_app/features/profile/presentation/widget/common_button_group.dart';
import 'package:atwoz_app/features/profile/presentation/widget/message_send_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContactInitializeBottomsheet extends StatelessWidget {
  const ContactInitializeBottomsheet({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ScrollHandler(),
        const Gap(4.0),
        _ContactSettingBody(userId),
      ],
    );
  }

  static Future<bool?> open(BuildContext context, {required int userId}) =>
      showModalBottomSheet<bool>(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        useSafeArea: true,
        builder: (context) => Padding(
          padding: EdgeInsets.only(bottom: context.mediaQueryViewInsets.bottom),
          child: ContactInitializeBottomsheet(userId: userId),
        ),
      );
}

class _ContactSettingBody extends ConsumerStatefulWidget {
  const _ContactSettingBody(this.userId);

  final int userId;

  @override
  ConsumerState<_ContactSettingBody> createState() =>
      _ContactSettingBodyState();
}

class _ContactSettingBodyState extends ConsumerState<_ContactSettingBody> {
  String? _kakaoId;
  late ContactMethod _selected;

  @override
  void initState() {
    super.initState();
    final state = ref.read(profileProvider(widget.userId));
    _kakaoId = state.kakaoId;
    _selected = state.selectedContactMethod ?? ContactMethod.phone;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileProvider(widget.userId));
    return Material(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      type: MaterialType.canvas,
      color: context.colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    '잠깐만요!\n'
                    '연락처 등록이 안되었네요',
                    style: Fonts.header03(
                      context.colorScheme.onSurface,
                    ).copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox.square(
                  dimension: 24.0,
                  child: CloseButton(onPressed: context.pop),
                ),
              ],
            ),
            const Gap(8.0),
            Text(
              '메시지를 보내기 위해서는 최초 1회 등록이 필요해요',
              style: Fonts.body02Medium(context.colorScheme.primary),
            ),
            const Gap(13.0),
            _ContactSelectForm(
              phoneNumber: state.phoneNumber,
              kakaoId: state.kakaoId,
              selected: _selected,
              onChanged: (selected) => setState(() => _selected = selected),
              onKakaoIdChanged: (kakaoId) => setState(() => _kakaoId = kakaoId),
            ),
            const Gap(27.0),
            CommonButtonGroup(
              onCancel: context.pop,
              onSubmit: () async {
                final notifier = ref.read(
                  profileProvider(widget.userId).notifier,
                );

                notifier.setContactInitialSetting(
                  method: _selected,
                  kakaoId: _kakaoId ?? '',
                );

                context.pop<bool>(true);
              },
              enabledSubmit:
                  _selected == ContactMethod.phone ||
                  _kakaoId?.trim().isNotEmpty == true,
              cancelLabel: '취소',
              submitLabel: '저장',
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactSelectForm extends StatelessWidget {
  const _ContactSelectForm({
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
        Text('연락처 선택', style: Fonts.header03()),
        const Gap(8.0),
        Text(
          '상대방이 데이트 신청을 수락하면 선택한 연락처만 보여줘요 ',
          style: Fonts.body02Medium(context.colorScheme.secondary),
        ),
        const Gap(13.0),
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
