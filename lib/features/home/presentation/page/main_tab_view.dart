import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/widget/view/default_bottom_navigation_bar.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/favorite_list/presentation/page/favorite_list_page.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:atwoz_app/features/interview/interview.dart';
import 'package:atwoz_app/features/introduce/introduce.dart';
import 'package:atwoz_app/features/my/my.dart';
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
      length: _tabs.length,
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
        children: _tabs.map((item) => item.container).toList(),
      ),
      bottomNavigationBar: DefaultBottomNavigationBar(
        controller: _controller,
        tabs: _tabs,
      ),
    );
  }
}

const _tabs = [
  TabItemInfo(
    icon: IconPath.home,
    iconFill: IconPath.homeFill,
    label: '홈',
    container: HomePage(),
  ),
  TabItemInfo(
    icon: IconPath.like,
    iconFill: IconPath.likeFill,
    label: '좋아요',
    container: FavoriteListPage(),
  ),
  TabItemInfo(
    icon: IconPath.self,
    iconFill: IconPath.selfFill,
    label: '셀프소개',
    container: IntroducePage(),
  ),
  TabItemInfo(
    icon: IconPath.interview,
    iconFill: IconPath.interviewFill,
    label: '인터뷰',
    container: InterviewPage(),
  ),
  TabItemInfo(
    icon: IconPath.mypage,
    iconFill: IconPath.mypageFill,
    label: 'MY',
    container: MyPage(),
  ),
];
