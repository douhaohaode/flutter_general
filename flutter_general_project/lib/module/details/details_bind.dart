import 'package:get/get.dart';
import 'details_controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.create<DetailsController>(
          () => DetailsController(
        Get.parameters['productId'] ?? '',
      ),
    );
  }
}

