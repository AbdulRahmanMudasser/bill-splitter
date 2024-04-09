import 'package:get/get.dart';
import 'package:tip_calculator/pages/home_page.dart';

class AppRoutes {
  static const INITIAL = '/';

  static final routes = [
    GetPage(
      name: INITIAL,
      page: () => const HomePage(),
    ),
  ];
}
