// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_process_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignUpProcess)
const signUpProcessProvider = SignUpProcessProvider._();

final class SignUpProcessProvider
    extends $NotifierProvider<SignUpProcess, SignUpProcessState> {
  const SignUpProcessProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signUpProcessProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signUpProcessHash();

  @$internal
  @override
  SignUpProcess create() => SignUpProcess();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignUpProcessState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignUpProcessState>(value),
    );
  }
}

String _$signUpProcessHash() => r'41d999fa4783424f62b29c69e9548518eb487683';

abstract class _$SignUpProcess extends $Notifier<SignUpProcessState> {
  SignUpProcessState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SignUpProcessState, SignUpProcessState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SignUpProcessState, SignUpProcessState>,
              SignUpProcessState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
