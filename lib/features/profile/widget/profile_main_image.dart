import 'package:atwoz_app/core/widgets/image/app_image.dart';
import 'package:flutter/material.dart';

class ProfileMainImage extends StatelessWidget {
  const ProfileMainImage({
    super.key,
    required this.profileUri,
  });

  final String profileUri;

  @override
  Widget build(BuildContext context) {
    return AppImage(imageURL: profileUri);
  }
}
