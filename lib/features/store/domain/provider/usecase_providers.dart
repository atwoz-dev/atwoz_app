import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/store/domain/usecase/verify_receipt_usecase.dart';
import 'package:atwoz_app/features/store/data/repository/store_repository.dart';

final verifyReceiptUseCaseProvider = Provider<VerifyReceiptUseCase>(
  (ref) => VerifyReceiptUseCase(ref.read(storeRepositoryProvider)),
);
