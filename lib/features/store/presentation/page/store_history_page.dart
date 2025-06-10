import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/widget/text/title_text.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/store/data/repository/store_repository.dart';
import 'package:atwoz_app/features/store/presentation/widget/store_history_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoreHistoryPage extends ConsumerWidget {
  const StoreHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heartHistory = ref.watch(storeHistoryProvider);
    return Scaffold(
      appBar: DefaultAppBar(
        title: '하트 사용 내역',
      ),
      body: SizedBox(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
            child: heartHistory.when(
                data: (data) => ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        debugPrint("${data['data']['content']}");
                        return StoreHistoryCard(
                          date: data['data']['content'][index]['createdAt'],
                          content: data['data']['content'][index]['name'],
                          heart: data['data']['content'][index]['heartAmount'],
                        );
                      },
                      itemCount: data['data']['content'].length,
                    ),
                // data: (data) => Text('${data['data']['content']}'),
                error: (err, stack) {
                  return Text('${err}');
                },
                loading: () => Center(
                      child: CircularProgressIndicator(),
                    ))),
      ),
    );
  }
}
