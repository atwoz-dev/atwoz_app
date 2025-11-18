import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/provider/global_notifier.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/introduce/domain/model/introduce_info.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class IntroduceMyList extends ConsumerStatefulWidget {
  const IntroduceMyList({super.key});

  @override
  ConsumerState<IntroduceMyList> createState() => _IntroduceMyListState();
}

class _IntroduceMyListState extends ConsumerState<IntroduceMyList> {
  final _scrollController = ScrollController();
  String nickname = "";
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();

    nickname = ref.read(globalProvider).profile.nickname;
    _scrollController.addListener(_onScrollIntroduce);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScrollIntroduce);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScrollIntroduce() {
    if (_isLoadingMore ||
        _scrollController.offset <
            _scrollController.position.maxScrollExtent - 200) {
      return;
    }

    _isLoadingMore = true;

    ref.read(introduceProvider.notifier).fetchMyIntroduceMore().then((_) {
      _isLoadingMore = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final stateAsync = ref.watch(introduceProvider);

    return stateAsync.when(
      data: (data) {
        final introduces = data.introduceMyList;
        final introducesCount = introduces.length;
        return ListView.builder(
          padding: EdgeInsets.zero,
          controller: _scrollController,
          itemCount: introducesCount,
          itemBuilder: (context, index) {
            final introduce = introduces[index];
            bool isLastItem = index == introducesCount - 1;
            return IntroduceHistoryListItem(
              item: introduce,
              isLastItem: isLastItem,
              nickname: nickname,
            );
          },
        );
      },
      error: (error, stackTrace) => const SizedBox.shrink(),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class IntroduceHistoryListItem extends ConsumerWidget {
  final IntroduceInfo item;
  final bool isLastItem;
  final String nickname;

  const IntroduceHistoryListItem({
    super.key,
    required this.item,
    required this.isLastItem,
    required this.nickname,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        border: isLastItem
            ? null
            : Border(
                bottom: BorderSide(width: 1.w, color: Palette.colorGrey50),
              ),
      ),
      child: GestureDetector(
        onTap: () async {
          await navigate(
            context,
            route: AppRoute.introduceEdit,
            extra: IntroduceEditArguments(id: item.id),
          );
          await Future.delayed(const Duration(milliseconds: 500));
          await ref.read(introduceProvider.notifier).fetchMyIntroduceList();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: Fonts.body02Medium().copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Gap(4),
                    // TODO: 날짜???
                    Text(
                      '2025.02.28',
                      style: Fonts.body03Regular(Palette.colorGrey500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
