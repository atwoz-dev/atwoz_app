import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';

// TODO(Han): 디자인 확인 후 파일 제거 필요
class ProfileDesignInspection extends StatelessWidget {
  const ProfileDesignInspection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 16.0,
              children: [
                _generateProfileNavigateButton(
                  context,
                  null,
                  '일반',
                ),
                _generateProfileNavigateButton(
                  context,
                  ProfileDesignInspectionType.main,
                  '프로필 메인',
                ),
                _generateProfileNavigateButton(
                  context,
                  ProfileDesignInspectionType.matchingBeforeResponse,
                  '매칭 응답 전[발신자]',
                ),
                _generateProfileNavigateButton(
                  context,
                  ProfileDesignInspectionType.matchingExpiredOrDenied,
                  '매칭 만료/취소[발신자]',
                ),
                _generateProfileNavigateButton(
                  context,
                  ProfileDesignInspectionType.messageReceived,
                  '매칭 응답 전[수신자]',
                ),
                _generateProfileNavigateButton(
                  context,
                  ProfileDesignInspectionType.matched,
                  '매칭 완료',
                ),
                DefaultElevatedButton(
                  primary: context.colorScheme.primary,
                  onPressed: () {
                    navigate(
                      context,
                      route: AppRoute.profile,
                      // TODO(Han): remove user id hard coding after login/match implement
                      extra: const ProfileDetailArguments(userId: 4),
                    );
                  },
                  child: Text(
                    '매칭 완료 후 프로필 진입',
                    style: TextStyle(color: context.colorScheme.onPrimary),
                  ),
                ),
                DefaultElevatedButton(
                  primary: context.colorScheme.primary,
                  onPressed: () {
                    navigate(
                      context,
                      route: AppRoute.contactSetting,
                    );
                  },
                  child: Text(
                    '연락처 설정',
                    style: TextStyle(color: context.colorScheme.onPrimary),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _generateProfileNavigateButton(
    BuildContext context,
    ProfileDesignInspectionType? type,
    String title,
  ) =>
      DefaultElevatedButton(
        primary: context.colorScheme.primary,
        onPressed: () {
          kDebugPageType = type;
          navigate(context,
              route: AppRoute.profile,
              extra: const ProfileDetailArguments(userId: 4));
        },
        child: Text(
          title,
          style: TextStyle(color: context.colorScheme.onPrimary),
        ),
      );
}

enum ProfileDesignInspectionType {
  main,
  matchingBeforeResponse,
  matchingExpiredOrDenied,
  messageReceived,
  matched,
}

ProfileDesignInspectionType? kDebugPageType = ProfileDesignInspectionType.main;
