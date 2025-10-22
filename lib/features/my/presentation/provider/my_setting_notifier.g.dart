// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_setting_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MySettingNotifier)
const mySettingProvider = MySettingNotifierProvider._();

final class MySettingNotifierProvider
    extends $AsyncNotifierProvider<MySettingNotifier, MySettings> {
  const MySettingNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mySettingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mySettingNotifierHash();

  @$internal
  @override
  MySettingNotifier create() => MySettingNotifier();
}

String _$mySettingNotifierHash() => r'87f3eb7cba5ca92781e0aba5bb58a9851b55f414';

abstract class _$MySettingNotifier extends $AsyncNotifier<MySettings> {
  FutureOr<MySettings> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<MySettings>, MySettings>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MySettings>, MySettings>,
              AsyncValue<MySettings>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
