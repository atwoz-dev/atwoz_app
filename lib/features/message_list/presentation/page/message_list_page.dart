import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar_action_group.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/features/message_list/presentation/widget/widget.dart';
import 'package:flutter/material.dart';

class MessageListPage extends StatelessWidget {
  const MessageListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: MessageTabType.values.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              centerTitle: false,
              title: Text(
                '메시지',
                style: Fonts.header03().copyWith(
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
              actions: [
                const DefaultAppBarActionGroup(),
              ],
              automaticallyImplyLeading: false,
              pinned: false,
              bottom: TabBar(
                indicatorColor: Colors.black,
                dividerColor: context.colorScheme.outline,
                labelStyle: Fonts.body02Regular(Palette.colorGrey400).copyWith(
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle:
                    Fonts.body02Regular(Palette.colorGrey400).copyWith(
                  fontWeight: FontWeight.w400,
                ),
                unselectedLabelColor: context.colorScheme.secondary,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: context.colorScheme.onSurface,
                tabs: MessageTabType.values
                    .map((value) => Tab(child: Text(value.label)))
                    .toList(),
              ),
            )
          ],
          body: const MessageListBody(),
        ),
      ), 
    );
  }
}

enum MessageTabType {
  received('받은 메시지'),
  sent('보낸 메시지');

  const MessageTabType(this.label);

  final String label;
}
