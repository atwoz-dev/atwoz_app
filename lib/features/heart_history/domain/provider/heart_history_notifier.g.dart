// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heart_history_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HeartHistoryNotifier)
const heartHistoryProvider = HeartHistoryNotifierProvider._();

final class HeartHistoryNotifierProvider
    extends $NotifierProvider<HeartHistoryNotifier, HeartHistoryState> {
  const HeartHistoryNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'heartHistoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$heartHistoryNotifierHash();

  @$internal
  @override
  HeartHistoryNotifier create() => HeartHistoryNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HeartHistoryState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HeartHistoryState>(value),
    );
  }
}

String _$heartHistoryNotifierHash() =>
    r'6cb8893bf630c20abccd0ed4c6836b357ef2d72b';

abstract class _$HeartHistoryNotifier extends $Notifier<HeartHistoryState> {
  HeartHistoryState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<HeartHistoryState, HeartHistoryState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<HeartHistoryState, HeartHistoryState>,
              HeartHistoryState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
