import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/provider/global_notifier.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/dialogue/error_dialog.dart';
import 'package:atwoz_app/app/widget/error/dialogue_error.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/image/rounded_image.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/introduce/domain/model/introduce_info.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_notifier.dart';
import 'package:atwoz_app/features/introduce/presentation/widget/empty_introduce.dart';
import 'package:atwoz_app/features/introduce/presentation/widget/empty_my_introduce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class IntroduceContentList extends ConsumerStatefulWidget {
  const IntroduceContentList({super.key});

  @override
  ConsumerState<IntroduceContentList> createState() =>
      _IntroduceContentListState();
}

class _IntroduceContentListState extends ConsumerState<IntroduceContentList> {
  final _scrollController = ScrollController();
  String get nickname => ref.read(globalProvider).profile.nickname;
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();

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

    try {
      ref.read(introduceProvider.notifier).fetchIntroduceMore().then((_) {
        _isLoadingMore = false;
      });
    } catch (e) {
      Log.e("셀프소개 추가 조회 시 오류 발생 : $e");
    } finally {
      _isLoadingMore = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final stateAsync = ref.watch(introduceProvider);

    return stateAsync.when(
      data: (data) {
        final introduces = data.introduceList;
        final introducesCount = introduces.length;

        if (introducesCount == 0) {
          return const EmptyIntroduce();
        }

        return ListView.builder(
          padding: EdgeInsets.zero,
          controller: _scrollController,
          itemCount: data.introduceList.length,
          itemBuilder: (context, index) {
            bool isLastItem = index == introducesCount - 1;

            return IntroduceListItem(
              introduce: introduces[index],
              isLastItem: isLastItem,
              nickname: nickname,
            );
          },
        );
      },
      error: (error, stackTrace) =>
          const Center(child: Text('셀프 소개 목록 조회 중 오류 발생')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class IntroduceListItem extends ConsumerWidget {
  final IntroduceInfo introduce;
  final bool isLastItem;
  final String nickname;

  const IntroduceListItem({
    super.key,
    required this.introduce,
    required this.isLastItem,
    required this.nickname,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double thumbSize = 64.w;
    final double gapWidth = 16.w;
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
          if (!context.mounted) return;

          if (nickname == introduce.nickname) {
            await navigate(
              context,
              route: AppRoute.introduceEdit,
              extra: IntroduceEditArguments(id: introduce.id),
            );

            await ref.read(introduceProvider.notifier).fetchIntroduceList();
          } else {
            // 셀프 소개 상세 조회
            try {
              final detail = await ref
                  .read(introduceProvider.notifier)
                  .fetchIntroduceDetail(introduce.id);

              final route =
                  detail.profileExchangeStatus == ProfileExchangeStatus.approve
                  ? AppRoute.profile
                  : AppRoute.introduceDetail;

              final arguements =
                  detail.profileExchangeStatus == ProfileExchangeStatus.approve
                  ? ProfileDetailArguments(
                      userId: detail.memberBasicInfo.memberId,
                    )
                  : IntroduceDetailArguments(
                      introduceId: introduce.id,
                    );

              if (context.mounted) {
                navigate(context, route: route, extra: arguements);
              }
            } catch (e) {
              if (context.mounted) {
                return ErrorDialog.open(
                  context,
                  error: DialogueErrorType.failFetchIntroduceList,
                  onConfirm: context.pop,
                );
              }
            }
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(
            children: [
              RoundedImage(size: thumbSize, imageURL: introduce.profileUrl),
              SizedBox(width: gapWidth),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      introduce.nickname,
                      style: Fonts.body02Medium().copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      introduce.title,
                      style: Fonts.body03Regular(Palette.colorGrey500),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
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
