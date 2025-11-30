import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_list_response.freezed.dart';
part 'introduce_list_response.g.dart';

@freezed
abstract class IntroduceListResponse with _$IntroduceListResponse {
  const factory IntroduceListResponse({
    required int status,
    required String code,
    required String message,
    required List<IntroduceItem> data,
  }) = _IntroduceListResponse;

  factory IntroduceListResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroduceListResponseFromJson(json);
}

@freezed
abstract class IntroduceItem with _$IntroduceItem {
  const factory IntroduceItem({
    required int id,
    required int yearOfBirth,
    required String nickname,
    required String profileUrl,
    required String title,
    required String content,
    required String createdAt,
  }) = _IntroduceItem;

  factory IntroduceItem.fromJson(Map<String, dynamic> json) =>
      _$IntroduceItemFromJson(json);
}
