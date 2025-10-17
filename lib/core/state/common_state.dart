import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_state.freezed.dart';

/// 상태 정의
@freezed
abstract class CommonState with _$CommonState {
  const factory CommonState.initial() = _Initial; // 초기 상태
  const factory CommonState.loading() = _Loading; // 로딩 상태
  const factory CommonState.success() = _Success; // 성공 상테
  const factory CommonState.error([Exception? exception]) = _Error; // 에러 상태

  const CommonState._(); // Freezed에서 private constructor를 생성합니다.

  // isLoading Getter 추가
  bool get isLoading => this is _Loading;
}
