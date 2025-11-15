import 'package:atwoz_app/features/profile/data/repository/profile_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:atwoz_app/app/enum/enum.dart';

import 'contact_setting_state.dart';

part 'contact_setting_notifier.g.dart';

@Riverpod(keepAlive: true)
class ContactSettingNotifier extends _$ContactSettingNotifier {
  late final ProfileRepository _repository;

  @override
  ContactSettingState build() {
    _repository = ref.read(profileRepositoryProvider);
    return ContactSettingState.initial();
  }

  Future<void> initialize() async {
    final (phoneNumber, kakaoId) = await (
      _repository.getPhoneNumber(),
      _repository.getKakaoId(),
    ).wait;

    state = ContactSettingState(
      method: _repository.getContactMethod(),
      phone: phoneNumber,
      kakao: kakaoId,
    );
  }

  set method(ContactMethod method) {
    state = state.copyWith(method: method);
  }

  set kakao(String kakao) => state = state.copyWith(kakao: kakao);

  set phone(String phone) => state = state.copyWith(phone: phone);

  /// TODO(Han): 추후 phone number 갱신 기능 추가
  /// ref.read(localStorageProvider)
  ///  ..saveEncrypted(SecureStorageItem.phoneNumber, state.phone)
  ///  ..saveEncrypted(SecureStorageItem.kakaoId, state.kakao);
  Future<bool> registerContactSetting() async {
    final newMethod = state.method ?? ContactMethod.phone;
    _repository.setContactMethod(newMethod);
    if (newMethod == ContactMethod.kakao && state.kakao?.isNotEmpty == true) {
      return await _repository.setKakaoId(state.kakao ?? '');
    }
    return true;
  }
}
