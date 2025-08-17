import 'package:atwoz_app/features/store/data/dto/heart_balance_response.dart';
import 'package:atwoz_app/features/store/data/repository/store_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeartBalanceFetchUseCase {
  final Ref ref;

  const HeartBalanceFetchUseCase(this.ref);

  Future<HeartBalanceItem> call() async {
    final response = await ref.read(storeRepositoryProvider).getHeartBalance();

    return response;
  }
}
