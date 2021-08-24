import 'package:flutter_general_project/module/main/main_controller.dart';
import 'package:get/get.dart';

class DataService extends GetxService {
  static DataService get to => Get.find();

  final isLoggedIn = false.obs;
  bool get isLoggedInValue => isLoggedIn.value;

  bool isChange = false;

  List<DemoProduct> products = [];


  void login() {
    isLoggedIn.value = true;
  }

  void logout() {
    isLoggedIn.value = false;
  }
}

