import 'package:atwoz_app/features/store/data/repository/store_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VerifyReceiptUseCase {
  final Ref ref;

  const VerifyReceiptUseCase(this.ref);

  Future<void> call({
    required String appReceipt,
  }) async {
    await ref.read(storeRepositoryProvider).verifyReceipt(
          appReceipt: appReceipt,
        );
  }
}
