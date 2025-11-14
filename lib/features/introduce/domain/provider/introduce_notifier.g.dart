// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'introduce_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(IntroduceNotifier)
const introduceProvider = IntroduceNotifierProvider._();

final class IntroduceNotifierProvider
    extends $NotifierProvider<IntroduceNotifier, IntroduceState> {
  const IntroduceNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'introduceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$introduceNotifierHash();

  @$internal
  @override
  IntroduceNotifier create() => IntroduceNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IntroduceState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IntroduceState>(value),
    );
  }
}

String _$introduceNotifierHash() => r'6691451c26c8bb7a8f6e1c43dae18693c7aa65c8';

abstract class _$IntroduceNotifier extends $Notifier<IntroduceState> {
  IntroduceState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<IntroduceState, IntroduceState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<IntroduceState, IntroduceState>,
              IntroduceState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
