// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FilterNotifier)
const filterProvider = FilterNotifierProvider._();

final class FilterNotifierProvider
    extends $NotifierProvider<FilterNotifier, FilterState> {
  const FilterNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filterNotifierHash();

  @$internal
  @override
  FilterNotifier create() => FilterNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FilterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FilterState>(value),
    );
  }
}

String _$filterNotifierHash() => r'1e7745905e3b30b04bd8549de2e3f0e481137b5c';

abstract class _$FilterNotifier extends $Notifier<FilterState> {
  FilterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FilterState, FilterState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FilterState, FilterState>,
              FilterState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
