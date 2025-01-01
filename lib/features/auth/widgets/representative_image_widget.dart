import 'dart:io';

import 'package:atwoz_app/data/sources/local/photo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class RepresentativeImageWidget extends ConsumerWidget {
  final String? imagePath;

  const RepresentativeImageWidget({
    super.key,
    this.imagePath,
  });

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
