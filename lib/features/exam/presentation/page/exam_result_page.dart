import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/features/exam/domain/provider/domain.dart';
import 'package:atwoz_app/features/exam/presentation/widget/empty_list.dart';
import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:atwoz_app/features/home/domain/model/introduced_profile.dart';
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
            _ResultHeader(
              isSubjectOptional: examState.isSubjectOptional,
              hasSoulmate: examState.hasSoulmate,
              soulmateCount: examState.soulmateList.soulmateList.length,
            ),
            Expanded(
              child: _ResultList(
                profiles: examState.soulmateList.soulmateList,
                userProfile: userProfile,
                fetchHeartBalance: () => notifier.fetchUserHeartBalance(),
                onOpenProfile: (memberId) =>
                    notifier.openProfile(memberId: memberId),
                onTapProfile: (memberId) {
                  navigate(
                    context,
                    route: AppRoute.profile,
                    extra: ProfileDetailArguments(userId: memberId),
                  );
                },
              ),
            ),
            _ResultBottomButton(
              isSubjectOptional: examState.isSubjectOptional,
              isDone: examState.isDone,
              onPressOptionalSubject: () async {
                await notifier.fetchOptionalQuestionList();
                notifier.setCurrentSubjectIndex(0);
                navigate(context, route: AppRoute.examQuestion);
              },
              onPressContinueSubject: () {
                notifier.nextSubject();
                navigate(context, route: AppRoute.examQuestion);
              },
              screenHeight: screenHeight,
            ),
          ],
        ),
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
        );
      },
    );
  }
}

class _ResultHeader extends StatelessWidget {
  final bool isSubjectOptional;
  final bool hasSoulmate;
  final int soulmateCount;

  const _ResultHeader({
    required this.isSubjectOptional,
    required this.hasSoulmate,
    required this.soulmateCount,
  });

  @override
  Widget build(BuildContext context) {
    final title = isSubjectOptional
        ? (hasSoulmate ? "나의 소울메이트를 찾았어요" : "아쉽게도 소울메이트를 찾지 못했어요")
        : "현재 $soulmateCount명이 동일한 답을 선택했어요";

    final subtitle = isSubjectOptional
        ? (hasSoulmate ? "상대방과 모두 같은 답을 선택하셨어요!" : "대체로 같은 답을 선택하신 이성분들이에요!")
        : "필수과목 30문제를 풀고 모두 동일한 답을 선택하면 상대방과 무료로 매칭을 진행할 수 있어요";

    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Fonts.header02().copyWith(
              color: Palette.colorBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          Gap(6),
          Text(
            subtitle,
            style: Fonts.body02Regular().copyWith(
              color: Palette.colorGrey500,
            ),
          ),
        ],
      ),
    );
  }
}

class _ResultList extends StatelessWidget {
  final List<IntroducedProfile> profiles;
  final CachedUserProfile userProfile;
  final Future<int> Function() fetchHeartBalance;
  final Future<void> Function(int memberId) onOpenProfile;
  final void Function(int memberId) onTapProfile;

  const _ResultList({
    required this.profiles,
    required this.userProfile,
    required this.fetchHeartBalance,
    required this.onOpenProfile,
    required this.onTapProfile,
  });

  @override
  Widget build(BuildContext context) {
    if (profiles.isEmpty) return const EmptyList();

    return ListView.separated(
      itemCount: profiles.length,
      separatorBuilder: (_, __) => const Gap(8),
      itemBuilder: (context, index) {
        final profile = profiles[index];
        final isBlurred = !profile.isIntroduced;

        return UserByCategoryListItem(
          isBlurred: isBlurred,
          profile: profile,
          onTap: () async {
            if (!profile.isIntroduced) {
              final heartBalance = await fetchHeartBalance();

              if (heartBalance < Dimens.examProfileOpenHeartCount) {
                showDialog(
                  context: context,
                  builder: (_) => HeartShortageDialog(
                    heartBalance: heartBalance,
                  ),
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

              await onOpenProfile(profile.memberId);
            }

            onTapProfile(profile.memberId);
          },
        );
      },
    );
  }
}

class _ResultBottomButton extends StatelessWidget {
  final bool isSubjectOptional;
  final bool isDone;
  final VoidCallback onPressOptionalSubject;
  final VoidCallback onPressContinueSubject;
  final double screenHeight;

  const _ResultBottomButton({
    required this.isSubjectOptional,
    required this.isDone,
    required this.onPressOptionalSubject,
    required this.onPressContinueSubject,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenHeight * 0.05),
      child: isSubjectOptional
          ? isDone
              ? DefaultElevatedButton(
                  onPressed: () {
                    navigate(context, route: AppRoute.mainTab);
                  },
                  child: const Text('연애 모의고사 종료하기'),
                )
              : DefaultElevatedButton(
                  onPressed: onPressOptionalSubject,
                  child: const Text('선택과목 풀기'),
                )
          : DefaultElevatedButton(
              onPressed: onPressContinueSubject,
              child: const Text('다음과목 이어서 풀기'),
            ),
    );
  }
}
