import 'package:flutter_general_project/module/root/root_page.dart';
import 'package:flutter_general_project/routes/app_pages.dart';
import 'package:flutter_general_project/servier/data_servier.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // gotoBackSplash() {
  //   Get.rootDelegate.offNamed('/splash');
  // }

  // gotoBackLogin() {
  //   Get.rootDelegate.offNamed('/login');
  // }

   gotoDetails() {
    //Get.rootDelegate.toNamed('/home/productId');
    //Get.rootDelegate.offNamed('/home/productId');

   // Get.rootDelegate.toNamed(AppPages.product());

   }

  final products = <DemoProduct>[].obs;

  void loadDemoProductsFromSomeWhere() {
    products.add(
      DemoProduct(
        name: 'Product added on: ${DateTime.now().toString()}',
        id: DateTime.now().millisecondsSinceEpoch.toString(),
      ),
    );

    DataService.to.products = products;
  }
  @override
  void onInit() {
    //loadDemoProductsFromSomeWhere();
    products.value = DataService.to.products;
  }

  @override
  void onReady() {
    loadDemoProductsFromSomeWhere();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

class DemoProduct {
  final String name;
  final String id;

  DemoProduct({
    required this.name,
    required this.id,
  });
}