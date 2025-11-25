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

  const ProfileImageWidget({
    super.key,
    this.imageFile,
    required this.onPickImage,
    this.onRemoveImage,
    this.isRepresentative = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        GestureDetector(
          onTap: onPickImage,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              color: Colors.grey[200],
              child: _ProfileImageContent(
                imageFile: imageFile,
                isRepresentative: isRepresentative,
              ),
            ),
          ),
        ),
        if (isRepresentative)
          const Positioned(top: 8, left: 8, child: _RepresentativeBadge()),
        Positioned(
          bottom: 8,
          right: 8,
          child: _ProfileImageActionButton(
            imageFile: imageFile,
            isRepresentative: isRepresentative,
            onPickImage: onPickImage,
            onRemoveImage: onRemoveImage,
          ),
        ),
      ],
    );
  }
}

/// 프로필 이미지 콘텐츠를 표시하는 위젯
class _ProfileImageContent extends StatelessWidget {
  final XFile? imageFile;
  final bool isRepresentative;

  const _ProfileImageContent({
    required this.imageFile,
    required this.isRepresentative,
  });

  @override
  Widget build(BuildContext context) {
    if (imageFile == null) {
      return isRepresentative
          ? const DefaultIcon(
              IconPath.emptyProfileImage,
              size: 100,
              fit: BoxFit.contain,
              padding: EdgeInsets.only(top: 14),
            )
          : const SizedBox.shrink();
    }

    switch (imageFile!.sourceType) {
      case ImageSourceType.network:
        return DefaultImage(imageURL: imageFile!.path, fit: BoxFit.cover);
      case ImageSourceType.file:
        return Image.file(File(imageFile!.path), fit: BoxFit.cover);
      case ImageSourceType.memory:
        return Image.memory(base64Decode(imageFile!.path), fit: BoxFit.cover);
      default:
        return isRepresentative
            ? const DefaultIcon(
                IconPath.emptyProfileImage,
                size: 100,
                fit: BoxFit.contain,
                padding: EdgeInsets.only(top: 14),
              )
            : const SizedBox.shrink();
    }
  }
}

/// 대표 이미지 배지를 표시하는 위젯
class _RepresentativeBadge extends StatelessWidget {
  const _RepresentativeBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: context.palette.primary,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text('대표', style: Fonts.body03Regular(context.palette.onPrimary)),
    );
  }
}

/// 프로필 이미지 액션 버튼을 표시하는 위젯
class _ProfileImageActionButton extends StatelessWidget {
  final XFile? imageFile;
  final bool isRepresentative;
  final VoidCallback onPickImage;
  final VoidCallback? onRemoveImage;

  const _ProfileImageActionButton({
    required this.imageFile,
    required this.isRepresentative,
    required this.onPickImage,
    this.onRemoveImage,
  });

  @override
  Widget build(BuildContext context) {
    if (imageFile == null) {
      return _CircleIconButton(iconPath: IconPath.add, onTap: onPickImage);
    }

    if (!isRepresentative) {
      return _CircleIconButton(
        iconPath: IconPath.close,
        onTap: onRemoveImage ?? () {},
      );
    }

    return const SizedBox.shrink();
  }
}

/// 원형 아이콘 버튼 위젯
class _CircleIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;

  const _CircleIconButton({required this.iconPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: Palette.colorWhite,
          shape: BoxShape.circle,
          border: Border.all(color: Palette.colorGrey400, width: 1.5),
        ),
        child: DefaultIcon(
          iconPath,
          colorFilter: DefaultIcon.fillColor(Palette.colorGrey400),
        ),
      ),
    );
  }
}
