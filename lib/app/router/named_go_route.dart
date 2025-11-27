import 'package:go_router/go_router.dart';

class NamedGoRoute extends GoRoute {
  NamedGoRoute({
    required String super.name,
    required super.builder,
    super.routes,
    bool root = false,
  }) : super(path: root ? '/$name' : name);
}
