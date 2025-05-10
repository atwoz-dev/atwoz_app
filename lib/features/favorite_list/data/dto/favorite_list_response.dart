import 'package:atwoz_app/features/favorite_list/domain/provider/favorite_list_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_list_response.freezed.dart';
part 'favorite_list_response.g.dart';

@freezed
class FavoriteListResponse with _$FavoriteListResponse {
  const factory FavoriteListResponse({
    required int likeId,
    required int opponentId,
    required String profileImageUrl,
    required String nickname,
    required String? city,
    required int age,
    required bool isMutualLike,
    required DateTime createdAt,
  }) = _FavoriteListResponse;

  factory FavoriteListResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoriteListResponseFromJson(json);

  const FavoriteListResponse._();

  FavoriteUserSummary toModel() => FavoriteUserSummary(
        userId: opponentId,
        profileUrl: profileImageUrl,
        name: nickname,
        age: age,
        city: city ?? '',
        favoriteAt: createdAt,
        isMutual: isMutualLike,
      );
}
