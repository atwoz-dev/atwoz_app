import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/widget/chip/default_chip.dart';

class IntroduceDetailPage extends ConsumerStatefulWidget {
  const IntroduceDetailPage({super.key});

  @override
  IntroduceDetailPageState createState() => IntroduceDetailPageState();
}

class IntroduceDetailPageState
    extends AppBaseConsumerStatefulPageState<IntroduceDetailPage> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: screenHeight * 0.1), // 상단 여백 설정
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultChip(titleList: ['공연 전시회 관람', '클라이밍']),
        ],
      ),
    ));
  }
}
