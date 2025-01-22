import 'package:atwoz_app/core/util/date_time_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_process_state.freezed.dart';
part 'sign_up_process_state.g.dart';

@freezed
class SignUpProcessState with _$SignUpProcessState {
  const factory SignUpProcessState({
    @Default(1) int currentStep, // 현재 단계 (초기값: 1)
    @Default(null) String? nickname, // 닉네임
    @Default(null) String? selectedGender, // 선택된 성별
    @Default(false) bool isLoading, // 로딩 여부
    @Default(null) String? error, // 에러 메시지
    @Default(null) int? selectedYear, // 선택된 나이
    @Default(null) int? selectedHeight, // 선택된 키
    @Default(null) String? selectedJob, // 선택된 직업
    @Default(null) String? selectedLocation, // 선택된 지역
    @Default(null) String? selectedEducation, // 선택된 학력
    @Default(null) String? selectedFirstMbtiLetter, // Mbti 첫 번째 글자
    @Default(null) String? selectedSecondMbtiLetter, // Mbti 두 번째 글자
    @Default(null) String? selectedThirdMbtiLetter, // Mbti 세 번째 글자
    @Default(null) String? selectedFourthMbtiLetter, // Mbti 네 번째 글자
    @Default(null) String? selectedSmoking, // 선택된 흡연 여부
    @Default(null) String? selectedDrinking, // 선택된 음주 여부
    @Default(null) String? selectedReligion, // 선택된 종교
    @Default(<String>[]) List<String> selectedHobbies, // 선택된 취미
  }) = _SignUpProcessState;

  const SignUpProcessState._();

  get age => selectedYear != null
      ? DateTimeUtil.calculateAge(yearOfBirth: selectedYear!)
      : null;

  get mbti => selectedFirstMbtiLetter != null &&
          selectedSecondMbtiLetter != null &&
          selectedThirdMbtiLetter != null &&
          selectedFourthMbtiLetter != null
      ? '$selectedFirstMbtiLetter$selectedSecondMbtiLetter$selectedThirdMbtiLetter$selectedFourthMbtiLetter'
      : null;

  get isSecondStepCompleted =>
      selectedYear != null &&
      selectedHeight != null &&
      selectedJob != null &&
      selectedLocation != null &&
      selectedEducation != null &&
      selectedFirstMbtiLetter != null &&
      selectedSecondMbtiLetter != null &&
      selectedThirdMbtiLetter != null &&
      selectedFourthMbtiLetter != null &&
      selectedSmoking != null &&
      selectedDrinking != null;
  // 현재 단계에서 버튼 활성화 여부를 계산
  bool isButtonEnabled() {
    switch (currentStep) {
      // case 1: // 닉네임, 성별 입력
      //   return nickname != null && error == null && selectedGender != null;
      case 1: // 나이 선택
        return selectedYear != null;
      case 2: // 키 선택
        return selectedHeight != null;
      case 3: // 직업 선택
        return selectedJob != null;
      case 4: // 지역 선택
        return selectedLocation != null;
      case 5: // 학력 선택
        return selectedEducation != null;
      case 6: // Mbti 선택
        return selectedFirstMbtiLetter != null &&
            selectedSecondMbtiLetter != null &&
            selectedThirdMbtiLetter != null &&
            selectedFourthMbtiLetter != null;
      case 7: // 흡연 여부 선택
        return selectedSmoking != null;
      case 8: // 음주 여부 선택
        return selectedDrinking != null;
      case 9: // 종교 선택
        return selectedReligion != null;
      case 10: // 취미 선택
        return selectedHobbies.isNotEmpty;
      default:
        return false;
    }
  }

  // JSON 변환 메서드 추가
  factory SignUpProcessState.fromJson(Map<String, dynamic> json) =>
      _$SignUpProcessStateFromJson(json);
}
