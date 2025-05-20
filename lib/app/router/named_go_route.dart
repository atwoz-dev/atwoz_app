import 'package:go_router/go_router.dart';

class NamedGoRoute extends GoRoute {
  NamedGoRoute({
    required String super.name,
    required super.builder,
    super.routes,
    bool isRoot = true,
  }) : super(path: isRoot ? '/$name' : name);

  static String getFullPath(String name, {bool isRoot = false}) {
    return isRoot ? '/$name' : name;
  }
}
