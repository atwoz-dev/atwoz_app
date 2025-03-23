import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/view/view.dart';
import 'package:flutter/material.dart';

class ProfileUpdatePage extends StatelessWidget {
  const ProfileUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: '프로필 정보',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              //프로필 정보 별 관련 데이터 버튼 영역
              Spacer(),
              DefaultElevatedButton(child: Text('저장'), onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
