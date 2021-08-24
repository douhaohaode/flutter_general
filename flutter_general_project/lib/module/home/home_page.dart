import 'package:flutter/material.dart';
import 'package:flutter_general_project/routes/app_pages.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     controller.gotoBackLogin();
      //   },
      //   label: Text('点击退出--Logout '),
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          controller.loadDemoProductsFromSomeWhere();
        },
        label: Text('添加记录'),
      ),

      body: Obx(()=>
          Container(
            child: ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, index) {
                final item = controller.products[index];
                return ListTile(
                  onTap: () {
                   // Get.rootDelegate.toNamed('/home/productId');
                    // controller.gotoDetails();
                    Get.rootDelegate.toNamed(AppPages.product(item.id));

                  },
                  title: Text(item.name),
                  subtitle: Text(item.id),
                );
              },
            ),
          ),
      ),
    );
  }
}
