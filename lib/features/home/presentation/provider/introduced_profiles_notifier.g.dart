// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'introduced_profiles_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$introducedProfilesNotifierHash() =>
    r'8d4d4756d01b1b74e4704050635ea86e9d4512b4';

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

abstract class _$IntroducedProfilesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<IntroducedProfile>> {
  late final IntroducedCategory category;

  FutureOr<List<IntroducedProfile>> build(
    IntroducedCategory category,
  );
}

/// See also [IntroducedProfilesNotifier].
@ProviderFor(IntroducedProfilesNotifier)
const introducedProfilesNotifierProvider = IntroducedProfilesNotifierFamily();

/// See also [IntroducedProfilesNotifier].
class IntroducedProfilesNotifierFamily
    extends Family<AsyncValue<List<IntroducedProfile>>> {
  /// See also [IntroducedProfilesNotifier].
  const IntroducedProfilesNotifierFamily();

  /// See also [IntroducedProfilesNotifier].
  IntroducedProfilesNotifierProvider call(
    IntroducedCategory category,
  ) {
    return IntroducedProfilesNotifierProvider(
      category,
    );
  }

  @override
  IntroducedProfilesNotifierProvider getProviderOverride(
    covariant IntroducedProfilesNotifierProvider provider,
  ) {
    return call(
      provider.category,
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
  String? get name => r'introducedProfilesNotifierProvider';
}

/// See also [IntroducedProfilesNotifier].
class IntroducedProfilesNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<IntroducedProfilesNotifier,
        List<IntroducedProfile>> {
  /// See also [IntroducedProfilesNotifier].
  IntroducedProfilesNotifierProvider(
    IntroducedCategory category,
  ) : this._internal(
          () => IntroducedProfilesNotifier()..category = category,
          from: introducedProfilesNotifierProvider,
          name: r'introducedProfilesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$introducedProfilesNotifierHash,
          dependencies: IntroducedProfilesNotifierFamily._dependencies,
          allTransitiveDependencies:
              IntroducedProfilesNotifierFamily._allTransitiveDependencies,
          category: category,
        );

  IntroducedProfilesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
  }) : super.internal();

  final IntroducedCategory category;

  @override
  FutureOr<List<IntroducedProfile>> runNotifierBuild(
    covariant IntroducedProfilesNotifier notifier,
  ) {
    return notifier.build(
      category,
    );
  }

  @override
  Override overrideWith(IntroducedProfilesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: IntroducedProfilesNotifierProvider._internal(
        () => create()..category = category,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<IntroducedProfilesNotifier,
      List<IntroducedProfile>> createElement() {
    return _IntroducedProfilesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IntroducedProfilesNotifierProvider &&
        other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IntroducedProfilesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<IntroducedProfile>> {
  /// The parameter `category` of this provider.
  IntroducedCategory get category;
}

class _IntroducedProfilesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<IntroducedProfilesNotifier,
        List<IntroducedProfile>> with IntroducedProfilesNotifierRef {
  _IntroducedProfilesNotifierProviderElement(super.provider);

  @override
  IntroducedCategory get category =>
      (origin as IntroducedProfilesNotifierProvider).category;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
