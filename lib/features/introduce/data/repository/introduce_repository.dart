import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/introduce/data/data.dart';
import 'package:atwoz_app/features/introduce/data/dto/introduce_detail_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final introduceRepositoryProvider = Provider<IntroduceRepository>((ref) {
  return IntroduceRepository(ref);
});

class IntroduceRepository extends BaseRepository {
  IntroduceRepository(Ref ref) : super(ref, '/self-introduction');

  /// 셀프 소개 목록 조회 api
  Future<List<IntroduceItem>> getIntroduceList({
    List<String>? preferredCities,
    int? fromAge,
    int? toAge,
    String? gender,
    int? lastId,
  }) async {
    try {
      final response = await apiService.getJson<Map<String, dynamic>>(
        path,
        queryParameters: {
          'preferredCities': ?preferredCities?.join(','),
          'fromAge': ?fromAge,
          'toAge': ?toAge,
          'gender': ?gender,
          'lastId': ?lastId,
        },
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
    await apiService.postJson(
      path,
      data: IntroduceAddRequest(
        title: title,
        content: content,
      ).toJson(),
    );
  }

  /// 셀프 소개 상세 조회 api
  Future<IntroduceDetailDTO> getIntroduceDetail({required int id}) async {
    final response = await apiService.getJson('$path/$id');
    final result = IntroduceDetailResponse.fromJson(response);
    return result.data;
  }

  /// 셀프 소개 삭제 api
  Future<void> deleteIntroduce({required int id}) async {
    final response = await apiService.deleteJson('$path/$id');
  }

  /// 셀프 소개 수정 api
  Future<void> patchIntroduce({
    required int id,
    required String title,
    required String content,
  }) async {
    final request = IntroduceUpdateRequest(title: title, content: content);

    await apiService.patchJson('$path/$id', data: request.toJson());
  }

  /// 자신의 셀프 소개 목록 조회 api
  Future<List<IntroduceItem>> getMyIntroduceList({int? lastId}) async {
    final response = await apiService.getJson(
      '$path/my',
      queryParameters: lastId != null ? {'lastId': lastId} : null,
    );

    final result = IntroduceListResponse.fromJson(response);
    return result.data;
  }
}
