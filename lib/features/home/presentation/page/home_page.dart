import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/home/presentation/widget/home_category_buttons_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/home_navbar_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/home_profile_card_area.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> hashTagList = ["#클라이밍", "#불교", "#무계획 여행", "+2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeNavbarArea(), // 홈 상단 네비게이션바
              SizedBox(height: 16),
              HomeProfileCardArea(hashTagList: hashTagList), // 소개받은 프로필 페이지
              SizedBox(height: 16),
              Image.asset(
                "assets/images/home_test.png",
                fit: BoxFit.cover,
                width: context.screenWidth,
                height: 89,
              ),
              SizedBox(height: 24),
              HomeCategoryButtonsArea()
            ],
          ),
        ),
      )),
    );
  }
}
