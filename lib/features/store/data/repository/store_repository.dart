import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/store/data/dto/verify_receipt_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final storeRepositoryProvider = Provider<StoreRepository>((ref) {
  return StoreRepository(ref);
});

class StoreRepository extends BaseRepository {
  StoreRepository(Ref ref) : super(ref, '/payment');

  /// 영수증 검증 API
  Future<void> verifyReceipt({required String appReceipt}) async {
    final request = VerifyReceiptRequest(appReceipt: appReceipt);

    await apiService.postJson(
      '$path/app-store/verify-receipt',
      data: request.toJson(),
    );
  }
}
