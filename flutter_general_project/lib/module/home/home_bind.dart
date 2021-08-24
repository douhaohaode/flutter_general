import 'package:flutter_general_project/module/home/home_controller.dart';
import 'package:get/get.dart';


/* HOME */
class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}

