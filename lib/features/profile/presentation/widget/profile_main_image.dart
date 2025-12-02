import 'package:deepple_app/app/widget/image/default_image.dart';
import 'package:flutter/material.dart';

class ProfileMainImage extends StatelessWidget {
  const ProfileMainImage({super.key, required this.profileUri});

  final String profileUri;

  @override
  Widget build(BuildContext context) {
    return DefaultImage(imageURL: profileUri);
  }
}
