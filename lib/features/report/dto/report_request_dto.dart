import 'package:json_annotation/json_annotation.dart';

part 'report_request_dto.g.dart';

@JsonSerializable()
class ReportRequestDto {
  final int reporteeId;
  final String reason;
  final String content;

  const ReportRequestDto({
    required this.reporteeId,
    required this.reason,
    required this.content,
  });

  factory ReportRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ReportRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReportRequestDtoToJson(this);
}
