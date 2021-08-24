
import 'package:flutter_general_project/servier/data_servier.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  final String productId;
  DetailsController(this.productId);

  final chageObs = false.obs;

  @override
  void onInit() {
    super.onInit();
    chageObs.value = DataService.to.isChange;
    Get.log('ProductDetailsController created with id: $productId');
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
