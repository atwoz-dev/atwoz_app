import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/constants/temp.dart';
import 'package:atwoz_app/core/util/date_time_util.dart';
import 'package:atwoz_app/features/auth/data/dto/profile_upload_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_process_state.freezed.dart';
part 'sign_up_process_state.g.dart';

// TODO(gb): 리팩토링 필요
@freezed
class SignUpProcessState with _$SignUpProcessState {
  const factory SignUpProcessState({
    @Default(1) int currentStep,
    @Default(null) String? nickname,
    @Default(GenderEnum.female) GenderEnum selectedGender, // 변경: Enum 타입 적용
    @Default(false) bool isLoading,
    @Default(null) String? error,
    @Default(null) int? selectedYear,
    @Default(null) int? selectedHeight,
    @Default(null) String? selectedJob,
    @Default(null) String? selectedLocation,
    @Default(null) HighestEducationEnum? selectedEducation, // 변경: Enum 타입 적용
    @Default(null) String? selectedFirstMbtiLetter,
    @Default(null) String? selectedSecondMbtiLetter,
    @Default(null) String? selectedThirdMbtiLetter,
    @Default(null) String? selectedFourthMbtiLetter,
    @Default(null) SmokingStatusEnum? selectedSmoking, // 변경: Enum 타입 적용
    @Default(null) DrinkingStatusEnum? selectedDrinking, // 변경: Enum 타입 적용
    @Default(null) ReligionEnum? selectedReligion, // 변경: Enum 타입 적용
    @Default(<String>[]) List<String> selectedHobbies,
  }) = _SignUpProcessState;

  const SignUpProcessState._();

  int? get yearOfBirth => selectedYear != null
      ? DateTimeUtil.calculateAge(yearOfBirth: selectedYear!)
      : null;

  String? get mbti => selectedFirstMbtiLetter != null &&
          selectedSecondMbtiLetter != null &&
          selectedThirdMbtiLetter != null &&
          selectedFourthMbtiLetter != null
      ? '$selectedFirstMbtiLetter$selectedSecondMbtiLetter$selectedThirdMbtiLetter$selectedFourthMbtiLetter'
      : null;

  List<String> get unwritten {
    final Map<String, dynamic> fields = {
      'selectedYear': selectedYear,
      'selectedHeight': selectedHeight,
      'selectedJob': selectedJob,
      'selectedLocation': selectedLocation,
      'selectedEducation': selectedEducation,
      'mbti': mbti,
      'selectedSmoking': selectedSmoking,
      'selectedDrinking': selectedDrinking,
      'selectedReligion': selectedReligion,
      'selectedHobbies': selectedHobbies.isEmpty ? null : selectedHobbies,
    };

    return fields.entries
        .where((entry) => entry.value == null)
        .map((entry) => entry.key)
        .toList();
  }

  bool get isSecondStepCompleted =>
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

  ProfileUploadRequest toProfileUploadRequest() {
    return ProfileUploadRequest(
      nickname: nickname ?? "",
      selectedGender: selectedGender.toBackendEnumKey(),
      yearOfBirth: selectedYear ?? 0,
      selectedHeight: selectedHeight ?? 0,
      // TODO: 나중에 디폴트 없애기
      region: selectedLocation != null
          ? cityNameToEnumKey[selectedLocation!] ?? "GANGNAM_GU"
          : "GANGNAM_GU",
      selectedEducation: selectedEducation?.toBackendEnumKey() ?? "OTHER",
      mbti: mbti ?? "",
      selectedSmoking: selectedSmoking?.toBackendEnumKey() ?? "NONE",
      selectedDrinking: selectedDrinking?.toBackendEnumKey() ?? "NONE",
      selectedReligion: selectedReligion?.toBackendEnumKey() ?? "NONE",
      selectedJob: jobLabelToEnumKey[selectedJob] ?? "OTHERS",
      selectedHobbies: selectedHobbies
          .map((hobby) => hobbyLabelToEnumKey[hobby] ?? "OTHERS")
          .toList(),
    );
  }

  // JSON 변환 메서드 추가
  factory SignUpProcessState.fromJson(Map<String, dynamic> json) =>
      _$SignUpProcessStateFromJson(json);
}
