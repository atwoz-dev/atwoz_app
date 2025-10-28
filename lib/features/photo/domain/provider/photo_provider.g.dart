// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Photo)
const photoProvider = PhotoProvider._();

final class PhotoProvider extends $NotifierProvider<Photo, List<XFile?>> {
  const PhotoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'photoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$photoHash();

  @$internal
  @override
  Photo create() => Photo();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<XFile?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<XFile?>>(value),
    );
  }
}

String _$photoHash() => r'29bb707c50381e07e53671997c785cb84a7be058';

abstract class _$Photo extends $Notifier<List<XFile?>> {
  List<XFile?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<XFile?>, List<XFile?>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<XFile?>, List<XFile?>>,
              List<XFile?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
