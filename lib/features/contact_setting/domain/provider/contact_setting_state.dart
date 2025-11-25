import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:atwoz_app/app/enum/enum.dart';

part 'contact_setting_state.freezed.dart';

@freezed
abstract class ContactSettingState with _$ContactSettingState {
  const ContactSettingState._();

  const factory ContactSettingState({
    required ContactMethod? method,
    required String phone,
    required String? kakao,
  }) = _ContactSettingState;

  factory ContactSettingState.initial() =>
      const ContactSettingState(method: null, phone: '', kakao: null);

  bool get isValid => switch (method) {
    ContactMethod.phone || null => phone.isNotEmpty,
    ContactMethod.kakao => kakao?.isNotEmpty == true,
  };

  bool get isContactSettingInitialized => method != null;
}
