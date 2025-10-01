// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reportNotifierHash() => r'8ad3f24996794f08ae97c44309f59801da309192';

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

abstract class _$ReportNotifier extends BuildlessAutoDisposeNotifier<Report> {
  late final int userId;

  Report build(
    int userId,
  );
}

/// See also [ReportNotifier].
@ProviderFor(ReportNotifier)
const reportNotifierProvider = ReportNotifierFamily();

/// See also [ReportNotifier].
class ReportNotifierFamily extends Family<Report> {
  /// See also [ReportNotifier].
  const ReportNotifierFamily();

  /// See also [ReportNotifier].
  ReportNotifierProvider call(
    int userId,
  ) {
    return ReportNotifierProvider(
      userId,
    );
  }

  @override
  ReportNotifierProvider getProviderOverride(
    covariant ReportNotifierProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'reportNotifierProvider';
}

/// See also [ReportNotifier].
class ReportNotifierProvider
    extends AutoDisposeNotifierProviderImpl<ReportNotifier, Report> {
  /// See also [ReportNotifier].
  ReportNotifierProvider(
    int userId,
  ) : this._internal(
          () => ReportNotifier()..userId = userId,
          from: reportNotifierProvider,
          name: r'reportNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$reportNotifierHash,
          dependencies: ReportNotifierFamily._dependencies,
          allTransitiveDependencies:
              ReportNotifierFamily._allTransitiveDependencies,
          userId: userId,
        );

  ReportNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final int userId;

  @override
  Report runNotifierBuild(
    covariant ReportNotifier notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(ReportNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ReportNotifierProvider._internal(
        () => create()..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ReportNotifier, Report> createElement() {
    return _ReportNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReportNotifierProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ReportNotifierRef on AutoDisposeNotifierProviderRef<Report> {
  /// The parameter `userId` of this provider.
  int get userId;
}

class _ReportNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<ReportNotifier, Report>
    with ReportNotifierRef {
  _ReportNotifierProviderElement(super.provider);

  @override
  int get userId => (origin as ReportNotifierProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
