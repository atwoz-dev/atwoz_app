import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_edit_state.dart';
import 'package:atwoz_app/features/introduce/domain/usecase/introduce_delete_use_case.dart';
import 'package:atwoz_app/features/introduce/domain/usecase/introduce_edit_use_case.dart';
import 'package:atwoz_app/features/introduce/domain/usecase/introduce_fetch_introduce_detail_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'introduce_edit_notifier.g.dart';

@Riverpod(keepAlive: false)
class IntroduceEditNotifier extends _$IntroduceEditNotifier {
  @override
  IntroduceEditState build() {
    return const IntroduceEditState();
  }

  void setTitle(String t) {
    final title = t.trim();
    state = state.copyWith(
      title: title,
      canSubmit:
          title.isNotEmpty &&
          (state.content != null && state.content!.isNotEmpty),
    );
  }

  void setContent(String t) {
    final content = t.trim();
    state = state.copyWith(
      content: content,
      canSubmit:
          content.isNotEmpty &&
          (state.title != null && state.title!.isNotEmpty),
    );
  }

  /// 셀프 소개 상세 조회
  Future<void> fetchIntroduceDetail({required int id}) async {
    try {
      final detail = await IntroduceFetchIntroduceDetailUseCase(
        ref,
      ).call(id: id);

      state = state.copyWith(title: detail.title, content: detail.content);
    } catch (e) {
      // TODO: 에러 발생 처리 어떻게???
      Log.e("Failed to fetch introduce detail from server: $e");
    }
  }

  /// 셀프 소개 수정
  Future<void> editIntroduce({
    required int id,
    required String title,
    required String content,
  }) async {
    try {
      await IntroduceEditUseCase(
        ref,
      ).call(id: id, title: title.trim(), content: content.trim());
    } catch (e) {
      // TODO: 에러 발생 처리 어떻게???
      Log.e("Failed to edit introduce to server: $e");
    }
  }

  /// 셀프 소개 삭제
  Future<void> deleteIntroduce({required int id}) async {
    try {
      await IntroduceDeleteUseCase(ref).call(id: id);
    } catch (e) {
      // TODO: 에러 발생 처리 어떻게???
      Log.e("Failed to delete introduce from server: $e");
    }
  }
}
