// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationRepositoryHash() =>
    r'29e23cf32648903ee4d088629eaeb325b84542ba';

/// 알림 데이터를 관리하는 Riverpod 상태 관리 클래스를 정의
/// 유즈케이스를 호출하고, 알림 데이터를 전역적으로 관리
/// NotificationRepository를 Provider로 관리
///
/// Copied from [notificationRepository].
@ProviderFor(notificationRepository)
final notificationRepositoryProvider =
    Provider<NotificationRepository>.internal(
  notificationRepository,
  name: r'notificationRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$notificationRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NotificationRepositoryRef = ProviderRef<NotificationRepository>;
String _$fetchNotificationsUseCaseHash() =>
    r'd8172f931d52961583f6f2291240dc3c143b2280';

/// FetchNotificationsUseCase를 Provider로 관리
///
/// Copied from [fetchNotificationsUseCase].
@ProviderFor(fetchNotificationsUseCase)
final fetchNotificationsUseCaseProvider =
    Provider<NotificationFetchUseCase>.internal(
  fetchNotificationsUseCase,
  name: r'fetchNotificationsUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchNotificationsUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchNotificationsUseCaseRef = ProviderRef<NotificationFetchUseCase>;
String _$notificationDataNotifierHash() =>
    r'71dcd8463460176ff5f52120f12b8d95d87ec5e0';

/// 알림 데이터를 관리하는 상태(Provider)를 제공
///
/// Copied from [NotificationDataNotifier].
@ProviderFor(NotificationDataNotifier)
final notificationDataNotifierProvider = AsyncNotifierProvider<
    NotificationDataNotifier, List<NotificationModel>>.internal(
  NotificationDataNotifier.new,
  name: r'notificationDataNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$notificationDataNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NotificationDataNotifier = AsyncNotifier<List<NotificationModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
