import 'package:atwoz_app/features/favorite_list/domain/provider/domain.dart';
import 'package:atwoz_app/features/favorite_list/presentation/page/favorite_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'empty_favorite.dart';
import 'favorite_grid_item.dart';

class FavoriteListBody extends ConsumerWidget {
  const FavoriteListBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(favoriteListNotifierProvider);

    return SafeArea(
      child: TabBarView(
        children: FavoriteTabType.values.map((type) {
          final profiles = switch (type) {
            FavoriteTabType.received => notifier.favoriteMeUsers,
            FavoriteTabType.sent => notifier.myFavoriteUsers,
          };

          if (profiles.isEmpty) {
            return EmptyFavorite(type: type);
          }

          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => FavoriteGridItem(
                      profile: profiles[index],
                      isBlurred: index >= _previewProfileCount,
                    ),
                    childCount: profiles.length,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: _gridColumnCount,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 16.0,
                    childAspectRatio: _gridItemSize.aspectRatio,
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  static const _gridItemSize = Size(104.0, 150.0);

  static const _gridColumnCount = 3;

  static const _previewProfileCount = 6;
}
