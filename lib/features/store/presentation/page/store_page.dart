import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/store/presentation/widget/default_heart_card.dart';
import 'package:atwoz_app/features/store/presentation/widget/event_heart_card.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class StorePage extends ConsumerStatefulWidget {
  const StorePage({super.key});

  @override
  StorePageState createState() => StorePageState();
}

class StorePageState extends AppBaseConsumerStatefulPageState<StorePage> {
  @override
  Widget buildPage(BuildContext context) {
    final double tagSpacing = 16;
    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding =
        EdgeInsets.symmetric(horizontal: horizontalPadding);
    final items = [
      {
        'heart': '45',
        'price': '9000',
        'code': '',
      },
      {
        'heart': '110',
        'price': '20000',
        'code': '',
      },
      {
        'heart': '350',
        'price': '59000',
        'code': '',
      },
      {
        'heart': '550',
        'price': '88000',
        'code': '',
      },
    ];

    return Scaffold(
      appBar: DefaultAppBar(title: "스토어"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: contentPadding,
                child: Column(
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
              ),
            ],
          ),
          Padding(
              padding: contentPadding,
              child: Row(
                children: [EventHeartCard(code: 'C190192')],
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
                        code: '${item['code']}'),
                  );
                }).toList(), // map()의 결과를 List<Widget>으로 변환
              ),
            ),
          ),
        ],
      ),
    );
  }
}
