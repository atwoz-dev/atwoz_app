import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_list_response.freezed.dart';
part 'introduce_list_response.g.dart';

@freezed
class IntroduceListItemResponse with _$IntroduceListItemResponse {
  const factory IntroduceListItemResponse({
    required String? nickname,
    required String? profileUrl,
    required int yearOfBirth,
    required String title,
    required int id,
  }) = _IntroduceListItemResponse;

  factory IntroduceListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroduceListItemResponseFromJson(json);

  const IntroduceListItemResponse._();
}

@freezed
class IntroduceListResponse with _$IntroduceListResponse {
  const factory IntroduceListResponse({
    required List<IntroduceListItemResponse> likes,
    required bool hasMore,
  }) = _IntroduceListResponse;

  factory IntroduceListResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroduceListResponseFromJson(json);
}
