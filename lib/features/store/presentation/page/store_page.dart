import 'dart:async';
import 'dart:io';

import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/store/domain/provider/store_notifier.dart';
import 'package:atwoz_app/features/store/presentation/widget/default_heart_card.dart';
import 'package:atwoz_app/features/store/presentation/widget/event_heart_card.dart';
import 'package:atwoz_app/app/widget/text/bullet_text.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class StorePage extends ConsumerStatefulWidget {
  const StorePage({super.key});

  @override
  StorePageState createState() => StorePageState();
}

class StorePageState extends AppBaseConsumerStatefulPageState<StorePage> {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;

  final List<String> _productIds = [
    'APP_ITEM_HEART_45',
    'APP_ITEM_HEART_90',
    'APP_ITEM_HEART_110',
    'APP_ITEM_HEART_350',
    'APP_ITEM_HEART_550',
  ];

  List<ProductDetails> _products = [];

  // TODO: 결제 처리중 구현되어야함
  bool _loading = true;
  bool _purchasePending = false;

  @override
  void initState() {
    super.initState();

    if (Platform.isIOS) {
      _subscription = _inAppPurchase.purchaseStream.listen(_onPurchaseUpdated);
      _initializeStore();
    }
  }

  // 스토어의 상품ID를 저장
  Future<void> _initializeStore() async {
    final isAvailable = await _inAppPurchase.isAvailable();

    if (!isAvailable) {
      setState(() => _loading = false);
      return;
    }

    final response =
        await _inAppPurchase.queryProductDetails(_productIds.toSet());

    print('🛒 response.productDetails: ${response.productDetails}');
    print('🛑 response.notFoundIDs: ${response.notFoundIDs}');
    print('⚠️ response.error: ${response.error}');

    setState(() {
      _products = response.productDetails;
      _loading = false;
    });
  }

  // 앱 내 구매상태 변경 시 콜백
  void _onPurchaseUpdated(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      if (purchase.status == PurchaseStatus.purchased) {
        debugPrint('✅ 구매 성공: ${purchase.productID}');

        // 영수증 서버 검증
        await ref
            .read(storeNotifierProvider.notifier)
            .verifyReceipt(purchase.verificationData.serverVerificationData);

        // 보유하트 재조회
        await ref.read(storeNotifierProvider.notifier).fetchHeartBalance();

        if (purchase.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchase);
        }
      } else if (purchase.status == PurchaseStatus.error) {
        debugPrint('❌ 구매 실패: ${purchase.error}');
      }

      setState(() => _purchasePending = false);
    }
  }

  // 하트상품 구입
  void _buyProduct(String productId) {
    final product = _products.firstWhere((p) => p.id == productId,
        orElse: () => throw 'Product not found');
    final param = PurchaseParam(productDetails: product);

    _inAppPurchase.buyConsumable(purchaseParam: param, autoConsume: true);
    setState(() => _purchasePending = true);
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    final storeState = ref.watch(storeNotifierProvider);
    final heartBalance = storeState.heartBalance.heartBalance;

    final double tagSpacing = 16;
    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding =
        EdgeInsets.symmetric(horizontal: horizontalPadding);
    final items = [
      {
        'heart': '45',
        'price': '9000',
        'code': 'APP_ITEM_HEART_45',
      },
      {
        'heart': '110',
        'price': '22000',
        'code': 'APP_ITEM_HEART_110',
      },
      {
        'heart': '350',
        'price': '59000',
        'code': 'APP_ITEM_HEART_350',
      },
      {
        'heart': '550',
        'price': '88000',
        'code': 'APP_ITEM_HEART_550',
      },
    ];

    return Scaffold(
      appBar: DefaultAppBar(title: "스토어"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: contentPadding,
              child: Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('보유한 하트',
                            style: Fonts.header03()
                                .copyWith(fontWeight: FontWeight.w900)),
                        const Gap(8),
                        Text(
                          '하트는 셀프소개, 좋아요, 모의고사 등 \n여러 기능을 사용할 때 필요한 화폐입니다',
                          style: Fonts.body03Regular(Palette.colorGrey600),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 88,
                      height: 32,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            shadowColor: Colors.transparent,
                            backgroundColor: Palette.colorPrimary100,
                            side: BorderSide(
                              width: 1,
                              color: Palette.colorPrimary500,
                            )),
                        onPressed: () {
                          navigate(
                            context,
                            route: AppRoute.heartHistory,
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                DefaultIcon(
                                  IconPath.storeHeart,
                                  size: 16,
                                ),
                                const Gap(2),
                                Text(
                                  heartBalance.totalHeartBalance.toString(),
                                  style:
                                      Fonts.body03Regular(Palette.colorGrey900),
                                ),
                              ],
                            ),
                            DefaultIcon(
                              IconPath.chevronRight2,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                  ]))),
          Padding(
              padding: contentPadding,
              child: Row(
                children: [
                  EventHeartCard(
                      code: 'APP_ITEM_HEART_90',
                      onCreate: (code) => _buyProduct(code)),
                ],
              )),
          Padding(
            padding: contentPadding,
            child: SingleChildScrollView(
              child: Wrap(
                spacing: tagSpacing,
                runSpacing: tagSpacing - 4,
                children: items.map<Widget>((item) {
                  return SizedBox(
                    width:
                        (screenWidth - horizontalPadding * 2 - tagSpacing) / 2,
                    child: DefaultHeartCard(
                        heart: '${item['heart']}',
                        price: '${item['price']}',
                        code: '${item['code']}',
                        onCreate: (code) => _buyProduct(code)),
                  );
                }).toList(),
              ),
            ),
          ),
          const Gap(12),
          Padding(
            padding: contentPadding,
            child: BulletText(
              texts: [
                '운영정책 위반으로 계정정지 시 환불이 불가합니다',
                '미션으로 받은 하트의 유효기간은 90일간 유효합니다.',
              ],
              textStyle: Fonts.body03Regular(
                const Color.fromRGBO(155, 160, 171, 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
