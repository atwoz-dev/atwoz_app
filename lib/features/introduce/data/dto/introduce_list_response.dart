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
    required List<String> preferredCities,
    required int fromAge,
    required int toAge,
    required String gender,
    required int lastId,
  }) = _IntroduceItem;

  factory IntroduceItem.fromJson(Map<String, dynamic> json) =>
      _$IntroduceItemFromJson(json);
}
