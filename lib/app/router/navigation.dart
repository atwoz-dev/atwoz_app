import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'route_arguments.dart';

enum NavigationMethod { push, replace, go, pushReplacement }

Future<T?> navigate<T>(
  BuildContext context, {
  required String routeName,
  NavigationMethod method = NavigationMethod.push,
  RouteArguments? extra,
  VoidCallback? callback,
}) async {
  final goRouter = GoRouter.of(context);
  T? result;

  switch (method) {
    case NavigationMethod.push:
      result = await goRouter.pushNamed<T>(routeName, extra: extra);
      break;
    case NavigationMethod.replace:
      result = await goRouter.replaceNamed<T>(routeName, extra: extra);
      break;
    case NavigationMethod.go:
      goRouter.goNamed(routeName, extra: extra);
      break;
    case NavigationMethod.pushReplacement:
      result = await goRouter.pushReplacementNamed<T>(routeName, extra: extra);
      break;
  }

  if (callback != null && result != null) {
    callback();
  }

  return result;
}

void pop(BuildContext context, [Object? extra]) =>
    Navigator.of(context).pop(extra);
