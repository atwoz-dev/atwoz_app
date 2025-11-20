// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_setting_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ContactSettingNotifier)
const contactSettingProvider = ContactSettingNotifierProvider._();

final class ContactSettingNotifierProvider
    extends $NotifierProvider<ContactSettingNotifier, ContactSettingState> {
  const ContactSettingNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contactSettingProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contactSettingNotifierHash();

  @$internal
  @override
  ContactSettingNotifier create() => ContactSettingNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContactSettingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContactSettingState>(value),
    );
  }
}

String _$contactSettingNotifierHash() =>
    r'69039176fd57e24686805c2c89fdecaf9514433f';

abstract class _$ContactSettingNotifier extends $Notifier<ContactSettingState> {
  ContactSettingState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ContactSettingState, ContactSettingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ContactSettingState, ContactSettingState>,
              ContactSettingState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
