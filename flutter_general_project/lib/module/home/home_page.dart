import 'package:flutter/material.dart';
import 'package:flutter_general_project/routes/app_pages.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        return Scaffold(
          body: GetRouterOutlet(
            initialRoute: Routes.TEST,
            key: Get.nestedKey(Routes.HOME),
          ),
        );
      },
    );
  }
}
