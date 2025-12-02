import 'package:deepple_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DefaultFloatingActionButton extends ConsumerWidget {
  const DefaultFloatingActionButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      heroTag: null,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: context.palette.primary,
      foregroundColor: context.palette.surface,
      onPressed: onPressed,
      child: const Icon(Icons.add, size: 50),
    );
  }

  static const String heroTag = 'DefaultFloatingActionButtonHeroTag';
}
