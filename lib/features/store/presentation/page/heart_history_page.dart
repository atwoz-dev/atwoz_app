import 'package:atwoz_app/features/store/presentation/widget/heart_history_card.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/features/store/domain/provider/domain.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeartHistoryPage extends ConsumerStatefulWidget {
  const HeartHistoryPage({super.key});

  @override
  ConsumerState<HeartHistoryPage> createState() => _HeartHistoryPageState();
}

class _HeartHistoryPageState extends ConsumerState<HeartHistoryPage> {
  bool _isLoadingMore = false;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() async {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 60 &&
        !_isLoadingMore) {
      _isLoadingMore = true;
      await ref
          .read(heartListNotifierProvider.notifier)
          .loadMoreHeartTractions();
      _isLoadingMore = false;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(heartListNotifierProvider);

    if (!state.isLoaded && state.error == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    final transactions = state.heartTractions.transactions;

    return Scaffold(
      appBar: DefaultAppBar(title: '하트 사용 내역'),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
        child: ListView.builder(
          controller: _scrollController,
          itemCount: state.heartTractions.hasMore
              ? transactions.length + 1
              : transactions.length,
          itemBuilder: (context, index) {
            if (index >= transactions.length) {
              // 로딩 인디케이터
              return const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(child: CircularProgressIndicator()),
              );
            }

            final item = transactions[index];
            return HeartHistoryCard(
              createdAt: item.createdAt,
              content: item.content,
              heartAmount: item.heartAmount,
            );
          },
        ),
      ),
    );
  }
}
