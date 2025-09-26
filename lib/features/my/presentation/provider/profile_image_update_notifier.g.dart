// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_image_update_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileImageUpdateNotifierHash() =>
    r'5b51ef83125440fb313aa2624a704e962c19437c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ProfileImageUpdateNotifier
    extends BuildlessNotifier<ProfileImageUpdateState> {
  late final List<EditableProfileImage?> editableProfileImages;

  ProfileImageUpdateState build(
    List<EditableProfileImage?> editableProfileImages,
  );
}

/// See also [ProfileImageUpdateNotifier].
@ProviderFor(ProfileImageUpdateNotifier)
const profileImageUpdateNotifierProvider = ProfileImageUpdateNotifierFamily();

/// See also [ProfileImageUpdateNotifier].
class ProfileImageUpdateNotifierFamily extends Family<ProfileImageUpdateState> {
  /// See also [ProfileImageUpdateNotifier].
  const ProfileImageUpdateNotifierFamily();

  /// See also [ProfileImageUpdateNotifier].
  ProfileImageUpdateNotifierProvider call(
    List<EditableProfileImage?> editableProfileImages,
  ) {
    return ProfileImageUpdateNotifierProvider(
      editableProfileImages,
    );
  }

  @override
  ProfileImageUpdateNotifierProvider getProviderOverride(
    covariant ProfileImageUpdateNotifierProvider provider,
  ) {
    return call(
      provider.editableProfileImages,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'profileImageUpdateNotifierProvider';
}

/// See also [ProfileImageUpdateNotifier].
class ProfileImageUpdateNotifierProvider extends NotifierProviderImpl<
    ProfileImageUpdateNotifier, ProfileImageUpdateState> {
  /// See also [ProfileImageUpdateNotifier].
  ProfileImageUpdateNotifierProvider(
    List<EditableProfileImage?> editableProfileImages,
  ) : this._internal(
          () => ProfileImageUpdateNotifier()
            ..editableProfileImages = editableProfileImages,
          from: profileImageUpdateNotifierProvider,
          name: r'profileImageUpdateNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileImageUpdateNotifierHash,
          dependencies: ProfileImageUpdateNotifierFamily._dependencies,
          allTransitiveDependencies:
              ProfileImageUpdateNotifierFamily._allTransitiveDependencies,
          editableProfileImages: editableProfileImages,
        );

  ProfileImageUpdateNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.editableProfileImages,
  }) : super.internal();

  final List<EditableProfileImage?> editableProfileImages;

  @override
  ProfileImageUpdateState runNotifierBuild(
    covariant ProfileImageUpdateNotifier notifier,
  ) {
    return notifier.build(
      editableProfileImages,
    );
  }

  @override
  Override overrideWith(ProfileImageUpdateNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileImageUpdateNotifierProvider._internal(
        () => create()..editableProfileImages = editableProfileImages,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        editableProfileImages: editableProfileImages,
      ),
    );
  }

  @override
  NotifierProviderElement<ProfileImageUpdateNotifier, ProfileImageUpdateState>
      createElement() {
    return _ProfileImageUpdateNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileImageUpdateNotifierProvider &&
        other.editableProfileImages == editableProfileImages;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, editableProfileImages.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfileImageUpdateNotifierRef
    on NotifierProviderRef<ProfileImageUpdateState> {
  /// The parameter `editableProfileImages` of this provider.
  List<EditableProfileImage?> get editableProfileImages;
}

class _ProfileImageUpdateNotifierProviderElement
    extends NotifierProviderElement<ProfileImageUpdateNotifier,
        ProfileImageUpdateState> with ProfileImageUpdateNotifierRef {
  _ProfileImageUpdateNotifierProviderElement(super.provider);

  @override
  List<EditableProfileImage?> get editableProfileImages =>
      (origin as ProfileImageUpdateNotifierProvider).editableProfileImages;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
