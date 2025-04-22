import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/my/presentation/widget/widget.dart';
import 'package:flutter/material.dart';

class ProfileManagePage extends StatelessWidget {
  const ProfileManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: const Scaffold(
        backgroundColor: Palette.colorGrey50,
        appBar: DefaultAppBar(
          title: "프로필 관리",
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileManagePhotoArea(), // 프로필 사진 영역
              ProfileManageInfoArea() // 프로필 정보 영역
            ],
          ),
        ),
      ),
    );
  }
}
