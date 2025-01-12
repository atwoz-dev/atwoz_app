import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/auth/data/user_repository.dart';
import 'package:atwoz_app/core/storage/local_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'base_repository_provider.g.dart';

/// BaseRepositoryProvider는 리포지토리와 로컬 스토리지를 관리하는 추상 클래스입니다.
abstract class BaseRepositoryProvider<T extends BaseRepository> {
  final Ref ref; // Riverpod의 Ref 객체를 참조하여 상태를 관리합니다.

  const BaseRepositoryProvider(this.ref);

  /// 리포지토리의 메인 인스턴스를 제공합니다.
  T get repository => ref.read(resolveRepositoryProvider(T)) as T;

  /// 로컬 key-value 데이터베이스를 제공합니다.
  Future<LocalStorage> get storage => ref.read(localStorageProvider.future);
}

/// 제네릭 리포지토리 Provider
@riverpod
BaseRepository resolveRepository(Ref ref, Type type) {
  final repositoryMap = {
    UserRepository: () => UserRepository(ref),
    // 다른 리포지토리 타입을 추가로 정의할 수 있습니다.
  };
  if (repositoryMap.containsKey(type)) {
    return repositoryMap[type]!();
  }
  throw UnimplementedError('No implementation found for repository: $type');
}

/// LocalStorage Provider
@riverpod
Future<LocalStorage> localStorage(Ref ref) async {
  return LocalStorage.create();
}
