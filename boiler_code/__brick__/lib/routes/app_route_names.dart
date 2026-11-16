abstract class AppRouteNames {
  static const String home = 'home';

  static String feature(String module, String view) => '${module}_$view';
}
