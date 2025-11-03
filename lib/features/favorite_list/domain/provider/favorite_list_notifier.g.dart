// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FavoriteListNotifier)
const favoriteListProvider = FavoriteListNotifierProvider._();

final class FavoriteListNotifierProvider
    extends $NotifierProvider<FavoriteListNotifier, FavoriteListState> {
  const FavoriteListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoriteListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoriteListNotifierHash();

  @$internal
  @override
  FavoriteListNotifier create() => FavoriteListNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoriteListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FavoriteListState>(value),
    );
  }
}

String _$favoriteListNotifierHash() =>
    r'b03e6a35c703b4d8f379ee745d21cc653b30b1fd';

abstract class _$FavoriteListNotifier extends $Notifier<FavoriteListState> {
  FavoriteListState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FavoriteListState, FavoriteListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FavoriteListState, FavoriteListState>,
              FavoriteListState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
