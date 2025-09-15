import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/exam/domain/provider/domain.dart';
import 'package:atwoz_app/features/home/domain/model/introduced_profile.dart';
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

  void _showTwoChoiceDialogue() {
    CustomDialogue.showTwoChoiceDialogue(
        context: context,
        content: '연애 모의고사를 종료 하시겠어요?\n페이지를 벗어날경우, 저장되지 않아요',
        onElevatedButtonPressed: () {
          ref.read(examNotifierProvider.notifier).setSubjectOptional(false);
          ref.read(examNotifierProvider.notifier).resetCurrentSubjectIndex();

          navigate(
            context,
            route: AppRoute.mainTab,
          );
        });
  }

  Future<void> _handleProfileTap(
      {required BuildContext context,
      required IntroducedProfile profile,
      required int index,
      required bool isBlurred,
      required bool isMale,
      required int heartBalance}) async {
    if (isBlurred) {
      if (!context.mounted) return;

      final pressed = await showDialog<bool>(
        context: context,
        builder: (context) => UnlockWithHeartDialog(
          description: "프로필을 미리보기 하시겠습니까?",
          heartBalance: heartBalance,
          isMale: isMale,
        ),
      );

      if (pressed != true) return;

      await ref.read(examNotifierProvider.notifier).openProfile(
            memberId: profile.memberId,
          );
      if (!context.mounted) return;
      _navigateToProfile(context, profile);
      return;
    }

    // isBlurred == false일 때만 아래 실행
    final result = await _navigateToProfile(context, profile);
    // if (result is UserProfile) {
    //   introducedProfilesNotifier.updateProfile(
    //     index: index,
    //     detailProfile: result,
    //     category: widget.category,
    //   );
    // }
  }

  Future<dynamic> _navigateToProfile(
      BuildContext context, IntroducedProfile profile) {
    return navigate(
      context,
      route: AppRoute.profile,
      extra: ProfileDetailArguments(userId: profile.memberId),
    );
  }

  @override
  void initState() {
    super.initState();

    // 하트 잔액 조회
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(examNotifierProvider.notifier).fetchUserHeartBalance();
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding =
        EdgeInsets.symmetric(horizontal: horizontalPadding);
    final examState = ref.watch(examNotifierProvider);
    final userProfile = ref.watch(globalNotifierProvider).profile;
    final int itemCount = 10;

    return Scaffold(
      appBar: DefaultAppBar(
        title: examState.isSubjectOptional ? '매칭 결과' : '매칭 현황',
        leadingAction: (context) => _showTwoChoiceDialogue(),
      ),
      body: Padding(
        padding: contentPadding,
        child: Column(children: [
          Expanded(
            flex: 9,
            child: ListView.separated(
              itemCount: examState.soulmateList.soulmateList.length,
              separatorBuilder: (_, __) => const Gap(8),
              itemBuilder: (context, index) {
                final profile = examState.soulmateList.soulmateList[index];
                final isBlurred = !profile.isIntroduced;

                return UserByCategoryListItem(
                  isBlurred: isBlurred,
                  onTap: () => _handleProfileTap(
                    context: context,
                    profile: profile,
                    index: index,
                    isBlurred: isBlurred,
                    isMale: userProfile.isMale,
                    heartBalance: examState.totalHeartBalance,
                  ),
                  profile: profile,
                );
              },
            ),
          ),
          Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.05),
              child: examState.isSubjectOptional
                  ? examState.isDone
                      ? DefaultElevatedButton(
                          onPressed: () => {
                            navigate(
                              context,
                              route: AppRoute.mainTab,
                            )
                          },
                          child: Text('연애 모의고사 종료하기'),
                        )
                      : DefaultElevatedButton(
                          onPressed: () => {
                            ref
                                .read(examNotifierProvider.notifier)
                                .resetCurrentSubjectIndex(),
                            ref
                                .read(examNotifierProvider.notifier)
                                .fetchOptionalQuestionList(),
                            navigate(
                              context,
                              route: AppRoute.examQuestion,
                            )
                          },
                          child: Text('선택과목 풀기'),
                        )
                  : DefaultElevatedButton(
                      onPressed: () {
                        navigate(
                          context,
                          route: AppRoute.examQuestion,
                        );
                      },
                      child: Text('다음과목 이어서 풀기'),
                    )),
        ]),
      ),
    );
  }
}
