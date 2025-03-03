import 'dart:io';

import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AuthProfileImageWidget extends StatelessWidget {
  final XFile? imageFile;
  final VoidCallback onPickImage;
  final VoidCallback? onRemoveImage;
  final bool isRepresentative;

  const AuthProfileImageWidget({
    super.key,
    this.imageFile,
    required this.onPickImage,
    this.onRemoveImage, // 콜백 초기화
    this.isRepresentative = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onPickImage,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
              image: imageFile != null
                  ? DecorationImage(
                      image: FileImage(File(imageFile!.path)),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: imageFile == null && isRepresentative
                ? DefaultIcon(
                    IconPath.personPlaceholder,
                    size: 150,
                  )
                : null,
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
        Positioned(
          bottom: 8,
          right: 8,
          child: GestureDetector(
            onTap: imageFile != null ? onRemoveImage : onPickImage,
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
