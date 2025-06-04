import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/widget/text/title_text.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/store/presentation/widget/store_history_card.dart';
import 'package:flutter/material.dart';

class StoreHistoryPage extends StatelessWidget {
  const StoreHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: '하트 사용 내역',
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return StoreHistoryCard();
            },
            itemCount: 2,
          ),
        ),
      ),
    );
  }
}
