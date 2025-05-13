import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileManagePage extends ConsumerWidget {
  const ProfileManagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileManageState = ref.watch(profileManageNotifierProvider);
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: Palette.colorGrey50,
        appBar: const DefaultAppBar(
          title: "프로필 관리",
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileManagePhotoArea(
                profile: profileManageState.profile,
              ), // 프로필 사진 영역
              ProfileManageInfoArea(
                profile: profileManageState.profile,
              ) // 프로필 정보 영역
            ],
          ),
        ),
      ),
    );
  }
}
