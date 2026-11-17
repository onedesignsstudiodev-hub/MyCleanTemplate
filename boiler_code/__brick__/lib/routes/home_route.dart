import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/routes/app_route_names.dart';
import 'package:{{name.snakeCase()}}/routes/app_route_paths.dart';
import 'package:{{name.snakeCase()}}/routes/home_page.dart';

class HomeRoute {
  static const String name = AppRouteNames.home;
  static const String path = AppRoutePaths.home;

  static GoRoute get route => GoRoute(
    name: name,
    path: path,
    builder: (_, _) => const HomePage(title: 'Flutter Demo Home Page'),
  );
}
