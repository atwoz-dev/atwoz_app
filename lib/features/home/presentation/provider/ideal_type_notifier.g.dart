// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ideal_type_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(IdealTypeNotifier)
const idealTypeProvider = IdealTypeNotifierProvider._();

final class IdealTypeNotifierProvider
    extends $AsyncNotifierProvider<IdealTypeNotifier, IdealType> {
  const IdealTypeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'idealTypeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$idealTypeNotifierHash();

  @$internal
  @override
  IdealTypeNotifier create() => IdealTypeNotifier();
}

String _$idealTypeNotifierHash() => r'9cd48e6d65a6a071ffed363744b4a6bb9aba1d30';

abstract class _$IdealTypeNotifier extends $AsyncNotifier<IdealType> {
  FutureOr<IdealType> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<IdealType>, IdealType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<IdealType>, IdealType>,
              AsyncValue<IdealType>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
