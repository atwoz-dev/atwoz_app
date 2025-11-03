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
    extends
        $NotifierProvider<ProfileImageUpdateNotifier, ProfileImageUpdateState> {
  const ProfileImageUpdateNotifierProvider._({
    required ProfileImageUpdateNotifierFamily super.from,
    required List<EditableProfileImage?> super.argument,
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
  Override overrideWithValue(ProfileImageUpdateState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileImageUpdateState>(value),
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
    r'5b51ef83125440fb313aa2624a704e962c19437c';

final class ProfileImageUpdateNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ProfileImageUpdateNotifier,
          ProfileImageUpdateState,
          ProfileImageUpdateState,
          ProfileImageUpdateState,
          List<EditableProfileImage?>
        > {
  const ProfileImageUpdateNotifierFamily._()
    : super(
        retry: null,
        name: r'profileImageUpdateProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  ProfileImageUpdateNotifierProvider call(
    List<EditableProfileImage?> editableProfileImages,
  ) => ProfileImageUpdateNotifierProvider._(
    argument: editableProfileImages,
    from: this,
  );

  @override
  String toString() => r'profileImageUpdateProvider';
}

abstract class _$ProfileImageUpdateNotifier
    extends $Notifier<ProfileImageUpdateState> {
  late final _$args = ref.$arg as List<EditableProfileImage?>;
  List<EditableProfileImage?> get editableProfileImages => _$args;

  ProfileImageUpdateState build(
    List<EditableProfileImage?> editableProfileImages,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<ProfileImageUpdateState, ProfileImageUpdateState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProfileImageUpdateState, ProfileImageUpdateState>,
              ProfileImageUpdateState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
