import 'package:atwoz_app/features/root/domain/root_provider.dart';
import 'package:atwoz_app/features/root/presentation/widget/root_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key, required this.state, this.title});

  final GoRouterState state;
  final String? title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rootState = ref.watch(rootNotifierProvider);
    final rootNotifier = ref.read(rootNotifierProvider.notifier);

    return Scaffold(
      appBar: RootAppBarWidget(title: title ?? 'Root Page'),
      body: rootState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : rootState.items.isEmpty
              ? const Center(child: Text('No items available'))
              : ListView(
                  children: rootState.items.map((item) {
                    return ListTile(
                      title: Text(item.name),
                      onTap: () => rootNotifier.selectItem(item.id),
                    );
                  }).toList(),
                ),
    );
  }
}
