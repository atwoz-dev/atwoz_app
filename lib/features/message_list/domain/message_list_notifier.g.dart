// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MessageListNotifier)
const messageListProvider = MessageListNotifierProvider._();

final class MessageListNotifierProvider
    extends $NotifierProvider<MessageListNotifier, MessageListState> {
  const MessageListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'messageListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$messageListNotifierHash();

  @$internal
  @override
  MessageListNotifier create() => MessageListNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MessageListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MessageListState>(value),
    );
  }
}

String _$messageListNotifierHash() =>
    r'a0407d38f9cd85bb43662ec78cf4e9855d2b72d7';

abstract class _$MessageListNotifier extends $Notifier<MessageListState> {
  MessageListState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MessageListState, MessageListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MessageListState, MessageListState>,
              MessageListState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
