import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_controller.dart';

class MainPage extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          controller.loadDemoProductsFromSomeWhere();
        },
        label: Text('添加记录'),
      ),
      body: Obx(
            () => Container(
          child: ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              final item = controller.products[index];
              return ListTile(
                onTap: () {
                  controller.gotoDetails(item.id);
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
