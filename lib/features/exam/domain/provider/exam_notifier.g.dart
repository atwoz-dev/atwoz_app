// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ExamNotifier)
const examProvider = ExamNotifierProvider._();

final class ExamNotifierProvider
    extends $NotifierProvider<ExamNotifier, ExamState> {
  const ExamNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'examProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$examNotifierHash();

  @$internal
  @override
  ExamNotifier create() => ExamNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ExamState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ExamState>(value),
    );
  }
}

String _$examNotifierHash() => r'1489a35a875606df4182c4c142b9c143e516b2fa';

abstract class _$ExamNotifier extends $Notifier<ExamState> {
  ExamState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ExamState, ExamState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ExamState, ExamState>,
              ExamState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
