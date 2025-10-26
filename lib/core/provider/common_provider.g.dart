// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// CommonNotifier - 공통 상태 관리 클래스

@ProviderFor(CommonNotifier)
const commonProvider = CommonNotifierProvider._();

/// CommonNotifier - 공통 상태 관리 클래스
final class CommonNotifierProvider
    extends $NotifierProvider<CommonNotifier, CommonState> {
  /// CommonNotifier - 공통 상태 관리 클래스
  const CommonNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'commonProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$commonNotifierHash();

  @$internal
  @override
  CommonNotifier create() => CommonNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CommonState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CommonState>(value),
    );
  }
}

String _$commonNotifierHash() => r'4f2686574fa4367fc5407d1e00f6e3a6accd53d7';

/// CommonNotifier - 공통 상태 관리 클래스

abstract class _$CommonNotifier extends $Notifier<CommonState> {
  CommonState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CommonState, CommonState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CommonState, CommonState>,
              CommonState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
