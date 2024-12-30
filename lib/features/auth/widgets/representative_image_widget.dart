import 'dart:io';

import 'package:atwoz_app/data/sources/local/photo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class RepresentativeImageWidget extends ConsumerWidget {
  final String? imagePath;

  const RepresentativeImageWidget({
    super.key,
    this.imagePath,
  });
  // Future<void> requestPermissions() async {
  //   final status = await Permission.photos.status; // 현재 권한 상태 확인
  //   if (status.isDenied) {
  //     final newStatus = await Permission.photos.request(); // 권한 요청
  //     if (newStatus.isGranted) {
  //       // 권한이 허용된 경우
  //       print("권한 허용됨");
  //     } else {
  //       // 권한이 거부된 경우
  //       print("권한이 거부됨");
  //     }
  //   } else if (status.isPermanentlyDenied) {
  //     // 권한이 영구적으로 거부된 경우, 설정 화면으로 안내
  //     openAppSettings();
  //   } else {
  //     // 이미 권한이 허용된 경우
  //     print("이미 권한이 허용됨");
  //   }
  // }
  // TODO: 왜 허용 상태인데 자꾸 설정앱으로 가지...^^
  Future<void> requestPermissions() async {
    final status = await Permission.photos.status; // 현재 권한 상태 확인
    if (status.isDenied || status.isPermanentlyDenied) {
      print('거절됨');
      final newStatus = await Permission.photos.request(); // 권한 요청

      if (newStatus.isDenied || newStatus.isPermanentlyDenied) {
        print('거절됨2222');
        // 여전히 거부된 경우, 설정 안내
        openAppSettings();
      }
    } else {
      print('허용됨');
      // 이미 권한이 허용된 경우
      return;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photoNotifier =
        ref.watch(photoProvider.notifier); // PhotoNotifier 상태 감시
    final currentPhoto = ref.watch(photoProvider); // 현재 상태 (이미지 경로)

    return Stack(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: currentPhoto == null
              ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.grey,
                  ),
                  onPressed: () async {
                    await requestPermissions(); // 권한 요청
                    // 사진 추가 버튼 클릭 시 갤러리에서 사진 선택

                    await photoNotifier.pickPhoto(ImageSource.gallery);
                  },
                  child: Icon(
                    Icons.add,
                    size: 32,
                    color: Colors.grey,
                  ),
                )
              : Image.file(
                  File(currentPhoto.path), // 선택한 이미지를 표시
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
        ),
        Positioned(
          top: 4,
          left: 4,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              '대표',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }
}
