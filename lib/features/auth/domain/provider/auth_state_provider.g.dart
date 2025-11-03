// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthState)
const authStateProvider = AuthStateProvider._();

final class AuthStateProvider
    extends $NotifierProvider<AuthState, AuthProcessState> {
  const AuthStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authStateHash();

  @$internal
  @override
  AuthState create() => AuthState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthProcessState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthProcessState>(value),
    );
  }
}

String _$authStateHash() => r'4df5ab7969f69f2c2cb829e3bd9331217dbc07a9';

abstract class _$AuthState extends $Notifier<AuthProcessState> {
  AuthProcessState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AuthProcessState, AuthProcessState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthProcessState, AuthProcessState>,
              AuthProcessState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
