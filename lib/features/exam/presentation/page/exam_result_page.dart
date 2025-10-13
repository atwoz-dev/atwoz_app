import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/features/exam/domain/provider/domain.dart';
import 'package:atwoz_app/features/exam/presentation/widget/empty_list.dart';
import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:atwoz_app/features/home/presentation/widget/category/heart_shortage_dialog.dart';
import 'package:atwoz_app/features/home/presentation/widget/category/unlock_with_heart_dialog.dart';
import 'package:atwoz_app/features/home/presentation/widget/category/user_by_category_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:gap/gap.dart';

class ExamResultPage extends ConsumerStatefulWidget {
  const ExamResultPage({super.key});

  @override
  ExamResultPageState createState() => ExamResultPageState();
}

class ExamResultPageState
    extends BaseConsumerStatefulPageState<ExamResultPage> {
  ExamResultPageState()
      : super(
          isAppBar: false,
          isHorizontalMargin: false,
        );

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final examState = ref.read(examNotifierProvider);

      if (examState.isSubjectOptional && !examState.isDone) {
        showToastMessage(
          '연애 모의고사 참여 완료! 하트 15개를 받았어요',
        );
      }
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    final examState = ref.watch(examNotifierProvider);
    final notifier = ref.read(examNotifierProvider.notifier);
    final userProfile = ref.watch(globalNotifierProvider).profile;

    return Scaffold(
      appBar: DefaultAppBar(
        title: examState.isSubjectOptional ? '매칭 결과' : '매칭 현황',
        leadingAction: (_) => _showLeaveExamDialogue(context, notifier),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          children: [
            _buildHeader(examState),
            Expanded(
              child:
                  _buildResultList(context, examState, notifier, userProfile),
            ),
            _buildBottomButton(context, examState, notifier),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(ExamState examState) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            examState.isSubjectOptional
                ? examState.hasSoulmate
                    ? "나의 소울메이트를 찾았어요"
                    : "아쉽게도 소울메이트를 찾지 못했어요"
                : "현재 ${examState.soulmateList.soulmateList.length}명이 동일한 답을 선택했어요",
            style: Fonts.header02().copyWith(
              color: Palette.colorBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          Gap(6),
          Text(
            examState.isSubjectOptional
                ? examState.hasSoulmate
                    ? "상대방과 모두 같은 답을 선택하셨어요!"
                    : "대체로 같은 답을 선택하신 이성분들이에요!"
                : "필수과목 30문제를 풀고 모두 동일한 답을 선택하면 상대방과 무료로 매칭을 진행할 수 있어요",
            style: Fonts.body02Regular().copyWith(
              color: Palette.colorGrey500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResultList(
    BuildContext context,
    ExamState examState,
    ExamNotifier notifier,
    CachedUserProfile userProfile,
  ) {
    if (!examState.hasResultData) return const EmptyList();

    return ListView.separated(
      itemCount: examState.soulmateList.soulmateList.length,
      separatorBuilder: (_, __) => const Gap(8),
      itemBuilder: (context, index) {
        final profile = examState.soulmateList.soulmateList[index];
        final isBlurred = !profile.isIntroduced;

        return UserByCategoryListItem(
            isBlurred: isBlurred,
            profile: profile,
            onTap: () async {
              final notifier = ref.read(examNotifierProvider.notifier);

              if (!profile.isIntroduced) {
                final heartBalance = await notifier.fetchUserHeartBalance();

                if (heartBalance < Dimens.examProfileOpenHeartCount) {
                  showDialog(
                    context: context,
                    builder: (_) =>
                        HeartShortageDialog(heartBalance: heartBalance),
                  );
                  return;
                }

                final pressed = await showDialog<bool>(
                  context: context,
                  builder: (_) => UnlockWithHeartDialog(
                    description: "프로필을 미리보기 하시겠습니까?",
                    heartBalance: heartBalance,
                    isMale: userProfile.isMale,
                  ),
                );

                if (pressed != true) return;

                await notifier.openProfile(memberId: profile.memberId);
              }

              navigate(
                context,
                route: AppRoute.profile,
                extra: ProfileDetailArguments(userId: profile.memberId),
              );
            });
      },
    );
  }

  Widget _buildBottomButton(
    BuildContext context,
    ExamState examState,
    ExamNotifier notifier,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenHeight * 0.05),
      child: examState.isSubjectOptional
          ? examState.isDone
              ? DefaultElevatedButton(
                  onPressed: () {
                    navigate(context, route: AppRoute.mainTab);
                  },
                  child: const Text('연애 모의고사 종료하기'),
                )
              : DefaultElevatedButton(
                  onPressed: () async {
                    await notifier.fetchOptionalQuestionList();
                    notifier.setCurrentSubjectIndex(0);
                    navigate(context, route: AppRoute.examQuestion);
                  },
                  child: const Text('선택과목 풀기'),
                )
          : DefaultElevatedButton(
              onPressed: () {
                ref.read(examNotifierProvider.notifier).nextSubject();
                navigate(context, route: AppRoute.examQuestion);
              },
              child: const Text('다음과목 이어서 풀기'),
            ),
    );
  }

  void _showLeaveExamDialogue(BuildContext context, ExamNotifier notifier) {
    CustomDialogue.showTwoChoiceDialogue(
      context: context,
      content: '연애 모의고사를 종료 하시겠어요?\n페이지를 벗어날경우, 저장되지 않아요',
      onElevatedButtonPressed: () {
        notifier.setSubjectOptional(false);
        notifier.resetCurrentSubjectIndex();
        navigate(
          context,
          route: AppRoute.mainTab,
          method: NavigationMethod.go,
        );
      },
    );
  }
}
