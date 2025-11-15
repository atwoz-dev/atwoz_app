// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_process_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignUpProcessNotifier)
const signUpProcessProvider = SignUpProcessNotifierProvider._();

final class SignUpProcessNotifierProvider
    extends $NotifierProvider<SignUpProcessNotifier, SignUpProcessState> {
  const SignUpProcessNotifierProvider._()
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
  String debugGetCreateSourceHash() => _$signUpProcessNotifierHash();

  @$internal
  @override
  SignUpProcessNotifier create() => SignUpProcessNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignUpProcessState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignUpProcessState>(value),
    );
  }
}

String _$signUpProcessNotifierHash() =>
    r'6033666d60c2305b8eaaa0048d46e7b17cdd2c76';

abstract class _$SignUpProcessNotifier extends $Notifier<SignUpProcessState> {
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
