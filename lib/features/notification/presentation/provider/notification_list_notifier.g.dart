// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationListNotifier)
const notificationListProvider = NotificationListNotifierProvider._();

final class NotificationListNotifierProvider
    extends
        $AsyncNotifierProvider<
          NotificationListNotifier,
          NotificationListState
        > {
  const NotificationListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationListNotifierHash();

  @$internal
  @override
  NotificationListNotifier create() => NotificationListNotifier();
}

String _$notificationListNotifierHash() =>
    r'06f357e6717c12cca557ef8b334c9a1223ae7311';

abstract class _$NotificationListNotifier
    extends $AsyncNotifier<NotificationListState> {
  FutureOr<NotificationListState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<NotificationListState>, NotificationListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<NotificationListState>,
                NotificationListState
              >,
              AsyncValue<NotificationListState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
