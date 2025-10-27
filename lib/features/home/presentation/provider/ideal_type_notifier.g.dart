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
    extends $AsyncNotifierProvider<IdealTypeNotifier, IdealTypeState> {
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

String _$idealTypeNotifierHash() => r'3f5a914a6749fe97828481d81d78cd9886e7eff9';

abstract class _$IdealTypeNotifier extends $AsyncNotifier<IdealTypeState> {
  FutureOr<IdealTypeState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<IdealTypeState>, IdealTypeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<IdealTypeState>, IdealTypeState>,
              AsyncValue<IdealTypeState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
