import 'package:get/get.dart';
import 'main_controller.dart';


class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}

