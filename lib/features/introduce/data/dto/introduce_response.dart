import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_response.freezed.dart';
part 'introduce_response.g.dart';

@freezed
class IntroduceItemResponse with _$IntroduceItemResponse {
  const factory IntroduceItemResponse({
    required int likeId,
    required int opponentId,
    required String? profileImageUrl,
    required String? nickname,
    required String? city,
    required int age,
    required bool isMutualLike,
    required DateTime createdAt,
  }) = _IntroduceItemResponse;

  factory IntroduceItemResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroduceItemResponseFromJson(json);

  const IntroduceItemResponse._();
}

@freezed
class IntroduceResponse with _$IntroduceResponse {
  const factory IntroduceResponse({
    required List<IntroduceItemResponse> likes,
    required bool hasMore,
  }) = _IntroduceResponse;

  factory IntroduceResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroduceResponseFromJson(json);
}
