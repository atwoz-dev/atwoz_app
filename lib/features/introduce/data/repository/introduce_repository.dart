import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/core/util/string_extension.dart';
import 'package:atwoz_app/features/favorite_list/data/dto/favorite_list_response.dart';
import 'package:atwoz_app/features/favorite_list/domain/provider/favorite_list_state.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteRepositoryProvider = Provider<SelfIntroductionRepository>((ref) {
  return SelfIntroductionRepository(ref);
});

class SelfIntroductionRepository extends BaseRepository {
  SelfIntroductionRepository(Ref ref) : super(ref, '/self-introduction');

  Future<void> writeSelfIntroduction(String title, String content) async {
    await apiService.postJson(
      path,
      data: {'title': title, 'content': content},
    );
  }

  Future<void> getSelfIntroduction(int? lastId, int fromAge, int toAge,
      GenderEnum gender, List<String> preferredCities) async {
    Map<String, dynamic> queryParameters = {};
    if (lastId != null) {
      queryParameters['lastLikeId'] = lastId;
    }
    queryParameters['gender'] = gender.name.camelCaseToSnakeCase();
    queryParameters['fromAge'] = fromAge;
    queryParameters['toAge'] = toAge;
    queryParameters['preferredCities'] = preferredCities;

    final res = await apiService.getJson(path, queryParameters: queryParameters);
    
  }

  Future<FavoriteListData> getMyFavoriteUserList([
    int? lastId,
  ]) async {
    final res = await apiService.getJson(
      '$path/sent',
      queryParameters: lastId != null ? {'lastLikeId': lastId} : null,
    );
    return _parseFavoriteList(res);
  }

  Future<FavoriteListData> getUserListFavoriteMe([
    int? lastId,
  ]) async {
    final res = await apiService.getJson(
      '$path/received',
      queryParameters: lastId != null ? {'lastLikeId': lastId} : null,
    );
    return _parseFavoriteList(res);
  }

  FavoriteListData _parseFavoriteList(dynamic res) {
    if (res is! Map<String, dynamic> || res['data'] is! Map<String, dynamic>) {
      Log.e('data type is not Map $res');
      throw Exception();
    }

    final response = FavoriteListResponse.fromJson(res['data']);
    return FavoriteListData(
      users: response.likes.map((e) => e.toModel()).toList(),
      hasMore: response.hasMore,
    );
  }
}
