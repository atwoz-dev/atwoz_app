import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/introduce/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final introduceRepositoryProvider = Provider<IntroduceRepository>((ref) {
  return IntroduceRepository(ref);
});

class IntroduceRepository extends BaseRepository {
  IntroduceRepository(Ref ref) : super(ref, "/self-introduction");

  /// 셀프 소개 목록 조회 api
  Future<List<IntroduceItem>> getIntroduceList({
    List<String>? preferredCities,
    int? fromAge,
    int? toAge,
    String? gender,
    int? lastId,
  }) async {
    try {
      Map<String, dynamic> queryParameters = {};

      if (preferredCities != null && preferredCities.isNotEmpty) {
        queryParameters["preferredCities"] = preferredCities.join(",");
      }

      if (fromAge != null) {
        queryParameters["fromAge"] = fromAge;
      }

      if (toAge != null) {
        queryParameters["toAge"] = toAge;
      }

      if (gender != null) {
        queryParameters["gender"] = gender;
      }

      if (lastId != null) {
        queryParameters["lastId"] = lastId;
      }

      final response = await apiService.getJson<Map<String, dynamic>>(
        path,
        queryParameters: queryParameters,
      );

      final result = IntroduceListResponse.fromJson(response);
      return result.data;
    } catch (e) {
      Log.e(e);
      return [];
    }
  }

  /// 셀프 소개 작성 api
  Future<void> addIntroduce({
    required String title,
    required String content,
  }) async {
    final request = IntroduceAddRequest(title: title, content: content);

    await apiService.postJson(path, data: request.toJson());
  }

  /// 셀프 소개 상세 조회 api
  Future<void> getIntroduceDetail({required int id}) async {
    await apiService.getJson("$path/$id");
  }

  /// 셀프 소개 삭제 api
  Future<void> deleteIntroduce({required int id}) async {
    await apiService.deleteJson("$path/$id");
  }

  /// 셀프 소개 수정 api
  Future<void> updateIntroduce({
    required int id,
    required String title,
    required String content,
  }) async {
    final request = IntroduceUpdateRequest(title: title, content: content);

    await apiService.patchJson("$path/$id", data: request.toJson());
  }

  /// 자신의 셀프 소개 목록 조회 api
  Future<void> getMyIntroduceList({required int lastId}) async {
    final request = IntroduceMyListRequest(lastId: lastId);

    await apiService.postJson("$path/my", data: request.toJson());
  }
}
