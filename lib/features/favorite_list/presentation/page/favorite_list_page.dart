import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/favorite_list/presentation/widget/favorite_list_body.dart';
import 'package:flutter/material.dart';

class FavoriteListPage extends StatelessWidget {
  const FavoriteListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: FavoriteTabType.values.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: const Text('좋아요'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const DefaultIcon(
                    IconPath.notification,
                    size: 24.0,
                  ),
                ),
              ],
              automaticallyImplyLeading: false,
              pinned: false,
              bottom: TabBar(
                indicatorColor: Colors.black,
                dividerColor: context.colorScheme.outlineVariant,
                unselectedLabelColor: context.colorScheme.secondary,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: context.colorScheme.onSurface,
                tabs: FavoriteTabType.values
                    .map((value) => Tab(child: Text(value.label)))
                    .toList(),
              ),
            )
          ],
          body: const FavoriteListBody(),
        ),
      ),
    );
  }
}

enum FavoriteTabType {
  received('받은 호감'),
  sent('보낸 호감');

  const FavoriteTabType(this.label);

  final String label;
}
