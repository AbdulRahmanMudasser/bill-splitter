import 'package:get/get.dart';
import 'package:tip_calculator/controllers/home_controller.dart';

class ControllersBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController(), permanent: true);
  }
}
