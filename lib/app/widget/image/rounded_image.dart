import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/constants.dart';
import '../../../core/util/string_util.dart';
import '../view/default_progress_indicator.dart';
import 'error_image.dart';

class AppRoundedImage extends ConsumerWidget {
  const AppRoundedImage({
    super.key,
    this.size = AppDimens.imageSize,
    this.imageURL,
    this.border,
    this.errorImage,
  });

  final double size;
  final String? imageURL;
  final BoxBorder? border;
  final String? errorImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (imageURL == null || !StringUtils.isURL(imageURL!)) {
      return AppErrorImage(
          width: size, height: size, isRounded: true, image: errorImage);
    }

    return CachedNetworkImage(
      width: size,
      height: size,
      imageUrl: imageURL!,
      fit: BoxFit.cover,
      imageBuilder:
          (BuildContext context, ImageProvider<Object> imageProvider) {
        return Container(
          decoration: BoxDecoration(
            border: border,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(backgroundImage: imageProvider),
        );
      },
      progressIndicatorBuilder: (_, __, DownloadProgress progress) =>
          AppCircularProgressIndicator(
        progress: progress.progress,
      ),
      errorWidget: (_, __, ___) =>
          AppErrorImage(width: size, height: size, isRounded: true),
    );
  }
}
