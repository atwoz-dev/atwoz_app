import 'package:deepple_app/features/store/data/repository/store_repository.dart';

class VerifyReceiptUseCase {
  final StoreRepository _repository;
  const VerifyReceiptUseCase(this._repository);

  Future<void> call({required String appReceipt}) {
    return _repository.verifyReceipt(appReceipt: appReceipt);
  }
}
