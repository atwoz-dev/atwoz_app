import 'package:deepple_app/app/constants/region_data.dart';
import 'package:deepple_app/features/favorite_list/domain/provider/favorite_list_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_list_response.freezed.dart';
part 'favorite_list_response.g.dart';

@freezed
abstract class FavoriteListItemResponse with _$FavoriteListItemResponse {
  const factory FavoriteListItemResponse({
    required int likeId,
    required int opponentId,
    required String? profileImageUrl,
    required String? nickname,
    required String? city,
    required int age,
    required bool isMutualLike,
    required DateTime createdAt,
  }) = _FavoriteListItemResponse;

  factory FavoriteListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoriteListItemResponseFromJson(json);

  const FavoriteListItemResponse._();

  FavoriteUserSummary toModel() => FavoriteUserSummary(
    userId: opponentId,
    // TODO(Han): server 데이터 정합성 확보 후 non-nullable 하도록 수정
    profileUrl: profileImageUrl ?? '',
    name: nickname ?? '',
    city: addressData.getLocationString(city ?? 'SEOUL', null),
    age: age,
    favoriteAt: createdAt,
    isMutual: isMutualLike,
  );
}

@freezed
abstract class FavoriteListResponse with _$FavoriteListResponse {
  const factory FavoriteListResponse({
    required List<FavoriteListItemResponse> likes,
    required bool hasMore,
  }) = _FavoriteListResponse;

  factory FavoriteListResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoriteListResponseFromJson(json);
}
