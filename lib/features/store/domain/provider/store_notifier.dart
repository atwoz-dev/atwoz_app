import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/store/domain/provider/usecase_providers.dart';
import 'package:atwoz_app/features/store/domain/usecase/store_fetch_usecase.dart';
import 'package:atwoz_app/features/store/domain/usecase/verify_receipt_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:flutter/material.dart';

import 'store_state.dart';

part 'store_notifier.g.dart';

@riverpod
class StoreNotifier extends _$StoreNotifier {
  static const List<String> _productIds = [
    'APP_ITEM_HEART_45',
    'APP_ITEM_HEART_90',
    'APP_ITEM_HEART_110',
    'APP_ITEM_HEART_350',
    'APP_ITEM_HEART_550',
  ];

  @override
  StoreState build() {
    _initializeAppPurchase();
    _initializeHeartBalanceItem();
    return StoreState.initial();
  }

  // 스토어의 상품ID를 저장
  Future<void> _initializeAppPurchase() async {
    final inAppPurchase = InAppPurchase.instance;
    final isAvailable = await inAppPurchase.isAvailable();

    if (!isAvailable) return;

    final response =
        await inAppPurchase.queryProductDetails(_productIds.toSet());

    state = state.copyWith(
      products: response.productDetails,
      isLoaded: true,
    );
  }

  // 하트상품 구입
  void buyProduct(String productId) {
    final inAppPurchase = InAppPurchase.instance;
    final product = state.products.firstWhere((p) => p.id == productId);
    final param = PurchaseParam(productDetails: product);

    inAppPurchase.buyConsumable(purchaseParam: param, autoConsume: true);

    state = state.copyWith(isPurchasePending: true);
  }

  // 앱 내 구매상태 변경 시 콜백
  void onPurchaseUpdated(List<PurchaseDetails> purchases) async {
    final inAppPurchase = InAppPurchase.instance;

    state = state.copyWith(isPurchasePending: true);

    for (final purchase in purchases) {
      if (purchase.status == PurchaseStatus.purchased) {
        // 영수증 서버 검증
        await ref
            .read(storeNotifierProvider.notifier)
            .verifyReceipt(purchase.verificationData.serverVerificationData);

        // 서버 반영 기다리기
        await Future.delayed(const Duration(seconds: 1));

        // 보유하트 재조회
        await ref.read(storeNotifierProvider.notifier).fetchHeartBalance();

        if (purchase.pendingCompletePurchase) {
          await inAppPurchase.completePurchase(purchase);
        }
      } else if (purchase.status == PurchaseStatus.error) {
        debugPrint('❌ 구매 실패: ${purchase.error}');
      }
    }

    state = state.copyWith(isPurchasePending: false);
  }

  // 보유하트 조회
  Future<void> _initializeHeartBalanceItem() async {
    try {
      final heartBalance = await HeartBalanceFetchUseCase(ref).call();

      state = state.copyWith(
        heartBalance: StoreData(heartBalance: heartBalance),
        isLoaded: true,
        error: null,
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(
        isLoaded: true,
        error: HeartBalanceErrorType.network,
      );
    }
  }

  Future<void> fetchHeartBalance() async {
    await _initializeHeartBalanceItem();
  }

  Future<void> verifyReceipt(String appReceipt) async {
    final useCase = ref.read(verifyReceiptUseCaseProvider);

    try {
      await useCase.call(appReceipt: appReceipt);
    } catch (e) {
      Log.e('영수증 검증 실패: $e');
    }
  }
}
