import 'dart:async';

import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/store/domain/provider/usecase_providers.dart';
import 'package:atwoz_app/features/store/domain/usecase/store_fetch_usecase.dart';
import 'package:atwoz_app/features/store/domain/usecase/verify_receipt_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
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

  StreamSubscription<List<PurchaseDetails>>? _subscription;

  @override
  StoreState build() {
    _initialize();
    return StoreState.initial();
  }

  Future<void> _initialize() async {
    await _initializeAppPurchase();
    await _initializeHeartBalanceItem();
    _subscribeToPurchaseUpdates();
  }

  /// 결제 스트림 리스너 등록
  void _subscribeToPurchaseUpdates() {
    _subscription?.cancel(); // 중복 방지
    _subscription = InAppPurchase.instance.purchaseStream.listen(
      onPurchaseUpdated,
      onError: (error) {
        Log.e("구매 스트림 에러: $error");
      },
    );
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

    inAppPurchase.buyConsumable(
      purchaseParam: param,
      autoConsume: true,
    );

    state = state.copyWith(isPurchasePending: true);
  }

  // 앱 내 구매상태 변경 시 콜백
  void onPurchaseUpdated(List<PurchaseDetails> purchases) async {
    final inAppPurchase = InAppPurchase.instance;

    state = state.copyWith(isPurchasePending: true);

    for (final purchase in purchases) {
      if (purchase.status == PurchaseStatus.purchased) {
        try {
          // 영수증 서버 검증
          await ref
              .read(storeNotifierProvider.notifier)
              .verifyReceipt(purchase.verificationData.serverVerificationData);

          // 보유하트 재조회
          await ref.read(storeNotifierProvider.notifier).fetchHeartBalance();
        } catch (e) {
          Log.e('영수증 검증 또는 하트 조회 실패: $e');
        }

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
