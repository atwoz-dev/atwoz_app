// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_manage_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileManageNotifier)
const profileManageProvider = ProfileManageNotifierProvider._();

final class ProfileManageNotifierProvider
    extends $AsyncNotifierProvider<ProfileManageNotifier, ProfileManageState> {
  const ProfileManageNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileManageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileManageNotifierHash();

  @$internal
  @override
  ProfileManageNotifier create() => ProfileManageNotifier();
}

String _$profileManageNotifierHash() =>
    r'90da5c1e11f88702ebf1d95767dfbda99a4cd1f2';

abstract class _$ProfileManageNotifier
    extends $AsyncNotifier<ProfileManageState> {
  FutureOr<ProfileManageState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<ProfileManageState>, ProfileManageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProfileManageState>, ProfileManageState>,
              AsyncValue<ProfileManageState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
