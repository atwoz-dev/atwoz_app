import 'dart:io';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/core/theme/app_colors.dart';
import 'package:atwoz_app/core/theme/app_fonts.dart';
import 'package:atwoz_app/core/theme/app_icons.dart';
import 'package:atwoz_app/core/widgets/image/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImageWidget extends StatelessWidget {
  final XFile? imageFile;
  final VoidCallback onPickImage;
  final VoidCallback? onRemoveImage;
  final bool isRepresentative;

  const ProfileImageWidget({
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
                ? AppIcon(
                    AppIcons.personPlaceholder,
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
                color: context.appColors.primary,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                '대표',
                style: AppStyles.body03Regular(context.appColors.onPrimary),
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
                color: AppColors.colorWhite,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.colorGrey400, width: 1.5),
              ),
              child: AppIcon(
                imageFile != null ? AppIcons.close : AppIcons.add,
                colorFilter: AppIcon.fillColor(AppColors.colorGrey400),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
