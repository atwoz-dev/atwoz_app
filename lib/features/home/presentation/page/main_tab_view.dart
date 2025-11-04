import 'package:atwoz_app/app/widget/view/default_bottom_navigation_bar.dart';
import 'package:atwoz_app/features/home/domain/model/main_tab_type.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: mainTabs.length,
      vsync: this,
      initialIndex: _currentIndex,
    )..addListener(() => setState(() => _currentIndex = _controller.index));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: TabBarView(
        controller: _controller,
        children: mainTabs.map((item) => item.container).toList(),
      ),
      bottomNavigationBar: DefaultBottomNavigationBar(
        controller: _controller,
        tabs: mainTabs,
      ),
    );
  }
}

extension MainTabDefaultTabController on BuildContext {
  void moveToMainTabOf(MainTabType tabType) {
    final mainTabState = findAncestorStateOfType<_MainTabViewState>();
    final controller = mainTabState?._controller;
    final index = mainTabs.indexWhere((tab) => tab.label == tabType.label);
    assert(controller != null, 'MainTab state is null');
    controller?.animateTo(index);
  }
}
