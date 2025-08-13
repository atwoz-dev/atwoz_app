import 'dart:async';
import 'dart:io';

import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/view/default_progress_indicator.dart';
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
  late StreamSubscription<List<PurchaseDetails>> _subscription;

  @override
  void initState() {
    super.initState();

    if (Platform.isIOS) {
      _subscription = InAppPurchase.instance.purchaseStream.listen(
        (purchases) => ref
            .read(storeNotifierProvider.notifier)
            .onPurchaseUpdated(purchases),
      );
    }
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

    return Stack(
      children: [
        Scaffold(
          appBar: DefaultAppBar(title: "스토어"),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: contentPadding,
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
                                ConstrainedBox(
                                  constraints: BoxConstraints(minWidth: 36),
                                  child: IntrinsicWidth(
                                    child: Row(
                                      children: [
                                        DefaultIcon(
                                          IconPath.storeHeart,
                                          size: 16,
                                        ),
                                        const Gap(4),
                                        Text(
                                          heartBalance.totalHeartBalance
                                              .toString(),
                                          style: Fonts.body03Regular(
                                              Palette.colorGrey900),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                DefaultIcon(
                                  IconPath.chevronRight2,
                                  size: 16,
                                )
                              ],
                            ),
                          ),
                        ),
                      ])),
              Padding(
                  padding: contentPadding,
                  child: Row(
                    children: [
                      EventHeartCard(
                          code: 'APP_ITEM_HEART_90',
                          onCreate: (code) => ref
                              .read(storeNotifierProvider.notifier)
                              .buyProduct(code)),
                    ],
                  )),
              Expanded(
                  child: Column(children: [
                Padding(
                  padding: contentPadding,
                  child: Wrap(
                    spacing: tagSpacing,
                    runSpacing: tagSpacing - 4,
                    children: items.map<Widget>((item) {
                      return SizedBox(
                        width:
                            (screenWidth - horizontalPadding * 2 - tagSpacing) /
                                2,
                        child: DefaultHeartCard(
                            heart: '${item['heart']}',
                            price: '${item['price']}',
                            code: '${item['code']}',
                            onCreate: (code) => ref
                                .read(storeNotifierProvider.notifier)
                                .buyProduct(code)),
                      );
                    }).toList(),
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
              ])),
            ],
          ),
        ),
        if (storeState.isPurchasePending)
          Positioned.fill(
            child: Container(
              alignment: Alignment.center,
              child: const DefaultCircularProgressIndicator(),
            ),
          )
      ],
    );
  }
}
