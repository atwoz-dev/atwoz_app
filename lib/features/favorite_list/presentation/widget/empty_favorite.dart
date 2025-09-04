import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../app/constants/icon_path.dart';
import '../../../../app/widget/icon/default_icon.dart';
import '../page/favorite_list_page.dart';

class EmptyFavorite extends StatelessWidget {
  const EmptyFavorite({
    super.key,
    required this.type,
  });

  final FavoriteTabType type;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const DefaultIcon(
          IconPath.sadEmotion,
          size: 48.0,
        ),
        const Gap(8.0),
        Text(_content, textAlign: TextAlign.center),
        const Gap(22.0),
        DefaultOutlinedButton(
          onPressed: _pageMoveHandler,
          child: Text(_buttonLabel),
        ),
      ],
    );
  }

  String get _content => switch (type) {
        FavoriteTabType.received => '아직 이성에게 받은 호감이 없어요\n'
            '본인을 좀 더 알 수있게\n'
            '프로필을 채워보면 어떨까요?\n',
        FavoriteTabType.sent => '아직 이성에게 보낸 호감이 없어요\n'
            '마음에 드는 이성이 있다면\n'
            '용기 내어 먼저 다가가보면 어떨까요?\n',
      };

  String get _buttonLabel => switch (type) {
        FavoriteTabType.received => '프로필 수정하러 가기',
        FavoriteTabType.sent => '프로필 살펴보기',
      };

  void _pageMoveHandler() => switch (type) {
        FavoriteTabType.received => navigate(
            context,
            route: AppRoute.profile,
          ),
        FavoriteTabType.sent => navigate(
            context,
            route: AppRoute.profile,
          ),
      };
}
