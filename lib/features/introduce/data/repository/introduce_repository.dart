import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/core/util/string_extension.dart';
import 'package:atwoz_app/features/introduce/data/dto/introduce_list_response.dart';
import 'package:atwoz_app/features/introduce/domain/provider/self_introduce_state.dart';
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

  Future<List<SelfIntroduceListData>> getSelfIntroductionList(
      int? lastId,
      int fromAge,
      int toAge,
      GenderEnum gender,
      List<String> preferredCities) async {
    Map<String, dynamic> queryParameters = {};
    if (lastId != null) {
      queryParameters['lastLikeId'] = lastId;
    }
    queryParameters['gender'] = gender.name.camelCaseToSnakeCase();
    queryParameters['fromAge'] = fromAge;
    queryParameters['toAge'] = toAge;
    queryParameters['preferredCities'] = preferredCities;

    final res =
        await apiService.getJson(path, queryParameters: queryParameters);

    final data = res['data'];
    if (data is! List<Map<String, dynamic>>) {
      Log.e('응답 형식 오류: data 필드가 리스트 아님');
      throw const FormatException('응답 형식이 올바르지 않습니다');
    }

    return data
        .map(IntroduceListItemResponse.fromJson)
        .map((e) => e.toModel())
        .toList();
  }

  // 셀프 소개 삭제 API
  Future<void> deleteSelfIntroduction(int id) async {
    await apiService.deleteJson('$path/$id');
  }

  // 셀프 소개 수정 API
  Future<void> updateSelfIntroduction(
      int id, String title, String content) async {
    await apiService.patchJson('$path/$id',
        queryParameters: {'title': title, 'content': content});
  }

  // 셀프 소개 상세 조회
  Future<SelfIntroduceDetailData> getSelfIntroductionDetail(
      int id, String title, String content) async {
    final res = await apiService.getJson('$path/$id');
    return _parseSelfIntroduceDetail(res);
  }

  SelfIntroduceDetailData _parseSelfIntroduceDetail(dynamic res) {
    if (res is! Map<String, dynamic> || res['data'] is! Map<String, dynamic>) {
      Log.e('data type is not Map $res');
      throw Exception();
    }
    final response = IntroduceResponse.fromJson(res['data']);
    return SelfIntroduceDetailData(
      like: response.like,
      title: response.title,
      content: response.content,
      profileExchangeStatus: response.profileExchangeStatus,
      memberBasicInfo: response.memberBasicInfo.toModel(),
    );
  }
}
