// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'introduced_profiles_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(IntroducedProfilesNotifier)
const introducedProfilesProvider = IntroducedProfilesNotifierFamily._();

final class IntroducedProfilesNotifierProvider
    extends
        $AsyncNotifierProvider<
          IntroducedProfilesNotifier,
          List<IntroducedProfile>
        > {
  const IntroducedProfilesNotifierProvider._({
    required IntroducedProfilesNotifierFamily super.from,
    required IntroducedCategory super.argument,
  }) : super(
         retry: null,
         name: r'introducedProfilesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$introducedProfilesNotifierHash();

  @override
  String toString() {
    return r'introducedProfilesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  IntroducedProfilesNotifier create() => IntroducedProfilesNotifier();

  @override
  bool operator ==(Object other) {
    return other is IntroducedProfilesNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$introducedProfilesNotifierHash() =>
    r'd1a60c19faa75370952c887a820ebbc36a841704';

final class IntroducedProfilesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          IntroducedProfilesNotifier,
          AsyncValue<List<IntroducedProfile>>,
          List<IntroducedProfile>,
          FutureOr<List<IntroducedProfile>>,
          IntroducedCategory
        > {
  const IntroducedProfilesNotifierFamily._()
    : super(
        retry: null,
        name: r'introducedProfilesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  IntroducedProfilesNotifierProvider call(IntroducedCategory category) =>
      IntroducedProfilesNotifierProvider._(argument: category, from: this);

  @override
  String toString() => r'introducedProfilesProvider';
}

abstract class _$IntroducedProfilesNotifier
    extends $AsyncNotifier<List<IntroducedProfile>> {
  late final _$args = ref.$arg as IntroducedCategory;
  IntroducedCategory get category => _$args;

  FutureOr<List<IntroducedProfile>> build(IntroducedCategory category);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<IntroducedProfile>>,
              List<IntroducedProfile>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<IntroducedProfile>>,
                List<IntroducedProfile>
              >,
              AsyncValue<List<IntroducedProfile>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
