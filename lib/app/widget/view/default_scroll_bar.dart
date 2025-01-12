import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DefaultScrollbar extends ConsumerWidget {
  const DefaultScrollbar({super.key, this.controller, required this.child});

  final ScrollController? controller;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scrollbar(
      thickness: 8,
      radius: const Radius.circular(10),
      child: child,
    );
  }
}
