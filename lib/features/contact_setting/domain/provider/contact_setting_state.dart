import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:atwoz_app/app/enum/enum.dart';

part 'contact_setting_state.freezed.dart';

@freezed
class ContactSettingState with _$ContactSettingState {
  const ContactSettingState._();

  const factory ContactSettingState({
    required ContactMethod? method,
    required String phone,
    required String kakao,
  }) = _ContactSettingState;

  factory ContactSettingState.initial() => const ContactSettingState(
        method: null,
        phone: '',
        kakao: '',
      );

  bool get isValid => switch (method) {
        ContactMethod.phone => phone.isNotEmpty,
        ContactMethod.kakao => kakao.isNotEmpty,
        null => false,
      };
}
