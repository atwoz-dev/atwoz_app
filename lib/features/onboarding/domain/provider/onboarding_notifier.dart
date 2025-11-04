import 'dart:async';

import 'package:atwoz_app/app/constants/api_errors.dart';
import 'package:atwoz_app/core/network/network_exception.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/auth/data/data.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/features/onboarding/domain/enum/auth_status.dart';
import 'package:atwoz_app/features/onboarding/domain/provider/onboarding_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_notifier.g.dart';

@riverpod
class OnboardingNotifier extends _$OnboardingNotifier {
  @override
  OnboardingState build() {
    return OnboardingState.initial();
  }

  // 인증번호 발송
  Future<void> sendVerificationCode(String phoneNumber) async {
    try {
      await ref.read(authUsecaseProvider).sendSmsVerificationCode(phoneNumber);

      showToastMessage('인증번호가 발송되었습니다.');
    } catch (e) {
      Log.e('SMS 발송 실패', errorObject: e);
      showToastMessage('인증번호 발송에 실패했습니다.');
    }
  }

  // 인증번호 재발송
  Future<void> resendCode(String phoneNumber) async {
    try {
      final authUseCase = ref.read(authUsecaseProvider);
      await authUseCase.sendSmsVerificationCode(phoneNumber);
      showToastMessage('인증번호가 재발송되었습니다.');
      state = state.copyWith(validationError: null);
    } catch (e) {
      Log.e('재발송 실패', errorObject: e);
      showToastMessage('인증번호 재발송에 실패했습니다.');
    }
  }

  // 입력값 검증
  void validateInput(String input) {
    if (input.isEmpty) {
      state = state.copyWith(validationError: null, isButtonEnabled: false);
      return;
    }

    final isValid = Validation.sixDigitNumber.hasMatch(input);
    state = state.copyWith(
      validationError: isValid ? null : '인증번호를 확인해 주세요.',
      isButtonEnabled: isValid,
    );
  }

  // 인증 요청
  Future<(UserData?, AuthStatus?)> verifyCode(
    String phoneNumber,
    String code,
  ) async {
    try {
      state = state.copyWith(isLoading: true);
      final authUseCase = ref.read(authUsecaseProvider);
      final userData = await authUseCase.signIn(
        UserSignInRequest(phoneNumber: phoneNumber, code: code),
      );
      state = state.copyWith(status: AuthStatus.activate);
      return (userData, AuthStatus.activate);
    } on NetworkException catch (e) {
      AuthStatus? newStatus;
      switch (e.code) {
        case ApiErrors.dormant:
          newStatus = AuthStatus.dormant;
          break;
        case ApiErrors.forbidden:
          newStatus = AuthStatus.forbidden;
          break;
        case ApiErrors.temporarilyForbidden:
          newStatus = AuthStatus.temporarilyForbidden;
          break;
        case ApiErrors.deletedUser:
          newStatus = AuthStatus.deletedUser;
          break;
      }
      if (newStatus != null) state = state.copyWith(status: newStatus);
      return (null, newStatus);
    } catch (e) {
      Log.e('인증 실패: $e', errorObject: e);
      state = state.copyWith(validationError: '인증에 실패했습니다.');
      return (null, null);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  // 계정 활성화
  Future<bool> activateAccount(String phoneNumber) async {
    try {
      await ref.read(authUsecaseProvider).activateAccount(phoneNumber);
      return true;
    } catch (e) {
      return false;
    }
  }

  void updateResendCountdown(int countdown) {
    state = state.copyWith(resendCountDown: countdown);
  }
}
