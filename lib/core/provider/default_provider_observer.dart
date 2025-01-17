import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';

/// Provider의 생명주기 이벤트 및 상태 변화를 감지하고 디버그 로그를 출력하기 위한 클래스로,
/// /// ProviderObserver를 확장하여 상태 변경 및 에러를 로깅
class DefaultProviderObserver extends ProviderObserver {
  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    debugPrint("✨프로바이더 추가✨: ${provider.name ?? provider.runtimeType}");
    super.didAddProvider(provider, value, container);
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    debugPrint(
        "🔨프로바이더 업데이트🔨: ${provider.name ?? provider.runtimeType}, New value: $newValue");
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    debugPrint(
        "👋🏻프로바이더 삭제(dispose)👋🏻: ${provider.name ?? provider.runtimeType}");
    super.didDisposeProvider(provider, container);
  }

  // Provider에서 발생한 에러를 감지하여 로그 출력
  void logError(ProviderBase provider, Object error, StackTrace stackTrace) {
    debugPrint(
        "🐛프로바이더 에러🐛: ${provider.name ?? provider.runtimeType}, Error: $error");
    debugPrint("StackTrace: $stackTrace");
  }
}
