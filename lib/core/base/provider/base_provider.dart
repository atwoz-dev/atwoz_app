import 'package:atwoz_app/core/base/repository/base_repository.dart';
import 'package:atwoz_app/data/repositories/user_repository.dart';
import 'package:atwoz_app/data/sources/local/local_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// BaseProvider는 리포지토리와 로컬 스토리지를 관리하는 추상 클래스입니다.
abstract class BaseProvider<T extends BaseRepository> {
  final Ref ref; // Riverpod의 Ref 객체를 참조하여 상태를 관리합니다.

  const BaseProvider(this.ref);

  /// 리포지토리의 메인 인스턴스를 제공합니다.
  T get repository => ref.read(repositoryProvider(T)) as T;

  /// 로컬 key-value 데이터베이스를 제공합니다.
  Future<LocalStorage> get storage => ref.read(localStorageProvider.future);
}

/// 제네릭 리포지토리 Provider
final repositoryProvider = Provider.family<BaseRepository, Type>((ref, type) {
  // 리포지토리 타입이 UserRepository인 경우 해당 인스턴스를 반환합니다.
  if (type == UserRepository) {
    return UserRepository(ref); // UserRepository 인스턴스를 생성 및 반환합니다.
  }
  // 다른 리포지토리 타입에 대한 조건을 추가로 정의할 수 있습니다.
  throw UnimplementedError('No implementation found for repository: $type');
  // 리포지토리를 찾지 못했을 경우 에러를 발생시킵니다.
});

/// LocalStorage Provider
final localStorageProvider = FutureProvider<LocalStorage>((ref) async {
  // LocalStorage를 생성하여 반환합니다.
  return LocalStorage.create();
});
