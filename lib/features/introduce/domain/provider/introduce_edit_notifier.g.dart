// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'introduce_edit_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(IntroduceEditNotifier)
const introduceEditProvider = IntroduceEditNotifierProvider._();

final class IntroduceEditNotifierProvider
    extends $NotifierProvider<IntroduceEditNotifier, IntroduceEditState> {
  const IntroduceEditNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'introduceEditProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$introduceEditNotifierHash();

  @$internal
  @override
  IntroduceEditNotifier create() => IntroduceEditNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IntroduceEditState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IntroduceEditState>(value),
    );
  }
}

String _$introduceEditNotifierHash() =>
    r'a584c4c3ac54aa1f139b4914d2ed790981b98486';

abstract class _$IntroduceEditNotifier extends $Notifier<IntroduceEditState> {
  IntroduceEditState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<IntroduceEditState, IntroduceEditState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<IntroduceEditState, IntroduceEditState>,
              IntroduceEditState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
