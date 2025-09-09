import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';

part 'exam_soulmate_response.freezed.dart';
part 'exam_soulmate_response.g.dart';

@freezed
class ExamSoulmateResponse with _$ExamSoulmateResponse {
  const factory ExamSoulmateResponse({
    required int status,
    required String code,
    required String message,
    required List<IntroducedProfileDto> data,
  }) = _ExamSoulmateResponse;

  factory ExamSoulmateResponse.fromJson(Map<String, dynamic> json) =>
      _$ExamSoulmateResponseFromJson(json);
}
