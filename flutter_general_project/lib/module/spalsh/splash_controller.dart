import 'package:get/get.dart';

class SplashController extends GetxController {
  void gotoLogin() async {
    Get.rootDelegate.offNamed('/login');
  }
}
