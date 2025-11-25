import 'package:atwoz_app/core/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This [ErrorPage] displays when App Navigator or Router fails
///
/// Often this will be an [AssertionError], maybe specifically a [FlutterError]
class ErrorPage extends ConsumerWidget {
  const ErrorPage(this.errorDetails, {super.key});

  final FlutterErrorDetails errorDetails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.bug_report, size: 50),
          Text(_stringify(errorDetails.exception), textAlign: TextAlign.center),
        ],
      ),
    );
  }

  /// Exception to message
  static String _stringify(Object? exception) {
    try {
      return exception.toString();
    } catch (_) {}
    return 'Error';
  }
}

/// This [AppErrorWidget] displays when App build component fails
///
/// Often this will be an [AssertionError], maybe specifically a [FlutterError]
class AppErrorWidget extends ConsumerWidget {
  const AppErrorWidget(this.errorDetails, {super.key, this.widget});

  final FlutterErrorDetails errorDetails;
  final Widget? widget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Placeholder(
      child: Icon(Icons.bug_report, color: context.colorScheme.error, size: 50),
    );
  }
}
