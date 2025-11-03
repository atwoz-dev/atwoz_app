import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/widget/view/default_bottom_navigation_bar.dart';
import 'package:atwoz_app/features/favorite_list/presentation/page/favorite_list_page.dart';
import 'package:atwoz_app/features/home/presentation/page/home_page.dart';
import 'package:atwoz_app/features/interview/presentation/page/interview_page.dart';
import 'package:atwoz_app/features/introduce/presentation/page/introduce_page.dart';
import 'package:atwoz_app/features/my/presentation/page/my_page.dart';

enum MainTabType {
  home('홈'),
  favorite('좋아요'),
  introduce('셀프소개'),
  interview('인터뷰'),
  my('MY');

  const MainTabType(this.label);

  final String label;
}

final mainTabs = [
  TabItemInfo(
    icon: IconPath.home,
    iconFill: IconPath.homeFill,
    label: MainTabType.home.label,
    container: const HomePage(),
  ),
  TabItemInfo(
    icon: IconPath.like,
    iconFill: IconPath.likeFill,
    label: MainTabType.favorite.label,
    container: const FavoriteListPage(),
  ),
  TabItemInfo(
    icon: IconPath.self,
    iconFill: IconPath.selfFill,
    label: MainTabType.introduce.label,
    container: const IntroducePage(),
  ),
  TabItemInfo(
    icon: IconPath.interview,
    iconFill: IconPath.interviewFill,
    label: MainTabType.interview.label,
    container: const InterviewPage(),
  ),
  TabItemInfo(
    icon: IconPath.mypage,
    iconFill: IconPath.mypageFill,
    label: MainTabType.my.label,
    container: const MyPage(),
  ),
];
