import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'details_controller.dart';

class DeatilsPage extends GetWidget<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Details'),
      //   centerTitle: true,
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:(){
          controller.chagne();
        },
        label: Text('变更'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
                  () => Text(
                controller.chageObs.value == true ? "产品详情正在运行" : 'ProductDetailsView is working',
              ),
            ),
            Text('ProductId: ${controller.productId}')
          ],
        ),
      ),
    );
  }
}
