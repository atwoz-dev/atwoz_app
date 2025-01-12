import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/constants.dart';

class DefaultFloatingActionButton extends ConsumerWidget {
  const DefaultFloatingActionButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      heroTag: null,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: context.appColors.primary,
      foregroundColor: context.appColors.surface,
      onPressed: onPressed,
      child: const Icon(Icons.add, size: 50),
    );
  }

  static const String heroTag = 'DefaultFloatingActionButtonHeroTag';
}
