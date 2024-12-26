import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';
import 'package:atwoz_app/core/widgets/button/app_text_button.dart';
import 'package:atwoz_app/core/widgets/file/app_file_picker.dart';
import 'package:atwoz_app/core/widgets/view/default_appbar.dart';
import 'package:atwoz_app/core/widgets/image/app_image.dart';
import 'package:atwoz_app/core/widgets/image/app_rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Home Page'),
      body: DefaultScrollbar(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('홈페이지'),
              AppFileAttachmentInput(
                onFilesPicked: (List<File> pickedFiles) {
                  // 선택된 파일을 처리하는 로직을 여기에 작성
                  for (var file in pickedFiles) {
                    debugPrint('Picked file: ${file.path}');
                  }
                },
              ),
              const SizedBox(height: 20),
              const AppRoundedImage(
                imageURL: 'https://via.placeholder.com/150',
                size: 100.0,
              ),
              const SizedBox(height: 20),
              const AppImage(
                imageURL: 'https://via.placeholder.com/300x200',
                width: 300,
                height: 200,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Row의 자식 정렬
                children: [
                  Flexible(
                    child: AppTextButton(
                      child: const Text('버튼1'),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 10), // 버튼 간 간격 추가
                  Flexible(
                    child: AppElevatedButton(
                      child: const Text('버튼2'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultScrollbar extends ConsumerWidget {
  const DefaultScrollbar({super.key, this.controller, required this.child});

  final ScrollController? controller;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scrollbar(
      thickness: 8,
      radius: const Radius.circular(10),
      controller: controller,
      child: child,
    );
  }
}
