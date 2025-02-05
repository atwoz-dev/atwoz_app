import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:atwoz_app/app/enum/enum.dart';

import 'contact_setting_state.dart';

part 'contact_setting_notifier.g.dart';

@riverpod
class ContactSettingNotifier extends _$ContactSettingNotifier {
  @override
  ContactSettingState build() {
    return ContactSettingState.initial();
  }

  set method(ContactMethod method) {
    state = state.copyWith(method: method);
  }

  set kakao(String kakao) => state = state.copyWith(kakao: kakao);

  set phone(String phone) => state = state.copyWith(phone: phone);

  Future<void> registerContactInformation() async {
    // TODO(Han): db or api call
  }

  Future<void> updatePhoneNumber() async {
    // TODO(Han): db or api call 수정 버튼 요구사항 확인
  }
}
