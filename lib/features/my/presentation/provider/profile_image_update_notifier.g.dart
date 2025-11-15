// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_image_update_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileImageUpdateNotifier)
const profileImageUpdateProvider = ProfileImageUpdateNotifierFamily._();

final class ProfileImageUpdateNotifierProvider
    extends $NotifierProvider<ProfileImageUpdateNotifier, List<ProfilePhoto>> {
  const ProfileImageUpdateNotifierProvider._({
    required ProfileImageUpdateNotifierFamily super.from,
    required List<ProfilePhoto> super.argument,
  }) : super(
         retry: null,
         name: r'profileImageUpdateProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$profileImageUpdateNotifierHash();

  @override
  String toString() {
    return r'profileImageUpdateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ProfileImageUpdateNotifier create() => ProfileImageUpdateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<ProfilePhoto> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<ProfilePhoto>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileImageUpdateNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$profileImageUpdateNotifierHash() =>
    r'479e8f3fc46e4a53fb3cf90091c2e6d2948d8054';

final class ProfileImageUpdateNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ProfileImageUpdateNotifier,
          List<ProfilePhoto>,
          List<ProfilePhoto>,
          List<ProfilePhoto>,
          List<ProfilePhoto>
        > {
  const ProfileImageUpdateNotifierFamily._()
    : super(
        retry: null,
        name: r'profileImageUpdateProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  ProfileImageUpdateNotifierProvider call(List<ProfilePhoto> profilePhotos) =>
      ProfileImageUpdateNotifierProvider._(argument: profilePhotos, from: this);

  @override
  String toString() => r'profileImageUpdateProvider';
}

abstract class _$ProfileImageUpdateNotifier
    extends $Notifier<List<ProfilePhoto>> {
  late final _$args = ref.$arg as List<ProfilePhoto>;
  List<ProfilePhoto> get profilePhotos => _$args;

  List<ProfilePhoto> build(List<ProfilePhoto> profilePhotos);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<List<ProfilePhoto>, List<ProfilePhoto>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<ProfilePhoto>, List<ProfilePhoto>>,
              List<ProfilePhoto>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
