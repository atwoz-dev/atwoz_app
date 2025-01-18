import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:atwoz_app/features/auth/data/model/sign_up_process_state.dart';

part 'sign_up_process_provider.g.dart';

@Riverpod(keepAlive: false)
class SignUpProcess extends _$SignUpProcess {
  @override
  SignUpProcessState build() => const SignUpProcessState();

  void updateNickname(String nickname) {
    state = state.copyWith(
      nickname: nickname,
      error: nickname.isEmpty
          ? null
          : (nickname.length > 10 ? '닉네임은 10자 이하여야 합니다.' : null),
    );
  }

  void updateGender(String gender) {
    state = state.copyWith(selectedGender: gender);
  }

  void updateSelectedYear(int year) {
    state = state.copyWith(selectedYear: year);
  }

  void updateSelectedHeight(int height) {
    state = state.copyWith(selectedHeight: height);
  }

  void updateSelectedJob(String job) {
    state = state.copyWith(selectedJob: job);
  }

  void updateSelectedLocation(String location) {
    state = state.copyWith(selectedLocation: location);
  }

  void updateEducation(String education) {
    state = state.copyWith(selectedEducation: education);
  }

  void updateFirstMbtiLetter(String letter) {
    state = state.copyWith(selectedFirstMbtiLetter: letter);
  }

  void updateSecondMbtiLetter(String letter) {
    state = state.copyWith(selectedSecondMbtiLetter: letter);
  }

  void updateThirdMbtiLetter(String letter) {
    state = state.copyWith(selectedThirdMbtiLetter: letter);
  }

  void updateFourthMbtiLetter(String letter) {
    state = state.copyWith(selectedFourthMbtiLetter: letter);
  }

  void updateSmoking(String smoking) {
    state = state.copyWith(selectedSmoking: smoking);
  }

  void updateDrinking(String drinking) {
    state = state.copyWith(selectedDrinking: drinking);
  }

  void updateReligion(String religion) {
    state = state.copyWith(selectedReligion: religion);
  }

  void updateHobbies(List<String> hobbies) {
    state = state.copyWith(selectedHobbies: hobbies);
  }

  void reset() {
    state = const SignUpProcessState();
  }

  String? get selectedLocation => state.selectedLocation;
  int? get selectedYear => state.selectedYear;
  int? get selectedHeight => state.selectedHeight;
  String? get selectedJob => state.selectedJob;
  String? get selectedEducation => state.selectedEducation;
  String? get selectedFirstMbtiLetter => state.selectedFirstMbtiLetter;
  String? get selectedSecondMbtiLetter => state.selectedSecondMbtiLetter;
  String? get selectedThirdMbtiLetter => state.selectedThirdMbtiLetter;
  String? get selectedFourthMbtiLetter => state.selectedFourthMbtiLetter;
  String? get selectedSmoking => state.selectedSmoking;
  String? get selectedDrinking => state.selectedDrinking;
  String? get selectedReligion => state.selectedReligion;
  List<String>? get selectedHobbies => state.selectedHobbies;
}
