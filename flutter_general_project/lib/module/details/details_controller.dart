
import 'package:flutter_general_project/servier/data_servier.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  final String productId;
  DetailsController(this.productId);

  final chageObs = false.obs;

  @override
  void onInit() {
    super.onInit();
    Get.log('ProductDetailsController created with id: $productId');
    chageObs.value = DataService.to.isChange;
  }

  @override
  void onClose() {
    Get.log('ProductDetailsController close with id: $productId');
    super.onClose();
  }

  void chagne(){
    chageObs.value = !chageObs.value;
    DataService.to.isChange = chageObs.value;
  }
}