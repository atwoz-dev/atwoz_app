import 'package:atwoz_app/data/sources/local/photo_state.dart';
import 'package:atwoz_app/features/auth/widgets/photo_guild_widget.dart';
import 'package:atwoz_app/features/auth/widgets/representative_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpProfilePage extends ConsumerWidget {
  const SignUpProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photo = ref.watch(photoProvider); // 현재 선택된 사진 상태 감시
    final photoNotifier = ref.read(photoProvider.notifier); // 상태 업데이트용 notifier

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('프로필 사진'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 안내 문구
              const Text(
                '프로필 사진을 등록해주세요',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // 대표 사진 위젯
              RepresentativeImageWidget(
                imagePath: photo?.path, // 선택된 사진 경로 전달
              ),

              const SizedBox(height: 16),

              // 스크롤 가능한 추가 가이드 섹션
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 긍정적인 인상을 주는 사진 가이드
                      PhotoGuideWidget(
                        title: '이성에게 좋은 인상을 주는 사진',
                        imagePaths: [
                          'assets/images/logo.png',
                          'assets/images/logo.png',
                          // 추가 이미지 경로
                        ],
                      ),
                      const SizedBox(height: 16),

                      // 부정적인 인상을 주는 사진 가이드
                      PhotoGuideWidget(
                        title: '이성에게 부정적인 인상을 주는 사진',
                        imagePaths: [
                          'assets/images/logo.png',
                          'assets/images/logo.png',
                          // 추가 이미지 경로
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // 다음 버튼
              ElevatedButton(
                onPressed: () {
                  // TODO: 다음 페이지로 이동
                  Navigator.pushNamed(context, '/nextPage'); // 예제: 다음 페이지로 이동
                },
                child: const Text('다음'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
