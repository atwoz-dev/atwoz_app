// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(InterviewNotifier)
const interviewProvider = InterviewNotifierProvider._();

final class InterviewNotifierProvider
    extends $NotifierProvider<InterviewNotifier, InterviewState> {
  const InterviewNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'interviewProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$interviewNotifierHash();

  @$internal
  @override
  InterviewNotifier create() => InterviewNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InterviewState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InterviewState>(value),
    );
  }
}

String _$interviewNotifierHash() => r'c4f713d809d994350763c9b9e41c3db8ff5de9a1';

abstract class _$InterviewNotifier extends $Notifier<InterviewState> {
  InterviewState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<InterviewState, InterviewState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<InterviewState, InterviewState>,
              InterviewState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
