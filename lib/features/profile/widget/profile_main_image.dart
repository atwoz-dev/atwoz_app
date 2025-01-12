import 'package:atwoz_app/app/widget/image/default_image.dart';
import 'package:flutter/material.dart';

class ProfileMainImage extends StatelessWidget {
  const ProfileMainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppImage(imageURL: 'https://picsum.photos/200/300');
  }
}
