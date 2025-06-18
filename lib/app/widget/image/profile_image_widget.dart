import 'dart:convert';
import 'dart:io';

import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/image/default_image.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/core/extension/extended_xfile.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImageWidget extends StatelessWidget {
  final XFile? imageFile;
  final VoidCallback onPickImage;
  final VoidCallback? onRemoveImage;
  final bool isRepresentative;
  final bool isUpdate;

  const ProfileImageWidget({
    super.key,
    this.imageFile,
    required this.onPickImage,
    this.onRemoveImage, // 콜백 초기화
    this.isRepresentative = false,
    this.isUpdate = false, // 수정 페이지 여부
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        GestureDetector(
          onTap: onPickImage,
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: switch (imageFile?.sourceType) {
              ImageSourceType.network => DefaultImage(
                  imageURL: imageFile!.path, // 네트워크 이미지 URL 표시
                  fit: BoxFit.cover,
                ),
              ImageSourceType.file => Image.file(
                  File(imageFile!.path), // 로컬 파일 이미지
                  fit: BoxFit.cover,
                ),
              ImageSourceType.memory => Image.memory(
                  base64Decode(imageFile!.path), // Base64 디코딩
                  fit: BoxFit.cover,
                ),
              _ => const DefaultIcon(
                  IconPath.emptyProfileImage,
                  size: 100,
                  fit: BoxFit.contain,
                  padding: EdgeInsets.only(top: 14),
                ),
            },
          ),
        ),
        if (isRepresentative)
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: context.palette.primary,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                '대표',
                style: Fonts.body03Regular(context.palette.onPrimary),
              ),
            ),
          ),
        if (!isUpdate)
          Positioned(
            bottom: 8,
            right: 8,
            child: GestureDetector(
              onTap: () {
                if (imageFile != null) {
                  onRemoveImage?.call();
                } else {
                  onPickImage();
                }
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Palette.colorWhite,
                  shape: BoxShape.circle,
                  border: Border.all(color: Palette.colorGrey400, width: 1.5),
                ),
                child: DefaultIcon(
                  imageFile != null ? IconPath.close : IconPath.add,
                  colorFilter: DefaultIcon.fillColor(Palette.colorGrey400),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
