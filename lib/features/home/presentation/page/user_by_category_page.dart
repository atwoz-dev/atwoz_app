// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserByCategoryPage extends ConsumerStatefulWidget {
  final String category;
  const UserByCategoryPage({super.key, required this.category});

  @override
  ConsumerState<UserByCategoryPage> createState() => _UserByCategoryPageState();
}

class _UserByCategoryPageState extends ConsumerState<UserByCategoryPage> {
  late List<bool> _blurredList;

  @override
  Widget build(BuildContext context) {
    final categoryProfilesState =
        ref.watch(GetCategoryProfilesNotifierProvider(widget.category));
    final categoryProfilesNotifier =
        ref.read(getCategoryProfilesNotifierProvider(widget.category).notifier);
    // 데이터가 아직 로딩 중이라면 로딩 화면 보여주기
    if (categoryProfilesState.isLoading) {
      return Scaffold(
        appBar: DefaultAppBar(title: widget.category),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    _blurredList =
        categoryProfilesState.profiles.map((e) => !e.isIntroduced).toList();

    return Scaffold(
      appBar: DefaultAppBar(title: widget.category),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView.separated(
          itemCount: _blurredList.length,
          separatorBuilder: (context, index) => SizedBox(height: 8),
          itemBuilder: (context, index) {
            return UserByCategoryListItem(
              isBlurred: _blurredList[index],
              onTap: () async {
                // true면 소개받지 않은 프로필
                if (_blurredList[index]) {
                  final result = await showDialog<bool>(
                    context: context,
                    builder: (context) => UnlockWithHeartDialog(),
                  );

                  // 하트 소모 다이얼로그에서 확인을 누른 경우
                  if (result == true) {
                    final selectedId = categoryProfilesState.profiles[index].id;
                    categoryProfilesNotifier.openProfile(selectedId);
                  }
                }
              },
              profile: categoryProfilesState.profiles[index],
            );
          },
        ),
      ),
    );
  }
}
