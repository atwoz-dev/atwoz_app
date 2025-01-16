import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(false) bool isLoading, // 로딩 여부
    String? error, // 에러 메시지
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
    @Default(null) List<String>? selectedHobbies, // 선택된 취미
  }) = _SignUpState;

  const SignUpState._();

  // 모든 필드가 채워졌는지 확인하는 메서드
  bool get isComplete =>
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
      selectedDrinking != null &&
      selectedReligion != null &&
      selectedHobbies != null;
}
