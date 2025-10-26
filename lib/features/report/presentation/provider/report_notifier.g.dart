// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReportNotifier)
const reportProvider = ReportNotifierFamily._();

final class ReportNotifierProvider
    extends $NotifierProvider<ReportNotifier, Report> {
  const ReportNotifierProvider._({
    required ReportNotifierFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'reportProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$reportNotifierHash();

  @override
  String toString() {
    return r'reportProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ReportNotifier create() => ReportNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Report value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Report>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ReportNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$reportNotifierHash() => r'8f2006b7c9be263e52a4700fa21afa8c4f95f9c0';

final class ReportNotifierFamily extends $Family
    with $ClassFamilyOverride<ReportNotifier, Report, Report, Report, int> {
  const ReportNotifierFamily._()
    : super(
        retry: null,
        name: r'reportProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ReportNotifierProvider call(int userId) =>
      ReportNotifierProvider._(argument: userId, from: this);

  @override
  String toString() => r'reportProvider';
}

abstract class _$ReportNotifier extends $Notifier<Report> {
  late final _$args = ref.$arg as int;
  int get userId => _$args;

  Report build(int userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<Report, Report>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Report, Report>,
              Report,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
